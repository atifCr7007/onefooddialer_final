import 'dart:convert';
import 'dart:io';

/// Mock server for kitchen microservice
/// Run with: dart run lib/mock_server/kitchen_mock_server.dart
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8006);
  print('🚀 Kitchen Mock Server running on http://localhost:8006');
  print('📝 Base path: /v2/kitchen-service-v12');
  print('');
  print('Available endpoints:');
  print('  GET    /v2/kitchen-service-v12/kitchens');
  print('  POST   /v2/kitchen-service-v12/kitchens');
  print('  GET    /v2/kitchen-service-v12/kitchens/{id}');
  print('  PUT    /v2/kitchen-service-v12/kitchens/{id}');
  print('  DELETE /v2/kitchen-service-v12/kitchens/{id}');
  print('  GET    /v2/kitchen-service-v12/kitchen-masters');
  print('  GET    /v2/kitchen-service-v12/recipes');
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
    if (path.startsWith('/v2/kitchen-service-v12/kitchens')) {
      await _handleKitchenRoutes(request, path, method);
    } else if (path.startsWith('/v2/kitchen-service-v12/kitchen-masters')) {
      await _handleKitchenMasters(request);
    } else if (path.startsWith('/v2/kitchen-service-v12/recipes')) {
      await _handleRecipes(request);
    } else {
      _send404(request);
    }
  } catch (e, st) {
    print('Error: $e');
    print(st);
    _send500(request, e.toString());
  }
}

Future<void> _handleKitchenRoutes(HttpRequest request, String path, String method) async {
  final pathSegments = path.split('/').where((s) => s.isNotEmpty).toList();

  if (pathSegments.length == 3 && method == 'GET') {
    await _getKitchens(request);
  } else if (pathSegments.length == 3 && method == 'POST') {
    await _createKitchen(request);
  } else if (pathSegments.length == 4 && method == 'GET') {
    final id = pathSegments[3];
    await _getKitchenById(request, id);
  } else if (pathSegments.length == 4 && method == 'PUT') {
    final id = pathSegments[3];
    await _updateKitchen(request, id);
  } else if (pathSegments.length == 4 && method == 'DELETE') {
    final id = pathSegments[3];
    await _deleteKitchen(request, id);
  } else {
    _send404(request);
  }
}

Future<void> _getKitchens(HttpRequest request) async {
  print('📥 Get Kitchens Request');
  
  final response = {
    'success': true,
    'message': 'Kitchens retrieved successfully',
    'data': [
      {
        'id': 1,
        'name': 'Main Kitchen',
        'location': 'Downtown',
        'status': 'active',
        'capacity': 50,
        'current_orders': 12,
        'created_at': '2024-01-01T00:00:00Z',
      },
      {
        'id': 2,
        'name': 'North Kitchen',
        'location': 'North District',
        'status': 'active',
        'capacity': 30,
        'current_orders': 8,
        'created_at': '2024-01-15T00:00:00Z',
      },
      {
        'id': 3,
        'name': 'South Kitchen',
        'location': 'South District',
        'status': 'maintenance',
        'capacity': 40,
        'current_orders': 0,
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
  
  print('📤 Get Kitchens Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _createKitchen(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  print('📥 Create Kitchen Request: $body');
  
  final response = {
    'success': true,
    'message': 'Kitchen created successfully',
    'data': {
      'id': 4,
      'name': 'New Kitchen',
      'location': 'East District',
      'status': 'active',
      'capacity': 35,
      'current_orders': 0,
      'created_at': DateTime.now().toIso8601String(),
    }
  };
  
  print('📤 Create Kitchen Response: ${jsonEncode(response)}');
  request.response.statusCode = 201;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _getKitchenById(HttpRequest request, String id) async {
  print('📥 Get Kitchen By ID Request: $id');
  
  final response = {
    'success': true,
    'message': 'Kitchen retrieved successfully',
    'data': {
      'id': int.parse(id),
      'name': 'Main Kitchen',
      'location': 'Downtown',
      'status': 'active',
      'capacity': 50,
      'current_orders': 12,
      'created_at': '2024-01-01T00:00:00Z',
    }
  };
  
  print('📤 Get Kitchen Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _updateKitchen(HttpRequest request, String id) async {
  final body = await utf8.decoder.bind(request).join();
  print('📥 Update Kitchen Request: $id - $body');
  
  final response = {
    'success': true,
    'message': 'Kitchen updated successfully',
    'data': {
      'id': int.parse(id),
      'name': 'Updated Kitchen',
      'location': 'Downtown',
      'status': 'active',
      'capacity': 55,
      'current_orders': 12,
      'updated_at': DateTime.now().toIso8601String(),
    }
  };
  
  print('📤 Update Kitchen Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _deleteKitchen(HttpRequest request, String id) async {
  print('📥 Delete Kitchen Request: $id');
  
  final response = {
    'success': true,
    'message': 'Kitchen deleted successfully',
    'data': null
  };
  
  print('📤 Delete Kitchen Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleKitchenMasters(HttpRequest request) async {
  print('📥 Get Kitchen Masters Request');
  
  final response = {
    'success': true,
    'message': 'Kitchen masters retrieved successfully',
    'data': [
      {'id': 1, 'name': 'Chef John', 'kitchen_id': 1, 'specialization': 'Italian'},
      {'id': 2, 'name': 'Chef Sarah', 'kitchen_id': 1, 'specialization': 'Asian'},
      {'id': 3, 'name': 'Chef Mike', 'kitchen_id': 2, 'specialization': 'Mexican'},
    ]
  };
  
  print('📤 Get Kitchen Masters Response: ${jsonEncode(response)}');
  request.response.statusCode = 200;
  request.response.write(jsonEncode(response));
  request.response.close();
}

Future<void> _handleRecipes(HttpRequest request) async {
  print('📥 Get Recipes Request');
  
  final response = {
    'success': true,
    'message': 'Recipes retrieved successfully',
    'data': [
      {'id': 1, 'name': 'Margherita Pizza', 'prep_time': 30, 'difficulty': 'easy'},
      {'id': 2, 'name': 'Pad Thai', 'prep_time': 45, 'difficulty': 'medium'},
      {'id': 3, 'name': 'Tacos', 'prep_time': 20, 'difficulty': 'easy'},
    ]
  };
  
  print('📤 Get Recipes Response: ${jsonEncode(response)}');
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

