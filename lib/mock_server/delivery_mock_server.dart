import 'dart:io';
import 'dart:convert';

/// Mock server for delivery API
/// Run with: dart run lib/mock_server/delivery_mock_server.dart
void main() async {
  final server = await HttpServer.bind('localhost', 8002);
  print('🚀 Delivery Mock Server running on http://localhost:8002');
  print('📦 Endpoints:');
  print('   GET  /orders - Get delivery orders');
  print('   GET  /orders/search?search=... - Search orders');
  print('   POST /orders/{orderId}/delivery-status - Update delivery status');
  print('   GET  /locations - Get delivery locations');
  print('   POST /third-party/book - Book third-party delivery');
  print('   GET  /third-party/{orderId}/status - Get third-party delivery status');
  print('   POST /third-party/{orderId}/cancel - Cancel third-party delivery');

  await for (HttpRequest request in server) {
    // Enable CORS
    request.response.headers.add('Access-Control-Allow-Origin', '*');
    request.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    request.response.headers.add('Access-Control-Allow-Headers', 'Origin, Content-Type, Accept, Authorization');

    if (request.method == 'OPTIONS') {
      request.response.statusCode = 200;
      await request.response.close();
      continue;
    }

    try {
      await handleRequest(request);
    } catch (e) {
      print('Error handling request: $e');
      request.response.statusCode = 500;
      request.response.write(json.encode({
        'success': false,
        'message': 'Internal server error: $e',
      }));
      await request.response.close();
    }
  }
}

Future<void> handleRequest(HttpRequest request) async {
  final path = request.uri.path;
  final method = request.method;

  print('$method $path');

  // GET /orders - Get delivery orders
  if (method == 'GET' && path == '/orders') {
    final locationId = request.uri.queryParameters['location_id'];
    final date = request.uri.queryParameters['date'];
    
    request.response.headers.contentType = ContentType.json;
    request.response.write(json.encode({
      'success': true,
      'data': _mockOrders.where((order) {
        if (locationId != null && order['location_code'] != int.tryParse(locationId)) {
          return false;
        }
        return true;
      }).toList(),
      'meta': {
        'total': _mockOrders.length,
        'current_page': 1,
        'last_page': 1,
        'per_page': 15,
      },
    }));
    await request.response.close();
    return;
  }

  // GET /orders/search - Search orders
  if (method == 'GET' && path == '/orders/search') {
    final search = request.uri.queryParameters['search'] ?? '';
    final locationId = request.uri.queryParameters['location_id'];
    
    final results = _mockOrders.where((order) {
      final matchesSearch = search.isEmpty ||
          order['order_no'].toString().toLowerCase().contains(search.toLowerCase()) ||
          order['customer_name'].toString().toLowerCase().contains(search.toLowerCase());
      
      final matchesLocation = locationId == null ||
          order['location_code'] == int.tryParse(locationId);
      
      return matchesSearch && matchesLocation;
    }).toList();
    
    request.response.headers.contentType = ContentType.json;
    request.response.write(json.encode({
      'success': true,
      'data': results,
      'meta': {
        'total': results.length,
        'current_page': 1,
        'last_page': 1,
        'per_page': 15,
      },
    }));
    await request.response.close();
    return;
  }

  // POST /orders/{orderId}/delivery-status - Update delivery status
  if (method == 'POST' && path.startsWith('/orders/') && path.endsWith('/delivery-status')) {
    final orderId = int.tryParse(path.split('/')[2]);
    final body = await utf8.decoder.bind(request).join();
    final data = json.decode(body);
    
    request.response.headers.contentType = ContentType.json;
    request.response.write(json.encode({
      'success': true,
      'message': 'Delivery status updated successfully',
      'data': {
        'order_id': orderId,
        'order_completed': data['order_completed'] ?? false,
        'updated_at': DateTime.now().toIso8601String(),
      },
    }));
    await request.response.close();
    return;
  }

  // GET /locations - Get delivery locations
  if (method == 'GET' && path == '/locations') {
    request.response.headers.contentType = ContentType.json;
    request.response.write(json.encode({
      'success': true,
      'data': _mockLocations,
    }));
    await request.response.close();
    return;
  }

  // POST /third-party/book - Book third-party delivery
  if (method == 'POST' && path == '/third-party/book') {
    final body = await utf8.decoder.bind(request).join();
    final data = json.decode(body);
    
    request.response.headers.contentType = ContentType.json;
    request.response.write(json.encode({
      'success': true,
      'message': 'Third-party delivery booked successfully',
      'data': {
        'tracking_id': 'TP${DateTime.now().millisecondsSinceEpoch}',
        'order_id': data['order_id'],
        'provider': 'DoorDash',
        'status': 'Pending',
        'estimated_pickup': DateTime.now().add(const Duration(minutes: 15)).toIso8601String(),
        'estimated_delivery': DateTime.now().add(const Duration(minutes: 45)).toIso8601String(),
      },
    }));
    await request.response.close();
    return;
  }

  // GET /third-party/{orderId}/status - Get third-party delivery status
  if (method == 'GET' && path.startsWith('/third-party/') && path.endsWith('/status')) {
    final orderId = int.tryParse(path.split('/')[2]);
    
    request.response.headers.contentType = ContentType.json;
    request.response.write(json.encode({
      'success': true,
      'data': {
        'order_id': orderId,
        'tracking_id': 'TP${orderId}123',
        'provider': 'DoorDash',
        'status': {
          'current': 'In Transit',
          'updated_at': DateTime.now().toIso8601String(),
          'driver_name': 'John Doe',
          'driver_phone': '+1234567890',
          'estimated_delivery': DateTime.now().add(const Duration(minutes: 20)).toIso8601String(),
        },
      },
    }));
    await request.response.close();
    return;
  }

  // POST /third-party/{orderId}/cancel - Cancel third-party delivery
  if (method == 'POST' && path.startsWith('/third-party/') && path.endsWith('/cancel')) {
    final orderId = int.tryParse(path.split('/')[2]);
    
    request.response.headers.contentType = ContentType.json;
    request.response.write(json.encode({
      'success': true,
      'message': 'Third-party delivery cancelled successfully',
      'data': {
        'order_id': orderId,
        'status': 'Cancelled',
        'cancelled_at': DateTime.now().toIso8601String(),
      },
    }));
    await request.response.close();
    return;
  }

  // 404 Not Found
  request.response.statusCode = 404;
  request.response.headers.contentType = ContentType.json;
  request.response.write(json.encode({
    'success': false,
    'message': 'Endpoint not found: $method $path',
  }));
  await request.response.close();
}

// Mock data
final List<Map<String, dynamic>> _mockOrders = [
  {
    'id': 1,
    'order_no': 'ORD-2025-001',
    'customer_code': 101,
    'customer_name': 'John Doe',
    'customer_phone': '+1234567890',
    'ship_address': '123 Main St, Apt 4B, New York, NY 10001',
    'order_date': '2025-01-15',
    'delivery_status': 'Pending',
    'order_status': 'Processing',
    'location_code': 1,
    'amount': 45.99,
    'tax': 3.68,
    'delivery_charges': 5.00,
    'total': 54.67,
    'payment_mode': 'Card',
  },
  {
    'id': 2,
    'order_no': 'ORD-2025-002',
    'customer_code': 102,
    'customer_name': 'Jane Smith',
    'customer_phone': '+1234567891',
    'ship_address': '456 Oak Ave, Suite 12, Brooklyn, NY 11201',
    'order_date': '2025-01-15',
    'delivery_status': 'Dispatched',
    'order_status': 'Processing',
    'location_code': 1,
    'amount': 32.50,
    'tax': 2.60,
    'delivery_charges': 5.00,
    'total': 40.10,
    'payment_mode': 'Cash',
  },
  {
    'id': 3,
    'order_no': 'ORD-2025-003',
    'customer_code': 103,
    'customer_name': 'Bob Johnson',
    'customer_phone': '+1234567892',
    'ship_address': '789 Pine Rd, Queens, NY 11354',
    'order_date': '2025-01-14',
    'delivery_status': 'Delivered',
    'order_status': 'Complete',
    'location_code': 2,
    'amount': 67.80,
    'tax': 5.42,
    'delivery_charges': 5.00,
    'total': 78.22,
    'payment_mode': 'Card',
  },
];

final List<Map<String, dynamic>> _mockLocations = [
  {
    'id': 1,
    'name': 'Manhattan Kitchen',
    'location_name': 'Manhattan Kitchen',
    'address': '100 Broadway, New York, NY 10005',
    'phone': '+1234560001',
    'is_active': true,
  },
  {
    'id': 2,
    'name': 'Brooklyn Kitchen',
    'location_name': 'Brooklyn Kitchen',
    'address': '200 Atlantic Ave, Brooklyn, NY 11201',
    'phone': '+1234560002',
    'is_active': true,
  },
];

