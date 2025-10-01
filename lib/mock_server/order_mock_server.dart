import 'dart:io';
import 'dart:convert';

void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8002);
  print('🚀 Order Mock Server running on http://localhost:8002');
  print('📝 Base path: /v2/order-service-v12');
  print('');
  print('Available endpoints:');
  print('  GET    /v2/order-service-v12/orders');
  print('  POST   /v2/order-service-v12/orders');
  print('  GET    /v2/order-service-v12/orders/{orderId}');
  print('  PUT    /v2/order-service-v12/orders/{orderId}');
  print('  DELETE /v2/order-service-v12/orders/{orderId}');
  print('  GET    /v2/order-service-v12/orders/{orderId}/items');
  print('  POST   /v2/order-service-v12/orders/{orderId}/items');
  print('  PUT    /v2/order-service-v12/orders/{orderId}/items/{itemId}');
  print('  DELETE /v2/order-service-v12/orders/{orderId}/items/{itemId}');
  print('  GET    /v2/order-service-v12/orders/{orderId}/tracking');
  print('  PUT    /v2/order-service-v12/orders/{orderId}/status');
  print('');

  await for (HttpRequest request in server) {
    // Enable CORS
    request.response.headers.add('Access-Control-Allow-Origin', '*');
    request.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    request.response.headers.add('Access-Control-Allow-Headers', 'Origin, Content-Type, Authorization');

    if (request.method == 'OPTIONS') {
      request.response.statusCode = 200;
      await request.response.close();
      continue;
    }

    final path = request.uri.path;
    final method = request.method;

    print('${DateTime.now()} - $method $path');

    try {
      if (path == '/v2/order-service-v12/orders' && method == 'GET') {
        // List orders
        request.response
          ..statusCode = 200
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_getOrdersList()));
      } else if (path == '/v2/order-service-v12/orders' && method == 'POST') {
        // Create order
        request.response
          ..statusCode = 201
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_createOrder()));
      } else if (path.startsWith('/v2/order-service-v12/orders/') && path.split('/').length == 5 && method == 'GET') {
        // Get order by ID
        final orderId = path.split('/')[4];
        request.response
          ..statusCode = 200
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_getOrderById(orderId)));
      } else if (path.startsWith('/v2/order-service-v12/orders/') && path.split('/').length == 5 && method == 'PUT') {
        // Update order
        final orderId = path.split('/')[4];
        request.response
          ..statusCode = 200
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_updateOrder(orderId)));
      } else if (path.startsWith('/v2/order-service-v12/orders/') && path.split('/').length == 5 && method == 'DELETE') {
        // Cancel order
        request.response
          ..statusCode = 204;
      } else if (path.contains('/items') && !path.contains('/items/') && method == 'GET') {
        // Get order items
        final orderId = path.split('/')[4];
        request.response
          ..statusCode = 200
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_getOrderItems(orderId)));
      } else if (path.contains('/items') && !path.contains('/items/') && method == 'POST') {
        // Add order item
        request.response
          ..statusCode = 201
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_addOrderItem()));
      } else if (path.contains('/items/') && method == 'PUT') {
        // Update order item
        request.response
          ..statusCode = 200
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_updateOrderItem()));
      } else if (path.contains('/items/') && method == 'DELETE') {
        // Remove order item
        request.response
          ..statusCode = 204;
      } else if (path.contains('/tracking') && method == 'GET') {
        // Get order tracking
        final orderId = path.split('/')[4];
        request.response
          ..statusCode = 200
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_getOrderTracking(orderId)));
      } else if (path.contains('/status') && method == 'PUT') {
        // Update order status
        request.response
          ..statusCode = 200
          ..headers.contentType = ContentType.json
          ..write(jsonEncode(_updateOrderStatus()));
      } else {
        request.response
          ..statusCode = 404
          ..write(jsonEncode({'error': 'Not found'}));
      }
    } catch (e) {
      request.response
        ..statusCode = 500
        ..write(jsonEncode({'error': 'Internal server error', 'message': e.toString()}));
    }

    await request.response.close();
  }
}

Map<String, dynamic> _getOrdersList() {
  return {
    'status': 'success',
    'data': [
      {
        'id': 'ORD001',
        'customer_id': 'CUST001',
        'restaurant_id': 'REST001',
        'order_number': 'OFD-2025-001',
        'status': 'confirmed',
        'payment_status': 'paid',
        'delivery_type': 'delivery',
        'total_amount': 45.99,
        'subtotal': 39.99,
        'tax': 3.00,
        'delivery_fee': 3.00,
        'created_at': '2025-09-30T10:30:00Z',
        'updated_at': '2025-09-30T10:35:00Z',
      },
      {
        'id': 'ORD002',
        'customer_id': 'CUST002',
        'restaurant_id': 'REST001',
        'order_number': 'OFD-2025-002',
        'status': 'preparing',
        'payment_status': 'paid',
        'delivery_type': 'pickup',
        'total_amount': 28.50,
        'subtotal': 25.50,
        'tax': 3.00,
        'delivery_fee': 0.00,
        'created_at': '2025-09-30T11:00:00Z',
        'updated_at': '2025-09-30T11:15:00Z',
      },
    ],
    'meta': {
      'total': 2,
      'page': 1,
      'limit': 20,
      'total_pages': 1,
    }
  };
}

Map<String, dynamic> _createOrder() {
  return {
    'status': 'success',
    'data': {
      'id': 'ORD003',
      'customer_id': 'CUST003',
      'restaurant_id': 'REST001',
      'order_number': 'OFD-2025-003',
      'status': 'created',
      'payment_status': 'pending',
      'delivery_type': 'delivery',
      'total_amount': 52.99,
      'subtotal': 46.99,
      'tax': 3.00,
      'delivery_fee': 3.00,
      'created_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
    }
  };
}

Map<String, dynamic> _getOrderById(String orderId) {
  return {
    'status': 'success',
    'data': {
      'id': orderId,
      'customer_id': 'CUST001',
      'restaurant_id': 'REST001',
      'order_number': 'OFD-2025-001',
      'status': 'confirmed',
      'payment_status': 'paid',
      'payment_method': 'credit_card',
      'delivery_type': 'delivery',
      'total_amount': 45.99,
      'subtotal': 39.99,
      'tax': 3.00,
      'delivery_fee': 3.00,
      'discount': 0.00,
      'special_instructions': 'Please ring the doorbell',
      'delivery_address': {
        'street': '123 Main St',
        'city': 'New York',
        'state': 'NY',
        'zip': '10001',
        'country': 'USA',
      },
      'created_at': '2025-09-30T10:30:00Z',
      'updated_at': '2025-09-30T10:35:00Z',
      'estimated_delivery': '2025-09-30T11:30:00Z',
    }
  };
}

Map<String, dynamic> _updateOrder(String orderId) {
  return {
    'status': 'success',
    'data': {
      'id': orderId,
      'status': 'confirmed',
      'updated_at': DateTime.now().toIso8601String(),
    }
  };
}

Map<String, dynamic> _getOrderItems(String orderId) {
  return {
    'status': 'success',
    'data': [
      {
        'id': 'ITEM001',
        'order_id': orderId,
        'product_id': 'PROD001',
        'product_name': 'Margherita Pizza',
        'quantity': 2,
        'unit_price': 12.99,
        'total_price': 25.98,
        'customizations': [
          {'name': 'Extra Cheese', 'price': 2.00},
        ],
      },
      {
        'id': 'ITEM002',
        'order_id': orderId,
        'product_id': 'PROD002',
        'product_name': 'Caesar Salad',
        'quantity': 1,
        'unit_price': 8.99,
        'total_price': 8.99,
        'customizations': [],
      },
    ]
  };
}

Map<String, dynamic> _addOrderItem() {
  return {
    'status': 'success',
    'data': {
      'id': 'ITEM003',
      'product_id': 'PROD003',
      'product_name': 'Garlic Bread',
      'quantity': 1,
      'unit_price': 4.99,
      'total_price': 4.99,
      'created_at': DateTime.now().toIso8601String(),
    }
  };
}

Map<String, dynamic> _updateOrderItem() {
  return {
    'status': 'success',
    'data': {
      'id': 'ITEM001',
      'quantity': 3,
      'total_price': 38.97,
      'updated_at': DateTime.now().toIso8601String(),
    }
  };
}

Map<String, dynamic> _getOrderTracking(String orderId) {
  return {
    'status': 'success',
    'data': {
      'order_id': orderId,
      'current_status': 'out_for_delivery',
      'estimated_delivery': '2025-09-30T11:30:00Z',
      'driver': {
        'id': 'DRV001',
        'name': 'John Doe',
        'phone': '+1-555-0123',
        'vehicle': 'Honda Civic - ABC123',
      },
      'location': {
        'latitude': 40.7128,
        'longitude': -74.0060,
        'last_updated': DateTime.now().toIso8601String(),
      },
      'timeline': [
        {'status': 'created', 'timestamp': '2025-09-30T10:30:00Z'},
        {'status': 'confirmed', 'timestamp': '2025-09-30T10:35:00Z'},
        {'status': 'preparing', 'timestamp': '2025-09-30T10:40:00Z'},
        {'status': 'ready', 'timestamp': '2025-09-30T11:00:00Z'},
        {'status': 'out_for_delivery', 'timestamp': '2025-09-30T11:10:00Z'},
      ],
    }
  };
}

Map<String, dynamic> _updateOrderStatus() {
  return {
    'status': 'success',
    'data': {
      'status': 'delivered',
      'updated_at': DateTime.now().toIso8601String(),
    }
  };
}

