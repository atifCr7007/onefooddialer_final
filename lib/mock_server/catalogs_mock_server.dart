import 'dart:convert';
import 'dart:io';

/// Mock server for catalogs microservice
/// Run with: dart run lib/mock_server/catalogs_mock_server.dart
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8005);
  print('🚀 Catalogs Mock Server running on http://localhost:8005');
  print('📝 Base path: /api/v2');
  print('');
  print('Available endpoints:');
  print('  GET    /api/v2/catalogue/products');
  print('  POST   /api/v2/catalogue/products');
  print('  GET    /api/v2/catalogue/products/{id}');
  print('  PUT    /api/v2/catalogue/products/{id}');
  print('  DELETE /api/v2/catalogue/products/{id}');
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
    if (path.startsWith('/api/v2/catalogue/products')) {
      _handleProductRoutes(request, path, method);
    } else {
      _send404(request);
    }
  } catch (e, st) {
    print('Error: $e');
    print(st);
    _send500(request, e.toString());
  }
}

void _handleProductRoutes(HttpRequest request, String path, String method) {
  final pathSegments = path.split('/').where((s) => s.isNotEmpty).toList();

  // GET /catalogue/products - Get all products
  if (pathSegments.length == 4 && method == 'GET') {
    _getAllProducts(request);
  }
  // POST /catalogue/products - Create product
  else if (pathSegments.length == 4 && method == 'POST') {
    _createProduct(request);
  }
  // GET /catalogue/products/{id} - Get product by ID
  else if (pathSegments.length == 5 && method == 'GET') {
    final id = int.tryParse(pathSegments[4]);
    if (id != null) {
      _getProductById(request, id);
    } else {
      _send404(request);
    }
  }
  // PUT /catalogue/products/{id} - Update product
  else if (pathSegments.length == 5 && method == 'PUT') {
    final id = int.tryParse(pathSegments[4]);
    if (id != null) {
      _updateProduct(request, id);
    } else {
      _send404(request);
    }
  }
  // DELETE /catalogue/products/{id} - Delete product
  else if (pathSegments.length == 5 && method == 'DELETE') {
    final id = int.tryParse(pathSegments[4]);
    if (id != null) {
      _deleteProduct(request, id);
    } else {
      _send404(request);
    }
  }
  else {
    _send404(request);
  }
}

// ========== Mock Data ==========

final List<Map<String, dynamic>> _mockProducts = [
  {
    'id': 1,
    'name': 'Margherita Pizza',
    'description': 'Classic pizza with tomato sauce, mozzarella, and basil',
    'price': 12.99,
    'food_type': 'veg',
    'kitchen_id': 1,
    'product_category_id': 1,
    'status': true,
    'image_url': 'https://example.com/images/margherita.jpg',
    'created_at': '2024-01-10T10:00:00Z',
    'updated_at': '2024-01-10T10:00:00Z',
  },
  {
    'id': 2,
    'name': 'Chicken Burger',
    'description': 'Grilled chicken burger with lettuce, tomato, and mayo',
    'price': 8.99,
    'food_type': 'non-veg',
    'kitchen_id': 1,
    'product_category_id': 2,
    'status': true,
    'image_url': 'https://example.com/images/chicken-burger.jpg',
    'created_at': '2024-01-11T11:00:00Z',
    'updated_at': '2024-01-11T11:00:00Z',
  },
  {
    'id': 3,
    'name': 'Caesar Salad',
    'description': 'Fresh romaine lettuce with Caesar dressing and croutons',
    'price': 7.99,
    'food_type': 'veg',
    'kitchen_id': 2,
    'product_category_id': 3,
    'status': true,
    'image_url': 'https://example.com/images/caesar-salad.jpg',
    'created_at': '2024-01-12T12:00:00Z',
    'updated_at': '2024-01-12T12:00:00Z',
  },
  {
    'id': 4,
    'name': 'Pasta Carbonara',
    'description': 'Creamy pasta with bacon, eggs, and parmesan cheese',
    'price': 14.99,
    'food_type': 'non-veg',
    'kitchen_id': 2,
    'product_category_id': 4,
    'status': false,
    'image_url': 'https://example.com/images/carbonara.jpg',
    'created_at': '2024-01-13T13:00:00Z',
    'updated_at': '2024-01-13T13:00:00Z',
  },
  {
    'id': 5,
    'name': 'Veggie Wrap',
    'description': 'Whole wheat wrap with grilled vegetables and hummus',
    'price': 6.99,
    'food_type': 'veg',
    'kitchen_id': 1,
    'product_category_id': 2,
    'status': true,
    'image_url': 'https://example.com/images/veggie-wrap.jpg',
    'created_at': '2024-01-14T14:00:00Z',
    'updated_at': '2024-01-14T14:00:00Z',
  },
];

int _nextProductId = 6;

// ========== Handler Functions ==========

void _getAllProducts(HttpRequest request) {
  final queryParams = request.uri.queryParameters;
  
  var filteredProducts = List<Map<String, dynamic>>.from(_mockProducts);

  // Apply filters
  if (queryParams.containsKey('food_type')) {
    final foodType = queryParams['food_type'];
    filteredProducts = filteredProducts.where((p) => p['food_type'] == foodType).toList();
  }

  if (queryParams.containsKey('kitchen_id')) {
    final kitchenId = int.tryParse(queryParams['kitchen_id'] ?? '');
    if (kitchenId != null) {
      filteredProducts = filteredProducts.where((p) => p['kitchen_id'] == kitchenId).toList();
    }
  }

  if (queryParams.containsKey('status')) {
    final status = queryParams['status'] == 'true';
    filteredProducts = filteredProducts.where((p) => p['status'] == status).toList();
  }

  if (queryParams.containsKey('product_category_id')) {
    final categoryId = int.tryParse(queryParams['product_category_id'] ?? '');
    if (categoryId != null) {
      filteredProducts = filteredProducts.where((p) => p['product_category_id'] == categoryId).toList();
    }
  }

  final perPage = int.tryParse(queryParams['per_page'] ?? '15') ?? 15;
  final page = int.tryParse(queryParams['page'] ?? '1') ?? 1;
  
  final startIndex = (page - 1) * perPage;
  final endIndex = startIndex + perPage;
  final paginatedProducts = filteredProducts.sublist(
    startIndex.clamp(0, filteredProducts.length),
    endIndex.clamp(0, filteredProducts.length),
  );

  final response = {
    'data': paginatedProducts,
    'meta': {
      'current_page': page,
      'per_page': perPage,
      'total': filteredProducts.length,
      'last_page': (filteredProducts.length / perPage).ceil(),
    },
  };

  _sendJson(request, response);
}

void _getProductById(HttpRequest request, int id) {
  final product = _mockProducts.firstWhere(
    (p) => p['id'] == id,
    orElse: () => {},
  );

  if (product.isEmpty) {
    request.response.statusCode = 404;
    _sendJson(request, {'message': 'Product not found'});
    return;
  }

  final response = {
    'data': product,
  };

  _sendJson(request, response);
}

void _createProduct(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final newProduct = {
    'id': _nextProductId++,
    'name': data['name'],
    'description': data['description'],
    'price': data['price'],
    'food_type': data['food_type'] ?? 'veg',
    'kitchen_id': data['kitchen_id'],
    'product_category_id': data['product_category_id'],
    'status': data['status'] ?? true,
    'image_url': data['image_url'],
    'created_at': DateTime.now().toIso8601String(),
    'updated_at': DateTime.now().toIso8601String(),
  };

  _mockProducts.add(newProduct);

  final response = {
    'message': 'Product created successfully',
    'data': newProduct,
  };

  request.response.statusCode = 201;
  _sendJson(request, response);
}

void _updateProduct(HttpRequest request, int id) async {
  final index = _mockProducts.indexWhere((p) => p['id'] == id);
  
  if (index == -1) {
    request.response.statusCode = 404;
    _sendJson(request, {'message': 'Product not found'});
    return;
  }

  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final updatedProduct = Map<String, dynamic>.from(_mockProducts[index]);
  
  if (data.containsKey('name')) updatedProduct['name'] = data['name'];
  if (data.containsKey('description')) updatedProduct['description'] = data['description'];
  if (data.containsKey('price')) updatedProduct['price'] = data['price'];
  if (data.containsKey('food_type')) updatedProduct['food_type'] = data['food_type'];
  if (data.containsKey('kitchen_id')) updatedProduct['kitchen_id'] = data['kitchen_id'];
  if (data.containsKey('product_category_id')) updatedProduct['product_category_id'] = data['product_category_id'];
  if (data.containsKey('status')) updatedProduct['status'] = data['status'];
  if (data.containsKey('image_url')) updatedProduct['image_url'] = data['image_url'];
  
  updatedProduct['updated_at'] = DateTime.now().toIso8601String();

  _mockProducts[index] = updatedProduct;

  final response = {
    'message': 'Product updated successfully',
    'data': updatedProduct,
  };

  _sendJson(request, response);
}

void _deleteProduct(HttpRequest request, int id) {
  final index = _mockProducts.indexWhere((p) => p['id'] == id);
  
  if (index == -1) {
    request.response.statusCode = 404;
    _sendJson(request, {'message': 'Product not found'});
    return;
  }

  _mockProducts.removeAt(index);

  final response = {
    'message': 'Product deleted successfully',
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
    'message': 'Not found',
  }));
  request.response.close();
}

void _send500(HttpRequest request, String error) {
  request.response.statusCode = 500;
  request.response.write(jsonEncode({
    'message': 'Internal server error: $error',
  }));
  request.response.close();
}

