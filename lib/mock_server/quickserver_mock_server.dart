import 'dart:io';
import 'dart:convert';

void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8011);
  print('🚀 QuickServer Mock Server running on http://localhost:8011');
  print('📝 Base path: /api/v1');
  print('');
  print('Available endpoints:');
  print('  GET    /api/v1/backorders');
  print('  GET    /api/v1/backorders/{id}');
  print('  POST   /api/v1/backorders');
  print('  PUT    /api/v1/backorders/{id}');
  print('  DELETE /api/v1/backorders/{id}');
  print('  GET    /api/v1/orders');
  print('  GET    /api/v1/orders/{id}');
  print('  POST   /api/v1/orders');
  print('  PUT    /api/v1/orders/{id}');
  print('  DELETE /api/v1/orders/{id}');
  print('  GET    /api/v1/timeslots');
  print('  GET    /api/v1/timeslots/{id}');
  print('  POST   /api/v1/timeslots');
  print('  PUT    /api/v1/timeslots/{id}');
  print('  DELETE /api/v1/timeslots/{id}');
  print('  GET    /api/v1/locations');
  print('  GET    /api/v1/locations/{id}');
  print('  POST   /api/v1/locations');
  print('  PUT    /api/v1/locations/{id}');
  print('  DELETE /api/v1/locations/{id}');
  print('  GET    /api/v1/config');
  print('  GET    /api/v1/config/{key}');
  print('  PUT    /api/v1/config/{key}');
  print('  GET    /api/v1/health');
  print('');

  await for (HttpRequest request in server) {
    _handleRequest(request);
  }
}

// Sample data
final backorders = <Map<String, dynamic>>[
  {
    'id': 1,
    'order_id': 101,
    'customer_id': 1,
    'product_id': 5,
    'quantity': 2,
    'status': 'pending',
    'order_date': '2025-01-15',
    'expected_date': '2025-01-20',
    'created_at': '2025-01-15T10:00:00Z',
  },
  {
    'id': 2,
    'order_id': 102,
    'customer_id': 2,
    'product_id': 8,
    'quantity': 1,
    'status': 'processing',
    'order_date': '2025-01-16',
    'expected_date': '2025-01-22',
    'created_at': '2025-01-16T11:00:00Z',
  },
  {
    'id': 3,
    'order_id': 103,
    'customer_id': 3,
    'product_id': 12,
    'quantity': 3,
    'status': 'completed',
    'order_date': '2025-01-10',
    'expected_date': '2025-01-15',
    'created_at': '2025-01-10T09:00:00Z',
  },
];

final orders = <Map<String, dynamic>>[
  {
    'id': 1,
    'customer_id': 1,
    'kitchen_id': 1,
    'order_status': 'confirmed',
    'delivery_status': 'pending',
    'order_menu': 'lunch',
    'total_amount': 45.99,
    'order_date': '2025-01-15',
    'delivery_date': '2025-01-15',
    'created_at': '2025-01-15T10:00:00Z',
  },
  {
    'id': 2,
    'customer_id': 2,
    'kitchen_id': 2,
    'order_status': 'preparing',
    'delivery_status': 'in_transit',
    'order_menu': 'dinner',
    'total_amount': 67.50,
    'order_date': '2025-01-16',
    'delivery_date': '2025-01-16',
    'created_at': '2025-01-16T18:00:00Z',
  },
  {
    'id': 3,
    'customer_id': 3,
    'kitchen_id': 1,
    'order_status': 'completed',
    'delivery_status': 'delivered',
    'order_menu': 'breakfast',
    'total_amount': 23.99,
    'order_date': '2025-01-14',
    'delivery_date': '2025-01-14',
    'created_at': '2025-01-14T08:00:00Z',
  },
];

final timeslots = <Map<String, dynamic>>[
  {
    'id': 1,
    'day': 'monday',
    'menu_type': 'lunch',
    'kitchen': 'kitchen_1',
    'start_time': '12:00',
    'end_time': '14:00',
    'capacity': 50,
    'available': 35,
    'status': 1,
    'created_at': '2025-01-01T00:00:00Z',
  },
  {
    'id': 2,
    'day': 'monday',
    'menu_type': 'dinner',
    'kitchen': 'kitchen_1',
    'start_time': '18:00',
    'end_time': '20:00',
    'capacity': 60,
    'available': 45,
    'status': 1,
    'created_at': '2025-01-01T00:00:00Z',
  },
  {
    'id': 3,
    'day': 'tuesday',
    'menu_type': 'lunch',
    'kitchen': 'kitchen_2',
    'start_time': '12:00',
    'end_time': '14:00',
    'capacity': 40,
    'available': 20,
    'status': 1,
    'created_at': '2025-01-01T00:00:00Z',
  },
];

final locations = <Map<String, dynamic>>[
  {
    'id': 1,
    'city_code': 'NYC',
    'kitchen_code': 'KITCHEN_001',
    'address': '123 Main St, New York, NY 10001',
    'latitude': 40.7128,
    'longitude': -74.0060,
    'status': 1,
    'created_at': '2025-01-01T00:00:00Z',
  },
  {
    'id': 2,
    'city_code': 'LA',
    'kitchen_code': 'KITCHEN_002',
    'address': '456 Sunset Blvd, Los Angeles, CA 90028',
    'latitude': 34.0522,
    'longitude': -118.2437,
    'status': 1,
    'created_at': '2025-01-01T00:00:00Z',
  },
  {
    'id': 3,
    'city_code': 'CHI',
    'kitchen_code': 'KITCHEN_003',
    'address': '789 Michigan Ave, Chicago, IL 60611',
    'latitude': 41.8781,
    'longitude': -87.6298,
    'status': 1,
    'created_at': '2025-01-01T00:00:00Z',
  },
];

final config = <String, dynamic>{
  'app_name': 'OneFoodDialer',
  'version': '1.0.0',
  'maintenance_mode': false,
  'max_order_items': 10,
  'delivery_fee': 5.99,
  'min_order_amount': 15.00,
};

void _handleRequest(HttpRequest request) {
  // CORS headers
  request.response.headers.add('Access-Control-Allow-Origin', '*');
  request.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
  request.response.headers.add('Access-Control-Allow-Headers', 'Content-Type, Authorization');

  if (request.method == 'OPTIONS') {
    request.response.statusCode = 200;
    request.response.close();
    return;
  }

  final path = request.uri.path;
  final method = request.method;

  print('${DateTime.now()} - $method $path');

  try {
    // Health check
    if (path == '/api/v1/health') {
      _sendJson(request, {'status': 'healthy', 'timestamp': DateTime.now().toIso8601String()});
      return;
    }

    // Backorders endpoints
    if (path.startsWith('/api/v1/backorders')) {
      _handleBackorders(request, path, method);
      return;
    }

    // Orders endpoints
    if (path.startsWith('/api/v1/orders')) {
      _handleOrders(request, path, method);
      return;
    }

    // Timeslots endpoints
    if (path.startsWith('/api/v1/timeslots')) {
      _handleTimeslots(request, path, method);
      return;
    }

    // Locations endpoints
    if (path.startsWith('/api/v1/locations')) {
      _handleLocations(request, path, method);
      return;
    }

    // Config endpoints
    if (path.startsWith('/api/v1/config')) {
      _handleConfig(request, path, method);
      return;
    }

    // 404
    _sendError(request, 404, 'Endpoint not found');
  } catch (e) {
    _sendError(request, 500, 'Internal server error: $e');
  }
}

void _handleBackorders(HttpRequest request, String path, String method) async {
  if (path == '/api/v1/backorders' && method == 'GET') {
    _sendJson(request, {'success': true, 'data': backorders});
  } else if (path == '/api/v1/backorders' && method == 'POST') {
    final body = await _readBody(request);
    final newBackorder = {...body, 'id': backorders.length + 1, 'created_at': DateTime.now().toIso8601String()};
    backorders.add(newBackorder);
    _sendJson(request, {'success': true, 'message': 'Backorder created', 'data': newBackorder}, statusCode: 201);
  } else if (path.startsWith('/api/v1/backorders/') && method == 'GET') {
    final id = int.tryParse(path.split('/').last);
    final backorder = backorders.firstWhere((b) => b['id'] == id, orElse: () => {});
    if (backorder.isEmpty) {
      _sendError(request, 404, 'Backorder not found');
    } else {
      _sendJson(request, {'success': true, 'data': backorder});
    }
  } else if (path.startsWith('/api/v1/backorders/') && method == 'PUT') {
    final id = int.tryParse(path.split('/').last);
    final index = backorders.indexWhere((b) => b['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Backorder not found');
    } else {
      final body = await _readBody(request);
      backorders[index] = {...backorders[index], ...body};
      _sendJson(request, {'success': true, 'message': 'Backorder updated', 'data': backorders[index]});
    }
  } else if (path.startsWith('/api/v1/backorders/') && method == 'DELETE') {
    final id = int.tryParse(path.split('/').last);
    backorders.removeWhere((b) => b['id'] == id);
    _sendJson(request, {'success': true, 'message': 'Backorder deleted'});
  }
}

void _handleOrders(HttpRequest request, String path, String method) async {
  if (path == '/api/v1/orders' && method == 'GET') {
    _sendJson(request, {'success': true, 'data': orders});
  } else if (path == '/api/v1/orders' && method == 'POST') {
    final body = await _readBody(request);
    final newOrder = {...body, 'id': orders.length + 1, 'created_at': DateTime.now().toIso8601String()};
    orders.add(newOrder);
    _sendJson(request, {'success': true, 'message': 'Order created', 'data': newOrder}, statusCode: 201);
  } else if (path.startsWith('/api/v1/orders/') && method == 'GET') {
    final id = int.tryParse(path.split('/').last);
    final order = orders.firstWhere((o) => o['id'] == id, orElse: () => {});
    if (order.isEmpty) {
      _sendError(request, 404, 'Order not found');
    } else {
      _sendJson(request, {'success': true, 'data': order});
    }
  } else if (path.startsWith('/api/v1/orders/') && method == 'PUT') {
    final id = int.tryParse(path.split('/').last);
    final index = orders.indexWhere((o) => o['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Order not found');
    } else {
      final body = await _readBody(request);
      orders[index] = {...orders[index], ...body};
      _sendJson(request, {'success': true, 'message': 'Order updated', 'data': orders[index]});
    }
  } else if (path.startsWith('/api/v1/orders/') && method == 'DELETE') {
    final id = int.tryParse(path.split('/').last);
    orders.removeWhere((o) => o['id'] == id);
    _sendJson(request, {'success': true, 'message': 'Order deleted'});
  }
}

void _handleTimeslots(HttpRequest request, String path, String method) async {
  if (path == '/api/v1/timeslots' && method == 'GET') {
    _sendJson(request, {'success': true, 'data': timeslots});
  } else if (path == '/api/v1/timeslots' && method == 'POST') {
    final body = await _readBody(request);
    final newTimeslot = {...body, 'id': timeslots.length + 1, 'created_at': DateTime.now().toIso8601String()};
    timeslots.add(newTimeslot);
    _sendJson(request, {'success': true, 'message': 'Timeslot created', 'data': newTimeslot}, statusCode: 201);
  } else if (path.startsWith('/api/v1/timeslots/') && method == 'GET') {
    final id = int.tryParse(path.split('/').last);
    final timeslot = timeslots.firstWhere((t) => t['id'] == id, orElse: () => {});
    if (timeslot.isEmpty) {
      _sendError(request, 404, 'Timeslot not found');
    } else {
      _sendJson(request, {'success': true, 'data': timeslot});
    }
  } else if (path.startsWith('/api/v1/timeslots/') && method == 'PUT') {
    final id = int.tryParse(path.split('/').last);
    final index = timeslots.indexWhere((t) => t['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Timeslot not found');
    } else {
      final body = await _readBody(request);
      timeslots[index] = {...timeslots[index], ...body};
      _sendJson(request, {'success': true, 'message': 'Timeslot updated', 'data': timeslots[index]});
    }
  } else if (path.startsWith('/api/v1/timeslots/') && method == 'DELETE') {
    final id = int.tryParse(path.split('/').last);
    timeslots.removeWhere((t) => t['id'] == id);
    _sendJson(request, {'success': true, 'message': 'Timeslot deleted'});
  }
}

void _handleLocations(HttpRequest request, String path, String method) async {
  if (path == '/api/v1/locations' && method == 'GET') {
    _sendJson(request, {'success': true, 'data': locations});
  } else if (path == '/api/v1/locations' && method == 'POST') {
    final body = await _readBody(request);
    final newLocation = {...body, 'id': locations.length + 1, 'created_at': DateTime.now().toIso8601String()};
    locations.add(newLocation);
    _sendJson(request, {'success': true, 'message': 'Location created', 'data': newLocation}, statusCode: 201);
  } else if (path.startsWith('/api/v1/locations/') && method == 'GET') {
    final id = int.tryParse(path.split('/').last);
    final location = locations.firstWhere((l) => l['id'] == id, orElse: () => {});
    if (location.isEmpty) {
      _sendError(request, 404, 'Location not found');
    } else {
      _sendJson(request, {'success': true, 'data': location});
    }
  } else if (path.startsWith('/api/v1/locations/') && method == 'PUT') {
    final id = int.tryParse(path.split('/').last);
    final index = locations.indexWhere((l) => l['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Location not found');
    } else {
      final body = await _readBody(request);
      locations[index] = {...locations[index], ...body};
      _sendJson(request, {'success': true, 'message': 'Location updated', 'data': locations[index]});
    }
  } else if (path.startsWith('/api/v1/locations/') && method == 'DELETE') {
    final id = int.tryParse(path.split('/').last);
    locations.removeWhere((l) => l['id'] == id);
    _sendJson(request, {'success': true, 'message': 'Location deleted'});
  }
}

void _handleConfig(HttpRequest request, String path, String method) async {
  if (path == '/api/v1/config' && method == 'GET') {
    _sendJson(request, {'success': true, 'data': config});
  } else if (path.startsWith('/api/v1/config/') && method == 'GET') {
    final key = path.split('/').last;
    if (config.containsKey(key)) {
      _sendJson(request, {'success': true, 'data': {key: config[key]}});
    } else {
      _sendError(request, 404, 'Config key not found');
    }
  } else if (path.startsWith('/api/v1/config/') && method == 'PUT') {
    final key = path.split('/').last;
    final body = await _readBody(request);
    config[key] = body['value'];
    _sendJson(request, {'success': true, 'message': 'Config updated', 'data': {key: config[key]}});
  }
}

Future<Map<String, dynamic>> _readBody(HttpRequest request) async {
  final content = await utf8.decoder.bind(request).join();
  return json.decode(content) as Map<String, dynamic>;
}

void _sendJson(HttpRequest request, Map<String, dynamic> data, {int statusCode = 200}) {
  request.response.statusCode = statusCode;
  request.response.headers.contentType = ContentType.json;
  request.response.write(json.encode(data));
  request.response.close();
}

void _sendError(HttpRequest request, int statusCode, String message) {
  request.response.statusCode = statusCode;
  request.response.headers.contentType = ContentType.json;
  request.response.write(json.encode({'success': false, 'error': message}));
  request.response.close();
}

