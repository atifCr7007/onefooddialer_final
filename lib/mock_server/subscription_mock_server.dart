import 'dart:io';
import 'dart:convert';

void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8010);
  print('🚀 Subscription Mock Server running on http://localhost:8010');
  print('📝 Base path: /api/v2');
  print('');
  print('Available endpoints:');
  print('  GET    /api/v2/subscriptions');
  print('  GET    /api/v2/subscriptions/{id}');
  print('  POST   /api/v2/subscriptions');
  print('  PUT    /api/v2/subscriptions/{id}');
  print('  DELETE /api/v2/subscriptions/{id}');
  print('  POST   /api/v2/subscriptions/{id}/cancel');
  print('  POST   /api/v2/subscriptions/{id}/pause');
  print('  POST   /api/v2/subscriptions/{id}/resume');
  print('  POST   /api/v2/subscriptions/{id}/renew');
  print('  GET    /api/v2/subscription-plans');
  print('  GET    /api/v2/subscription-plans/{id}');
  print('  POST   /api/v2/subscription-plans');
  print('  PUT    /api/v2/subscription-plans/{id}');
  print('  DELETE /api/v2/subscription-plans/{id}');
  print('  POST   /api/v2/subscription-plans/{id}/activate');
  print('  POST   /api/v2/subscription-plans/{id}/deactivate');
  print('');

  await for (HttpRequest request in server) {
    _handleRequest(request);
  }
}

// Sample subscription plans
final subscriptionPlans = <Map<String, dynamic>>[
  {
    'id': 1,
    'name': 'Basic Monthly Plan',
    'description': 'Basic subscription with monthly billing',
    'type': 'monthly',
    'price': 29.99,
    'billing_cycle': 'monthly',
    'trial_days': 7,
    'status': true,
    'show_to_customer': 'yes',
    'features': ['Feature 1', 'Feature 2'],
    'created_at': '2025-01-01T00:00:00Z',
  },
  {
    'id': 2,
    'name': 'Premium Yearly Plan',
    'description': 'Premium subscription with yearly billing',
    'type': 'yearly',
    'price': 299.99,
    'billing_cycle': 'yearly',
    'trial_days': 14,
    'status': true,
    'show_to_customer': 'yes',
    'features': ['All Features', 'Priority Support'],
    'created_at': '2025-01-01T00:00:00Z',
  },
  {
    'id': 3,
    'name': 'Enterprise Custom Plan',
    'description': 'Custom enterprise subscription',
    'type': 'custom',
    'price': 999.99,
    'billing_cycle': 'custom',
    'trial_days': 30,
    'status': true,
    'show_to_customer': 'admin',
    'features': ['All Features', 'Dedicated Support', 'Custom Integration'],
    'created_at': '2025-01-01T00:00:00Z',
  },
];

// Sample subscriptions
final subscriptions = <Map<String, dynamic>>[
  {
    'id': 1,
    'customer_id': 1,
    'subscription_plan_id': 1,
    'status': 'active',
    'start_date': '2025-01-15',
    'end_date': '2025-02-15',
    'next_billing_date': '2025-02-15',
    'amount': 29.99,
    'trial_end_date': '2025-01-22',
    'is_trial': false,
    'auto_renew': true,
    'created_at': '2025-01-15T10:00:00Z',
  },
  {
    'id': 2,
    'customer_id': 2,
    'subscription_plan_id': 2,
    'status': 'paused',
    'start_date': '2025-01-01',
    'end_date': '2026-01-01',
    'next_billing_date': '2026-01-01',
    'amount': 299.99,
    'trial_end_date': '2025-01-15',
    'is_trial': false,
    'auto_renew': true,
    'pause_history': [
      {'paused_at': '2025-01-20', 'reason': 'Customer request'}
    ],
    'created_at': '2025-01-01T00:00:00Z',
  },
  {
    'id': 3,
    'customer_id': 3,
    'subscription_plan_id': 3,
    'status': 'cancelled',
    'start_date': '2024-12-01',
    'end_date': '2025-12-01',
    'next_billing_date': null,
    'amount': 999.99,
    'trial_end_date': '2024-12-31',
    'is_trial': false,
    'auto_renew': false,
    'cancelled_at': '2025-01-10',
    'cancellation_reason': 'Switched to different provider',
    'created_at': '2024-12-01T00:00:00Z',
  },
];

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
    // Subscription Plans endpoints
    if (path.startsWith('/api/v2/subscription-plans')) {
      _handleSubscriptionPlans(request, path, method);
      return;
    }

    // Subscriptions endpoints
    if (path.startsWith('/api/v2/subscriptions')) {
      _handleSubscriptions(request, path, method);
      return;
    }

    // 404
    _sendError(request, 404, 'Endpoint not found');
  } catch (e) {
    _sendError(request, 500, 'Internal server error: $e');
  }
}

void _handleSubscriptionPlans(HttpRequest request, String path, String method) async {
  // List all plans
  if (path == '/api/v2/subscription-plans' && method == 'GET') {
    _sendJson(request, {'success': true, 'data': subscriptionPlans});
  }
  // Create plan
  else if (path == '/api/v2/subscription-plans' && method == 'POST') {
    final body = await _readBody(request);
    final newPlan = {...body, 'id': subscriptionPlans.length + 1, 'created_at': DateTime.now().toIso8601String()};
    subscriptionPlans.add(newPlan);
    _sendJson(request, {'success': true, 'message': 'Subscription plan created', 'data': newPlan}, statusCode: 201);
  }
  // Get plan by ID
  else if (path.startsWith('/api/v2/subscription-plans/') && method == 'GET' && !path.contains('/activate') && !path.contains('/deactivate')) {
    final id = int.tryParse(path.split('/')[4]);
    final plan = subscriptionPlans.firstWhere((p) => p['id'] == id, orElse: () => {});
    if (plan.isEmpty) {
      _sendError(request, 404, 'Subscription plan not found');
    } else {
      _sendJson(request, {'success': true, 'data': plan});
    }
  }
  // Update plan
  else if (path.startsWith('/api/v2/subscription-plans/') && method == 'PUT') {
    final id = int.tryParse(path.split('/')[4]);
    final index = subscriptionPlans.indexWhere((p) => p['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Subscription plan not found');
    } else {
      final body = await _readBody(request);
      subscriptionPlans[index] = {...subscriptionPlans[index], ...body};
      _sendJson(request, {'success': true, 'message': 'Subscription plan updated', 'data': subscriptionPlans[index]});
    }
  }
  // Delete plan
  else if (path.startsWith('/api/v2/subscription-plans/') && method == 'DELETE') {
    final id = int.tryParse(path.split('/')[4]);
    subscriptionPlans.removeWhere((p) => p['id'] == id);
    _sendJson(request, {'success': true, 'message': 'Subscription plan deleted'});
  }
  // Activate plan
  else if (path.contains('/activate') && method == 'POST') {
    final id = int.tryParse(path.split('/')[4]);
    final index = subscriptionPlans.indexWhere((p) => p['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Subscription plan not found');
    } else {
      subscriptionPlans[index]['status'] = true;
      _sendJson(request, {'success': true, 'message': 'Subscription plan activated', 'data': subscriptionPlans[index]});
    }
  }
  // Deactivate plan
  else if (path.contains('/deactivate') && method == 'POST') {
    final id = int.tryParse(path.split('/')[4]);
    final index = subscriptionPlans.indexWhere((p) => p['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Subscription plan not found');
    } else {
      subscriptionPlans[index]['status'] = false;
      _sendJson(request, {'success': true, 'message': 'Subscription plan deactivated', 'data': subscriptionPlans[index]});
    }
  }
}

void _handleSubscriptions(HttpRequest request, String path, String method) async {
  // List all subscriptions
  if (path == '/api/v2/subscriptions' && method == 'GET') {
    _sendJson(request, {'success': true, 'data': subscriptions});
  }
  // Create subscription
  else if (path == '/api/v2/subscriptions' && method == 'POST') {
    final body = await _readBody(request);
    final newSubscription = {...body, 'id': subscriptions.length + 1, 'created_at': DateTime.now().toIso8601String()};
    subscriptions.add(newSubscription);
    _sendJson(request, {'success': true, 'message': 'Subscription created', 'data': newSubscription}, statusCode: 201);
  }
  // Get subscription by ID
  else if (path.startsWith('/api/v2/subscriptions/') && method == 'GET' && !path.contains('/cancel') && !path.contains('/pause') && !path.contains('/resume') && !path.contains('/renew')) {
    final id = int.tryParse(path.split('/')[4]);
    final subscription = subscriptions.firstWhere((s) => s['id'] == id, orElse: () => {});
    if (subscription.isEmpty) {
      _sendError(request, 404, 'Subscription not found');
    } else {
      _sendJson(request, {'success': true, 'data': subscription});
    }
  }
  // Update subscription
  else if (path.startsWith('/api/v2/subscriptions/') && method == 'PUT') {
    final id = int.tryParse(path.split('/')[4]);
    final index = subscriptions.indexWhere((s) => s['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Subscription not found');
    } else {
      final body = await _readBody(request);
      subscriptions[index] = {...subscriptions[index], ...body};
      _sendJson(request, {'success': true, 'message': 'Subscription updated', 'data': subscriptions[index]});
    }
  }
  // Delete subscription
  else if (path.startsWith('/api/v2/subscriptions/') && method == 'DELETE') {
    final id = int.tryParse(path.split('/')[4]);
    subscriptions.removeWhere((s) => s['id'] == id);
    _sendJson(request, {'success': true, 'message': 'Subscription deleted'});
  }
  // Cancel subscription
  else if (path.contains('/cancel') && method == 'POST') {
    final id = int.tryParse(path.split('/')[4]);
    final index = subscriptions.indexWhere((s) => s['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Subscription not found');
    } else {
      final body = await _readBody(request);
      subscriptions[index]['status'] = 'cancelled';
      subscriptions[index]['cancelled_at'] = DateTime.now().toIso8601String();
      subscriptions[index]['cancellation_reason'] = body['reason'] ?? 'No reason provided';
      _sendJson(request, {'success': true, 'message': 'Subscription cancelled', 'data': subscriptions[index]});
    }
  }
  // Pause subscription
  else if (path.contains('/pause') && method == 'POST') {
    final id = int.tryParse(path.split('/')[4]);
    final index = subscriptions.indexWhere((s) => s['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Subscription not found');
    } else {
      final body = await _readBody(request);
      subscriptions[index]['status'] = 'paused';
      final pauseHistory = subscriptions[index]['pause_history'] as List? ?? [];
      pauseHistory.add({'paused_at': DateTime.now().toIso8601String(), 'reason': body['reason'] ?? 'No reason provided'});
      subscriptions[index]['pause_history'] = pauseHistory;
      _sendJson(request, {'success': true, 'message': 'Subscription paused', 'data': subscriptions[index]});
    }
  }
  // Resume subscription
  else if (path.contains('/resume') && method == 'POST') {
    final id = int.tryParse(path.split('/')[4]);
    final index = subscriptions.indexWhere((s) => s['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Subscription not found');
    } else {
      subscriptions[index]['status'] = 'active';
      _sendJson(request, {'success': true, 'message': 'Subscription resumed', 'data': subscriptions[index]});
    }
  }
  // Renew subscription
  else if (path.contains('/renew') && method == 'POST') {
    final id = int.tryParse(path.split('/')[4]);
    final index = subscriptions.indexWhere((s) => s['id'] == id);
    if (index == -1) {
      _sendError(request, 404, 'Subscription not found');
    } else {
      subscriptions[index]['status'] = 'active';
      subscriptions[index]['renewed_at'] = DateTime.now().toIso8601String();
      _sendJson(request, {'success': true, 'message': 'Subscription renewed', 'data': subscriptions[index]});
    }
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

