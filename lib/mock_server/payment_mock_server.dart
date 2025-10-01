import 'dart:convert';
import 'dart:io';

/// Mock server for payment microservice
/// Run with: dart run lib/mock_server/payment_mock_server.dart
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8008);
  print('🚀 Payment Mock Server running on http://localhost:8008');
  print('📝 Base path: /api/v1');
  print('');
  print('Available endpoints:');
  print('  POST   /api/v1/payments');
  print('  GET    /api/v1/payments/{id}');
  print('  POST   /api/v1/payments/{id}/process');
  print('  POST   /api/v1/payments/{id}/refund');
  print('  GET    /api/v1/payments/statistics');
  print('  GET    /api/v1/payments/logs');
  print('  GET    /api/v1/payments/{id}/logs');
  print('  POST   /api/v1/payments/callback');
  print('  POST   /api/v1/payments/webhooks/{gateway}');
  print('  GET    /api/v1/payment-methods/customer/{customerId}');
  print('  POST   /api/v1/payment-methods');
  print('  GET    /api/v1/payment-methods/{id}');
  print('  PUT    /api/v1/payment-methods/{id}');
  print('  DELETE /api/v1/payment-methods/{id}');
  print('  PUT    /api/v1/payment-methods/{id}/default');
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
    if (path.startsWith('/api/v1/payments')) {
      _handlePaymentRoutes(request, path, method);
    } else if (path.startsWith('/api/v1/payment-methods')) {
      _handlePaymentMethodRoutes(request, path, method);
    } else {
      _send404(request);
    }
  } catch (e, st) {
    print('Error: $e');
    print(st);
    _send500(request, e.toString());
  }
}

void _handlePaymentRoutes(HttpRequest request, String path, String method) {
  final pathSegments = path.split('/').where((s) => s.isNotEmpty).toList();

  // POST /payments - Initiate payment
  if (pathSegments.length == 3 && method == 'POST') {
    _initiatePayment(request);
  }
  // GET /payments/statistics - Get statistics
  else if (pathSegments.length == 4 && pathSegments[3] == 'statistics' && method == 'GET') {
    _getPaymentStatistics(request);
  }
  // GET /payments/logs - Get all logs
  else if (pathSegments.length == 4 && pathSegments[3] == 'logs' && method == 'GET') {
    _getPaymentLogs(request);
  }
  // POST /payments/callback - Payment callback
  else if (pathSegments.length == 4 && pathSegments[3] == 'callback' && method == 'POST') {
    _paymentCallback(request);
  }
  // POST /payments/webhooks/{gateway} - Payment webhook
  else if (pathSegments.length == 5 && pathSegments[3] == 'webhooks' && method == 'POST') {
    final gateway = pathSegments[4];
    _paymentWebhook(request, gateway);
  }
  // GET /payments/{id} - Get payment status
  else if (pathSegments.length == 4 && method == 'GET') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _getPaymentStatus(request, id);
    } else {
      _send404(request);
    }
  }
  // POST /payments/{id}/process - Process payment
  else if (pathSegments.length == 5 && pathSegments[4] == 'process' && method == 'POST') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _processPayment(request, id);
    } else {
      _send404(request);
    }
  }
  // POST /payments/{id}/refund - Refund payment
  else if (pathSegments.length == 5 && pathSegments[4] == 'refund' && method == 'POST') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _refundPayment(request, id);
    } else {
      _send404(request);
    }
  }
  // GET /payments/{id}/logs - Get transaction logs
  else if (pathSegments.length == 5 && pathSegments[4] == 'logs' && method == 'GET') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _getTransactionLogs(request, id);
    } else {
      _send404(request);
    }
  }
  else {
    _send404(request);
  }
}

void _handlePaymentMethodRoutes(HttpRequest request, String path, String method) {
  final pathSegments = path.split('/').where((s) => s.isNotEmpty).toList();

  // GET /payment-methods/customer/{customerId}
  if (pathSegments.length == 5 && pathSegments[3] == 'customer' && method == 'GET') {
    final customerId = int.tryParse(pathSegments[4]);
    if (customerId != null) {
      _getCustomerPaymentMethods(request, customerId);
    } else {
      _send404(request);
    }
  }
  // POST /payment-methods - Create payment method
  else if (pathSegments.length == 3 && method == 'POST') {
    _createPaymentMethod(request);
  }
  // GET /payment-methods/{id} - Get payment method
  else if (pathSegments.length == 4 && method == 'GET') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _getPaymentMethod(request, id);
    } else {
      _send404(request);
    }
  }
  // PUT /payment-methods/{id} - Update payment method
  else if (pathSegments.length == 4 && method == 'PUT') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _updatePaymentMethod(request, id);
    } else {
      _send404(request);
    }
  }
  // DELETE /payment-methods/{id} - Delete payment method
  else if (pathSegments.length == 4 && method == 'DELETE') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _deletePaymentMethod(request, id);
    } else {
      _send404(request);
    }
  }
  // PUT /payment-methods/{id}/default - Set default payment method
  else if (pathSegments.length == 5 && pathSegments[4] == 'default' && method == 'PUT') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _setDefaultPaymentMethod(request, id);
    } else {
      _send404(request);
    }
  }
  else {
    _send404(request);
  }
}

// ========== Mock Data ==========

final List<Map<String, dynamic>> _mockPayments = [
  {
    'id': 1,
    'transaction_id': 'TXN001',
    'customer_id': 1,
    'order_id': 101,
    'amount': 150.00,
    'currency': 'USD',
    'status': 'completed',
    'gateway': 'stripe',
    'payment_method_id': 1,
    'created_at': '2024-01-15T10:00:00Z',
    'updated_at': '2024-01-15T10:05:00Z',
  },
  {
    'id': 2,
    'transaction_id': 'TXN002',
    'customer_id': 2,
    'order_id': 102,
    'amount': 75.50,
    'currency': 'USD',
    'status': 'pending',
    'gateway': 'paypal',
    'payment_method_id': 2,
    'created_at': '2024-01-16T14:30:00Z',
    'updated_at': '2024-01-16T14:30:00Z',
  },
  {
    'id': 3,
    'transaction_id': 'TXN003',
    'customer_id': 1,
    'order_id': 103,
    'amount': 200.00,
    'currency': 'USD',
    'status': 'failed',
    'gateway': 'stripe',
    'payment_method_id': 1,
    'created_at': '2024-01-17T09:15:00Z',
    'updated_at': '2024-01-17T09:20:00Z',
  },
];

final List<Map<String, dynamic>> _mockPaymentMethods = [
  {
    'id': 1,
    'customer_id': 1,
    'type': 'card',
    'provider': 'stripe',
    'last_four': '4242',
    'brand': 'visa',
    'expiry_month': 12,
    'expiry_year': 2025,
    'is_default': true,
    'is_active': true,
    'created_at': '2024-01-10T10:00:00Z',
  },
  {
    'id': 2,
    'customer_id': 2,
    'type': 'paypal',
    'provider': 'paypal',
    'email': 'customer2@example.com',
    'is_default': true,
    'is_active': true,
    'created_at': '2024-01-12T14:00:00Z',
  },
  {
    'id': 3,
    'customer_id': 1,
    'type': 'card',
    'provider': 'stripe',
    'last_four': '5555',
    'brand': 'mastercard',
    'expiry_month': 6,
    'expiry_year': 2026,
    'is_default': false,
    'is_active': true,
    'created_at': '2024-01-14T16:00:00Z',
  },
];

int _nextPaymentId = 4;
int _nextMethodId = 4;

// ========== Payment Handler Functions ==========

void _initiatePayment(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final newPayment = {
    'id': _nextPaymentId++,
    'transaction_id': 'TXN${_nextPaymentId.toString().padLeft(3, '0')}',
    'customer_id': data['customer_id'],
    'order_id': data['order_id'],
    'amount': data['amount'],
    'currency': data['currency'] ?? 'USD',
    'status': 'pending',
    'gateway': data['gateway'] ?? 'stripe',
    'payment_method_id': data['payment_method_id'],
    'created_at': DateTime.now().toIso8601String(),
    'updated_at': DateTime.now().toIso8601String(),
  };

  _mockPayments.add(newPayment);

  final response = {
    'success': true,
    'message': 'Payment initiated successfully',
    'data': {
      'transaction_id': newPayment['transaction_id'],
      'status': newPayment['status'],
      'amount': newPayment['amount'],
      'currency': newPayment['currency'],
      'payment_url': 'https://payment-gateway.example.com/pay/${newPayment['transaction_id']}',
    },
  };

  request.response.statusCode = 201;
  _sendJson(request, response);
}

void _getPaymentStatus(HttpRequest request, int id) {
  final payment = _mockPayments.firstWhere(
    (p) => p['id'] == id,
    orElse: () => {},
  );

  if (payment.isEmpty) {
    _send404(request);
    return;
  }

  final response = {
    'success': true,
    'data': {
      'transaction_id': payment['transaction_id'],
      'status': payment['status'],
      'amount': payment['amount'],
      'currency': payment['currency'],
      'gateway': payment['gateway'],
      'created_at': payment['created_at'],
      'updated_at': payment['updated_at'],
    },
  };

  _sendJson(request, response);
}

void _processPayment(HttpRequest request, int id) async {
  final index = _mockPayments.indexWhere((p) => p['id'] == id);

  if (index == -1) {
    _send404(request);
    return;
  }

  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  _mockPayments[index]['status'] = 'completed';
  _mockPayments[index]['updated_at'] = DateTime.now().toIso8601String();
  _mockPayments[index]['gateway_response'] = data;

  final response = {
    'success': true,
    'message': 'Payment processed successfully',
    'data': {
      'transaction_id': _mockPayments[index]['transaction_id'],
      'status': _mockPayments[index]['status'],
      'amount': _mockPayments[index]['amount'],
    },
  };

  _sendJson(request, response);
}

void _refundPayment(HttpRequest request, int id) async {
  final index = _mockPayments.indexWhere((p) => p['id'] == id);

  if (index == -1) {
    _send404(request);
    return;
  }

  final body = await utf8.decoder.bind(request).join();
  final data = body.isNotEmpty ? jsonDecode(body) as Map<String, dynamic> : {};

  final refundAmount = data['amount'] ?? _mockPayments[index]['amount'];

  _mockPayments[index]['status'] = 'refunded';
  _mockPayments[index]['refund_amount'] = refundAmount;
  _mockPayments[index]['updated_at'] = DateTime.now().toIso8601String();

  final response = {
    'success': true,
    'message': 'Payment refunded successfully',
    'data': {
      'transaction_id': _mockPayments[index]['transaction_id'],
      'status': _mockPayments[index]['status'],
      'refund_amount': refundAmount,
    },
  };

  _sendJson(request, response);
}

void _getPaymentStatistics(HttpRequest request) {
  final total = _mockPayments.fold<double>(0, (sum, p) => sum + (p['amount'] as num).toDouble());
  final completed = _mockPayments.where((p) => p['status'] == 'completed').length;
  final pending = _mockPayments.where((p) => p['status'] == 'pending').length;
  final failed = _mockPayments.where((p) => p['status'] == 'failed').length;

  final response = {
    'success': true,
    'data': {
      'total_transactions': _mockPayments.length,
      'total_amount': total,
      'completed_count': completed,
      'pending_count': pending,
      'failed_count': failed,
      'success_rate': _mockPayments.isEmpty ? 0 : (completed / _mockPayments.length * 100).toStringAsFixed(2),
    },
  };

  _sendJson(request, response);
}

void _getPaymentLogs(HttpRequest request) {
  final logs = _mockPayments.map((p) => {
    'transaction_id': p['transaction_id'],
    'event': 'payment_${p['status']}',
    'status': p['status'],
    'gateway': p['gateway'],
    'timestamp': p['updated_at'],
  }).toList();

  final response = {
    'success': true,
    'data': logs,
  };

  _sendJson(request, response);
}

void _getTransactionLogs(HttpRequest request, int id) {
  final payment = _mockPayments.firstWhere(
    (p) => p['id'] == id,
    orElse: () => {},
  );

  if (payment.isEmpty) {
    _send404(request);
    return;
  }

  final logs = [
    {
      'transaction_id': payment['transaction_id'],
      'event': 'payment_initiated',
      'status': 'pending',
      'timestamp': payment['created_at'],
    },
    {
      'transaction_id': payment['transaction_id'],
      'event': 'payment_${payment['status']}',
      'status': payment['status'],
      'timestamp': payment['updated_at'],
    },
  ];

  final response = {
    'success': true,
    'data': logs,
  };

  _sendJson(request, response);
}

void _paymentCallback(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final response = {
    'success': true,
    'message': 'Callback received',
    'data': {
      'transaction_id': data['transaction_id'],
      'status': 'processed',
    },
  };

  _sendJson(request, response);
}

void _paymentWebhook(HttpRequest request, String gateway) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final response = {
    'success': true,
    'message': 'Webhook received for $gateway',
    'data': {
      'gateway': gateway,
      'event': data['event'] ?? 'payment_update',
    },
  };

  _sendJson(request, response);
}

// ========== Payment Method Handler Functions ==========

void _getCustomerPaymentMethods(HttpRequest request, int customerId) {
  final methods = _mockPaymentMethods.where((m) => m['customer_id'] == customerId).toList();

  final response = {
    'success': true,
    'data': methods,
  };

  _sendJson(request, response);
}

void _getPaymentMethod(HttpRequest request, int id) {
  final method = _mockPaymentMethods.firstWhere(
    (m) => m['id'] == id,
    orElse: () => {},
  );

  if (method.isEmpty) {
    _send404(request);
    return;
  }

  final response = {
    'success': true,
    'data': method,
  };

  _sendJson(request, response);
}

void _createPaymentMethod(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final newMethod = {
    'id': _nextMethodId++,
    'customer_id': data['customer_id'],
    'type': data['type'],
    'provider': data['provider'],
    'last_four': data['last_four'],
    'brand': data['brand'],
    'expiry_month': data['expiry_month'],
    'expiry_year': data['expiry_year'],
    'email': data['email'],
    'is_default': data['is_default'] ?? false,
    'is_active': true,
    'created_at': DateTime.now().toIso8601String(),
  };

  _mockPaymentMethods.add(newMethod);

  final response = {
    'success': true,
    'message': 'Payment method created successfully',
    'data': newMethod,
  };

  request.response.statusCode = 201;
  _sendJson(request, response);
}

void _updatePaymentMethod(HttpRequest request, int id) async {
  final index = _mockPaymentMethods.indexWhere((m) => m['id'] == id);

  if (index == -1) {
    _send404(request);
    return;
  }

  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final updatedMethod = Map<String, dynamic>.from(_mockPaymentMethods[index]);

  if (data.containsKey('expiry_month')) updatedMethod['expiry_month'] = data['expiry_month'];
  if (data.containsKey('expiry_year')) updatedMethod['expiry_year'] = data['expiry_year'];
  if (data.containsKey('is_default')) updatedMethod['is_default'] = data['is_default'];
  if (data.containsKey('is_active')) updatedMethod['is_active'] = data['is_active'];

  _mockPaymentMethods[index] = updatedMethod;

  final response = {
    'success': true,
    'message': 'Payment method updated successfully',
    'data': updatedMethod,
  };

  _sendJson(request, response);
}

void _deletePaymentMethod(HttpRequest request, int id) {
  final index = _mockPaymentMethods.indexWhere((m) => m['id'] == id);

  if (index == -1) {
    _send404(request);
    return;
  }

  _mockPaymentMethods.removeAt(index);

  final response = {
    'success': true,
    'message': 'Payment method deleted successfully',
  };

  _sendJson(request, response);
}

void _setDefaultPaymentMethod(HttpRequest request, int id) {
  final index = _mockPaymentMethods.indexWhere((m) => m['id'] == id);

  if (index == -1) {
    _send404(request);
    return;
  }

  final customerId = _mockPaymentMethods[index]['customer_id'];

  // Unset all other defaults for this customer
  for (var i = 0; i < _mockPaymentMethods.length; i++) {
    if (_mockPaymentMethods[i]['customer_id'] == customerId) {
      _mockPaymentMethods[i]['is_default'] = false;
    }
  }

  // Set this one as default
  _mockPaymentMethods[index]['is_default'] = true;

  final response = {
    'success': true,
    'message': 'Payment method set as default',
    'data': _mockPaymentMethods[index],
  };

  _sendJson(request, response);
}

// ========== Helper Functions ==========

void _sendJson(HttpRequest request, Map<String, dynamic> data) {
  request.response.write(jsonEncode(data));
  request.response.close();
}

void _send404(HttpRequest request) {
  request.response.statusCode = 404;
  request.response.write(jsonEncode({
    'success': false,
    'error': 'Not found',
  }));
  request.response.close();
}

void _send500(HttpRequest request, String error) {
  request.response.statusCode = 500;
  request.response.write(jsonEncode({
    'success': false,
    'error': 'Internal server error: $error',
  }));
  request.response.close();
}

