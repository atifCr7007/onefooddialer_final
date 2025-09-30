import 'dart:convert';
import 'dart:io';

/// Mock server for customer microservice
/// Run with: dart run lib/mock_server/customer_mock_server.dart
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8001);
  print('🚀 Customer Mock Server running on http://localhost:8001');
  print('📝 Base path: /v2/customer-service-v12');
  print('');
  print('Available endpoints:');
  print('  GET    /v2/customer-service-v12/customers');
  print('  POST   /v2/customer-service-v12/customers');
  print('  GET    /v2/customer-service-v12/customers/{id}');
  print('  PUT    /v2/customer-service-v12/customers/{id}');
  print('  DELETE /v2/customer-service-v12/customers/{id}');
  print('  POST   /v2/customer-service-v12/customers/{id}/activate');
  print('  POST   /v2/customer-service-v12/customers/{id}/deactivate');
  print('  GET    /v2/customer-service-v12/customers/{id}/addresses');
  print('  POST   /v2/customer-service-v12/customers/{id}/addresses');
  print('');

  await for (HttpRequest request in server) {
    _handleRequest(request);
  }
}

void _handleRequest(HttpRequest request) {
  final path = request.uri.path;
  final method = request.method;

  print('${DateTime.now()} - $method $path');

  // CORS headers
  request.response.headers.add('Access-Control-Allow-Origin', '*');
  request.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
  request.response.headers.add('Access-Control-Allow-Headers', 'Origin, Content-Type, Authorization');

  if (method == 'OPTIONS') {
    request.response.statusCode = 200;
    request.response.close();
    return;
  }

  request.response.headers.contentType = ContentType.json;

  try {
    if (path.startsWith('/v2/customer-service-v12/customers')) {
      _handleCustomerRoutes(request, path, method);
    } else {
      _send404(request);
    }
  } catch (e, st) {
    print('Error: $e');
    print(st);
    _send500(request, e.toString());
  }
}

void _handleCustomerRoutes(HttpRequest request, String path, String method) {
  final pathSegments = path.split('/').where((s) => s.isNotEmpty).toList();

  // GET /customers - List customers
  if (pathSegments.length == 3 && method == 'GET') {
    _getCustomers(request);
  }
  // POST /customers - Create customer
  else if (pathSegments.length == 3 && method == 'POST') {
    _createCustomer(request);
  }
  // GET /customers/{id} - Get customer by ID
  else if (pathSegments.length == 4 && method == 'GET') {
    final id = pathSegments[3];
    _getCustomerById(request, id);
  }
  // PUT /customers/{id} - Update customer
  else if (pathSegments.length == 4 && method == 'PUT') {
    final id = pathSegments[3];
    _updateCustomer(request, id);
  }
  // DELETE /customers/{id} - Delete customer
  else if (pathSegments.length == 4 && method == 'DELETE') {
    final id = pathSegments[3];
    _deleteCustomer(request, id);
  }
  // POST /customers/{id}/activate
  else if (pathSegments.length == 5 && pathSegments[4] == 'activate' && method == 'POST') {
    final id = pathSegments[3];
    _activateCustomer(request, id);
  }
  // POST /customers/{id}/deactivate
  else if (pathSegments.length == 5 && pathSegments[4] == 'deactivate' && method == 'POST') {
    final id = pathSegments[3];
    _deactivateCustomer(request, id);
  }
  // GET /customers/{id}/addresses
  else if (pathSegments.length == 5 && pathSegments[4] == 'addresses' && method == 'GET') {
    final id = pathSegments[3];
    _getCustomerAddresses(request, id);
  }
  // POST /customers/{id}/addresses
  else if (pathSegments.length == 5 && pathSegments[4] == 'addresses' && method == 'POST') {
    final id = pathSegments[3];
    _createCustomerAddress(request, id);
  }
  else {
    _send404(request);
  }
}

void _getCustomers(HttpRequest request) {
  final queryParams = request.uri.queryParameters;
  final page = int.tryParse(queryParams['page'] ?? '1') ?? 1;
  final perPage = int.tryParse(queryParams['per_page'] ?? '10') ?? 10;
  final search = queryParams['search'];

  var customers = _mockCustomers;

  // Filter by search
  if (search != null && search.isNotEmpty) {
    customers = customers.where((c) {
      final name = c['name'].toString().toLowerCase();
      final email = c['email'].toString().toLowerCase();
      final phone = c['phone'].toString().toLowerCase();
      final searchLower = search.toLowerCase();
      return name.contains(searchLower) || email.contains(searchLower) || phone.contains(searchLower);
    }).toList();
  }

  // Filter by status
  if (queryParams.containsKey('status')) {
    final status = queryParams['status'] == 'true';
    customers = customers.where((c) => c['status'] == status).toList();
  }

  final total = customers.length;
  final start = (page - 1) * perPage;
  final end = start + perPage;
  final paginatedCustomers = customers.sublist(
    start.clamp(0, total),
    end.clamp(0, total),
  );

  final response = {
    'data': paginatedCustomers,
    'meta': {
      'total': total,
      'current_page': page,
      'per_page': perPage,
      'last_page': (total / perPage).ceil(),
    },
  };

  _sendJson(request, response);
}

void _getCustomerById(HttpRequest request, String id) {
  final customer = _mockCustomers.firstWhere(
    (c) => c['id'] == id || c['pk_customer_code'] == id,
    orElse: () => {},
  );

  if (customer.isEmpty) {
    _send404(request);
  } else {
    _sendJson(request, {'data': customer});
  }
}

void _createCustomer(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final newCustomer = {
    'id': 'CUST${DateTime.now().millisecondsSinceEpoch}',
    'pk_customer_code': 'CUST${DateTime.now().millisecondsSinceEpoch}',
    'name': data['name'],
    'email': data['email'],
    'phone': data['phone'],
    'status': true,
    'company_id': data['company_id'] ?? 1,
    'unit_id': data['unit_id'] ?? 1,
    'created_at': DateTime.now().toIso8601String(),
    'updated_at': DateTime.now().toIso8601String(),
  };

  _mockCustomers.add(newCustomer);
  _sendJson(request, {'data': newCustomer}, statusCode: 201);
}

void _updateCustomer(HttpRequest request, String id) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final index = _mockCustomers.indexWhere(
    (c) => c['id'] == id || c['pk_customer_code'] == id,
  );

  if (index == -1) {
    _send404(request);
  } else {
    _mockCustomers[index] = {
      ..._mockCustomers[index],
      ...data,
      'updated_at': DateTime.now().toIso8601String(),
    };
    _sendJson(request, {'data': _mockCustomers[index]});
  }
}

void _deleteCustomer(HttpRequest request, String id) {
  final initialLength = _mockCustomers.length;
  _mockCustomers.removeWhere(
    (c) => c['id'] == id || c['pk_customer_code'] == id,
  );
  final removed = initialLength - _mockCustomers.length;

  if (removed == 0) {
    _send404(request);
  } else {
    _sendJson(request, {'message': 'Customer deleted successfully'});
  }
}

void _activateCustomer(HttpRequest request, String id) {
  final index = _mockCustomers.indexWhere(
    (c) => c['id'] == id || c['pk_customer_code'] == id,
  );

  if (index == -1) {
    _send404(request);
  } else {
    _mockCustomers[index]['status'] = true;
    _sendJson(request, {'data': _mockCustomers[index]});
  }
}

void _deactivateCustomer(HttpRequest request, String id) {
  final index = _mockCustomers.indexWhere(
    (c) => c['id'] == id || c['pk_customer_code'] == id,
  );

  if (index == -1) {
    _send404(request);
  } else {
    _mockCustomers[index]['status'] = false;
    _sendJson(request, {'data': _mockCustomers[index]});
  }
}

void _getCustomerAddresses(HttpRequest request, String customerId) {
  final addresses = _mockAddresses.where((a) => a['customer_id'] == customerId).toList();
  _sendJson(request, {'data': addresses});
}

void _createCustomerAddress(HttpRequest request, String customerId) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final newAddress = {
    'id': 'ADDR${DateTime.now().millisecondsSinceEpoch}',
    'customer_id': customerId,
    ...data,
    'created_at': DateTime.now().toIso8601String(),
  };

  _mockAddresses.add(newAddress);
  _sendJson(request, {'data': newAddress}, statusCode: 201);
}

void _sendJson(HttpRequest request, Map<String, dynamic> data, {int statusCode = 200}) {
  request.response.statusCode = statusCode;
  request.response.write(jsonEncode(data));
  request.response.close();
}

void _send404(HttpRequest request) {
  request.response.statusCode = 404;
  request.response.write(jsonEncode({'error': 'Not found'}));
  request.response.close();
}

void _send500(HttpRequest request, String error) {
  request.response.statusCode = 500;
  request.response.write(jsonEncode({'error': 'Internal server error', 'message': error}));
  request.response.close();
}

// Mock data
final List<Map<String, dynamic>> _mockCustomers = [
  {
    'id': 'CUST001',
    'pk_customer_code': 'CUST001',
    'name': 'John Doe',
    'email': 'john.doe@example.com',
    'phone': '+1234567890',
    'status': true,
    'company_id': 1,
    'unit_id': 1,
    'created_at': '2025-01-01T10:00:00Z',
    'updated_at': '2025-01-01T10:00:00Z',
  },
  {
    'id': 'CUST002',
    'pk_customer_code': 'CUST002',
    'name': 'Jane Smith',
    'email': 'jane.smith@example.com',
    'phone': '+1234567891',
    'status': true,
    'company_id': 1,
    'unit_id': 1,
    'created_at': '2025-01-02T10:00:00Z',
    'updated_at': '2025-01-02T10:00:00Z',
  },
  {
    'id': 'CUST003',
    'pk_customer_code': 'CUST003',
    'name': 'Bob Johnson',
    'email': 'bob.johnson@example.com',
    'phone': '+1234567892',
    'status': false,
    'company_id': 1,
    'unit_id': 2,
    'created_at': '2025-01-03T10:00:00Z',
    'updated_at': '2025-01-03T10:00:00Z',
  },
];

final List<Map<String, dynamic>> _mockAddresses = [
  {
    'id': 'ADDR001',
    'customer_id': 'CUST001',
    'street': '123 Main St',
    'city': 'New York',
    'state': 'NY',
    'zip_code': '10001',
    'country': 'USA',
    'latitude': 40.7128,
    'longitude': -74.0060,
    'is_default': true,
  },
];

