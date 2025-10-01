import 'dart:convert';
import 'dart:io';

/// Mock server for auth microservice
/// Run with: dart run lib/mock_server/auth_mock_server.dart
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8012);
  print('🚀 Auth Mock Server running on http://localhost:8012');
  print('📝 Base path: /auth');
  print('');
  print('Available endpoints:');
  print('  POST   /auth/login');
  print('  POST   /auth/logout');
  print('  GET    /auth/user');
  print('  POST   /auth/refresh-token');
  print('  POST   /auth/forgot-password');
  print('  POST   /auth/reset-password');
  print('  POST   /auth/validate-token');
  print('  GET    /auth/keycloak/login');
  print('  GET    /auth/keycloak/callback');
  print('');
  print('Test credentials:');
  print('  Username: admin@onefood.com');
  print('  Password: admin123');
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
    if (path == '/auth/login' && method == 'POST') {
      await _handleLogin(request);
    } else if (path == '/auth/logout' && method == 'POST') {
      await _handleLogout(request);
    } else if (path == '/auth/user' && method == 'GET') {
      await _handleGetUser(request);
    } else if (path == '/auth/refresh-token' && method == 'POST') {
      await _handleRefreshToken(request);
    } else if (path == '/auth/forgot-password' && method == 'POST') {
      await _handleForgotPassword(request);
    } else if (path == '/auth/reset-password' && method == 'POST') {
      await _handleResetPassword(request);
    } else if (path == '/auth/validate-token' && method == 'POST') {
      await _handleValidateToken(request);
    } else if (path == '/auth/keycloak/login' && method == 'GET') {
      await _handleKeycloakLogin(request);
    } else if (path == '/auth/keycloak/callback' && method == 'GET') {
      await _handleKeycloakCallback(request);
    } else {
      _send404(request);
    }
  } catch (e, st) {
    print('Error: $e');
    print(st);
    _send500(request, e.toString());
  }
}

Future<void> _handleLogin(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body);
  
  print('📥 Login Request: $body');

  final username = data['username'];
  final password = data['password'];

  // Mock authentication - accept admin@onefood.com / admin123
  if (username == 'admin@onefood.com' && password == 'admin123') {
    final response = {
      'success': true,
      'message': 'Login successful',
      'data': {
        'user': {
          'id': 1,
          'first_name': 'Admin',
          'last_name': 'User',
          'email': 'admin@onefood.com',
          'role_id': 1,
          'auth_type': 'legacy',
          'full_name': 'Admin User'
        },
        'token': 'mock_access_token_${DateTime.now().millisecondsSinceEpoch}',
        'token_type': 'Bearer',
        'refresh_token': 'mock_refresh_token_${DateTime.now().millisecondsSinceEpoch}'
      }
    };
    
    print('📤 Login Response: ${jsonEncode(response)}');
    request.response.statusCode = 200;
    request.response.write(jsonEncode(response));
  } else {
    final response = {
      'success': false,
      'message': 'Invalid credentials',
      'data': null
    };
    
    print('📤 Login Response (401): ${jsonEncode(response)}');
    request.response.statusCode = 401;
    request.response.write(jsonEncode(response));
  }
  
  request.response.close();
}

Future<void> _handleLogout(HttpRequest request) async {
  print('📥 Logout Request');
  
  final response = {
    'success': true,
    'message': 'Logout successful',
    'data': null
  };
  
  print('📤 Logout Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleGetUser(HttpRequest request) async {
  print('📥 Get User Request');
  
  final response = {
    'success': true,
    'message': 'User retrieved successfully',
    'data': {
      'user': {
        'id': 1,
        'first_name': 'Admin',
        'last_name': 'User',
        'email': 'admin@onefood.com',
        'role_id': 1,
        'auth_type': 'legacy',
        'full_name': 'Admin User'
      }
    }
  };
  
  print('📤 Get User Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleRefreshToken(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body);
  
  print('📥 Refresh Token Request: $body');
  
  final response = {
    'success': true,
    'message': 'Token refreshed successfully',
    'data': {
      'user': {
        'id': 1,
        'first_name': 'Admin',
        'last_name': 'User',
        'email': 'admin@onefood.com',
        'role_id': 1,
        'auth_type': 'legacy',
        'full_name': 'Admin User'
      },
      'token': 'mock_access_token_refreshed_${DateTime.now().millisecondsSinceEpoch}',
      'token_type': 'Bearer'
    }
  };
  
  print('📤 Refresh Token Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleForgotPassword(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body);
  
  print('📥 Forgot Password Request: $body');
  
  final response = {
    'success': true,
    'message': 'Password reset email sent successfully',
    'data': {
      'email': data['email'],
      'reset_token': 'mock_reset_token_${DateTime.now().millisecondsSinceEpoch}'
    }
  };
  
  print('📤 Forgot Password Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleResetPassword(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body);
  
  print('📥 Reset Password Request: $body');
  
  final response = {
    'success': true,
    'message': 'Password reset successfully',
    'data': null
  };
  
  print('📤 Reset Password Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleValidateToken(HttpRequest request) async {
  print('📥 Validate Token Request');
  
  final response = {
    'success': true,
    'message': 'Token is valid',
    'data': {
      'valid': true,
      'expires_at': DateTime.now().add(Duration(hours: 24)).toIso8601String()
    }
  };
  
  print('📤 Validate Token Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleKeycloakLogin(HttpRequest request) async {
  print('📥 Keycloak Login Request');
  
  final response = {
    'success': true,
    'message': 'Keycloak login URL generated',
    'data': {
      'login_url': 'http://localhost:8080/auth/realms/onefood/protocol/openid-connect/auth?client_id=onefood-admin&redirect_uri=http://localhost:3000/auth/callback&state=mock_state_123'
    }
  };
  
  print('📤 Keycloak Login Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleKeycloakCallback(HttpRequest request) async {
  final code = request.uri.queryParameters['code'];
  final state = request.uri.queryParameters['state'];
  
  print('📥 Keycloak Callback Request - code: $code, state: $state');
  
  final response = {
    'success': true,
    'message': 'Keycloak authentication successful',
    'data': {
      'user': {
        'id': 1,
        'first_name': 'Keycloak',
        'last_name': 'User',
        'email': 'keycloak@onefood.com',
        'role_id': 1,
        'auth_type': 'keycloak',
        'full_name': 'Keycloak User'
      },
      'token': 'mock_keycloak_token_${DateTime.now().millisecondsSinceEpoch}',
      'token_type': 'Bearer',
      'keycloak_tokens': {
        'access_token': 'mock_kc_access_token',
        'refresh_token': 'mock_kc_refresh_token',
        'id_token': 'mock_kc_id_token'
      }
    }
  };
  
  print('📤 Keycloak Callback Response: ${jsonEncode(response)}');
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

