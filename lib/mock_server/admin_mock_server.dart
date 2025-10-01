import 'dart:convert';
import 'dart:io';

/// Mock server for admin microservice
/// Run with: dart run lib/mock_server/admin_mock_server.dart
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8009);
  print('🚀 Admin Mock Server running on http://localhost:8009');
  print('📝 Base path: /v2/admin-service-v12');
  print('');
  print('Available endpoints:');
  print('  GET    /v2/admin-service-v12/dashboard');
  print('  GET    /v2/admin-service-v12/health');
  print('  GET    /v2/admin-service-v12/users');
  print('  POST   /v2/admin-service-v12/users');
  print('  GET    /v2/admin-service-v12/roles');
  print('  GET    /v2/admin-service-v12/system/settings');
  print('');

  await for (HttpRequest request in server) {
    _handleRequest(request);
  }
}

void _handleRequest(HttpRequest request) async {
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
    if (path == '/v2/admin-service-v12/dashboard' && method == 'GET') {
      await _handleDashboard(request);
    } else if (path == '/v2/admin-service-v12/health' && method == 'GET') {
      await _handleHealth(request);
    } else if (path.startsWith('/v2/admin-service-v12/users')) {
      await _handleUsers(request, method);
    } else if (path.startsWith('/v2/admin-service-v12/roles')) {
      await _handleRoles(request);
    } else if (path.startsWith('/v2/admin-service-v12/system')) {
      await _handleSystem(request);
    } else {
      _send404(request);
    }
  } catch (e, st) {
    print('Error: $e');
    print(st);
    _send500(request, e.toString());
  }
}

Future<void> _handleDashboard(HttpRequest request) async {
  print('📥 Get Dashboard Request');
  
  final response = {
    'success': true,
    'message': 'Dashboard data retrieved successfully',
    'data': {
      'stats': {
        'total_users': 1250,
        'active_users': 980,
        'total_orders': 5420,
        'total_revenue': 125000.50,
        'pending_orders': 45,
        'completed_orders': 5375,
      },
      'recent_activity': [
        {
          'id': 1,
          'type': 'order',
          'message': 'New order #12345 received',
          'timestamp': DateTime.now().subtract(Duration(minutes: 5)).toIso8601String(),
        },
        {
          'id': 2,
          'type': 'user',
          'message': 'New user registered: john@example.com',
          'timestamp': DateTime.now().subtract(Duration(minutes: 15)).toIso8601String(),
        },
        {
          'id': 3,
          'type': 'payment',
          'message': 'Payment received: \$125.00',
          'timestamp': DateTime.now().subtract(Duration(minutes: 30)).toIso8601String(),
        },
      ],
      'charts': {
        'orders_by_day': [
          {'date': '2024-01-01', 'count': 120},
          {'date': '2024-01-02', 'count': 135},
          {'date': '2024-01-03', 'count': 150},
          {'date': '2024-01-04', 'count': 145},
          {'date': '2024-01-05', 'count': 160},
        ],
        'revenue_by_month': [
          {'month': 'Jan', 'revenue': 25000},
          {'month': 'Feb', 'revenue': 28000},
          {'month': 'Mar', 'revenue': 32000},
        ],
      }
    }
  };
  
  print('📤 Dashboard Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleHealth(HttpRequest request) async {
  print('📥 Get Health Request');
  
  final response = {
    'success': true,
    'message': 'Service is healthy',
    'data': {
      'status': 'healthy',
      'timestamp': DateTime.now().toIso8601String(),
      'services': {
        'database': 'healthy',
        'cache': 'healthy',
        'queue': 'healthy',
      },
      'uptime': 3600,
      'version': '1.0.0',
    }
  };
  
  print('📤 Health Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleUsers(HttpRequest request, String method) async {
  if (method == 'GET') {
    print('📥 Get Users Request');
    
    final response = {
      'success': true,
      'message': 'Users retrieved successfully',
      'data': [
        {
          'id': 1,
          'name': 'Admin User',
          'email': 'admin@onefood.com',
          'role': 'admin',
          'status': 'active',
          'created_at': '2024-01-01T00:00:00Z',
        },
        {
          'id': 2,
          'name': 'Manager User',
          'email': 'manager@onefood.com',
          'role': 'manager',
          'status': 'active',
          'created_at': '2024-01-15T00:00:00Z',
        },
        {
          'id': 3,
          'name': 'Staff User',
          'email': 'staff@onefood.com',
          'role': 'staff',
          'status': 'active',
          'created_at': '2024-02-01T00:00:00Z',
        },
      ],
      'pagination': {
        'total': 3,
        'page': 1,
        'per_page': 10,
        'total_pages': 1,
      }
    };
    
    print('📤 Users Response: ${jsonEncode(response)}');
    request.response.statusCode = 200;
    request.response.write(jsonEncode(response));
  } else if (method == 'POST') {
    final body = await utf8.decoder.bind(request).join();
    print('📥 Create User Request: $body');
    
    final response = {
      'success': true,
      'message': 'User created successfully',
      'data': {
        'id': 4,
        'name': 'New User',
        'email': 'newuser@onefood.com',
        'role': 'staff',
        'status': 'active',
        'created_at': DateTime.now().toIso8601String(),
      }
    };
    
    print('📤 Create User Response: ${jsonEncode(response)}');
    request.response.statusCode = 201;
    request.response.write(jsonEncode(response));
  }
  
  request.response.close();
}

Future<void> _handleRoles(HttpRequest request) async {
  print('📥 Get Roles Request');
  
  final response = {
    'success': true,
    'message': 'Roles retrieved successfully',
    'data': [
      {
        'id': 1,
        'name': 'admin',
        'display_name': 'Administrator',
        'permissions': ['all'],
      },
      {
        'id': 2,
        'name': 'manager',
        'display_name': 'Manager',
        'permissions': ['read', 'write', 'update'],
      },
      {
        'id': 3,
        'name': 'staff',
        'display_name': 'Staff',
        'permissions': ['read'],
      },
    ]
  };
  
  print('📤 Roles Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleSystem(HttpRequest request) async {
  print('📥 Get System Settings Request');
  
  final response = {
    'success': true,
    'message': 'System settings retrieved successfully',
    'data': {
      'app_name': 'OneFoodDialer',
      'version': '1.0.0',
      'environment': 'development',
      'features': {
        'auth': true,
        'payments': true,
        'notifications': true,
        'analytics': true,
      },
      'maintenance_mode': false,
    }
  };
  
  print('📤 System Settings Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

void _send404(HttpRequest request) {
  final response = {
    'success': false,
    'message': 'Endpoint not found',
    'data': null
  };
  
  request.response.statusCode = 404;
  request.response.write(jsonEncode(response));
  request.response.close();
}

void _send500(HttpRequest request, String error) {
  final response = {
    'success': false,
    'message': 'Internal server error: $error',
    'data': null
  };
  
  request.response.statusCode = 500;
  request.response.write(jsonEncode(response));
  request.response.close();
}

