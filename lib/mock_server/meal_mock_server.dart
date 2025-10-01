import 'dart:convert';
import 'dart:io';

/// Mock server for meal microservice
/// Run with: dart run lib/mock_server/meal_mock_server.dart
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8003);
  print('🚀 Meal Mock Server running on http://localhost:8003');
  print('📝 Base path: /api/v2');
  print('');
  print('Available endpoints:');
  print('  GET    /api/v2/meals');
  print('  POST   /api/v2/meals');
  print('  GET    /api/v2/meals/{id}');
  print('  PUT    /api/v2/meals/{id}');
  print('  DELETE /api/v2/meals/{id}');
  print('  GET    /api/v2/meals/menu/{menu}');
  print('  GET    /api/v2/meals/type/vegetarian');
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
    if (path.startsWith('/api/v2/meals')) {
      _handleMealRoutes(request, path, method);
    } else {
      _send404(request);
    }
  } catch (e, st) {
    print('Error: $e');
    print(st);
    _send500(request, e.toString());
  }
}

void _handleMealRoutes(HttpRequest request, String path, String method) {
  final pathSegments = path.split('/').where((s) => s.isNotEmpty).toList();

  // GET /meals/type/vegetarian - Get vegetarian meals
  if (pathSegments.length == 5 && pathSegments[3] == 'type' && pathSegments[4] == 'vegetarian' && method == 'GET') {
    _getVegetarianMeals(request);
  }
  // GET /meals/menu/{menu} - Get meals by menu
  else if (pathSegments.length == 5 && pathSegments[3] == 'menu' && method == 'GET') {
    final menu = pathSegments[4];
    _getMealsByMenu(request, menu);
  }
  // GET /meals - List meals
  else if (pathSegments.length == 3 && method == 'GET') {
    _getMeals(request);
  }
  // POST /meals - Create meal
  else if (pathSegments.length == 3 && method == 'POST') {
    _createMeal(request);
  }
  // GET /meals/{id} - Get meal by ID
  else if (pathSegments.length == 4 && method == 'GET') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _getMealById(request, id);
    } else {
      _send404(request);
    }
  }
  // PUT /meals/{id} - Update meal
  else if (pathSegments.length == 4 && method == 'PUT') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _updateMeal(request, id);
    } else {
      _send404(request);
    }
  }
  // DELETE /meals/{id} - Delete meal
  else if (pathSegments.length == 4 && method == 'DELETE') {
    final id = int.tryParse(pathSegments[3]);
    if (id != null) {
      _deleteMeal(request, id);
    } else {
      _send404(request);
    }
  }
  else {
    _send404(request);
  }
}

// ========== Mock Data ==========

final List<Map<String, dynamic>> _mockMeals = [
  {
    'id': 1,
    'company_id': 1,
    'unit_id': 1,
    'name': 'Grilled Chicken Salad',
    'description': 'Fresh grilled chicken with mixed greens and vinaigrette',
    'unit_price': 12.99,
    'items': {'protein': 'chicken', 'vegetables': ['lettuce', 'tomato', 'cucumber']},
    'category': 'lunch',
    'food_type': 'non-veg',
    'product_type': 'main',
    'product_category': 'salad',
    'threshold': 50,
    'image_path': '/images/meals/grilled-chicken-salad.jpg',
    'screen': 'menu',
    'status': true,
    'is_swappable': true,
    'swap_with': 'Caesar Salad',
    'swap_charges': 2.00,
    'meal_plans': 'Premium,Standard',
    'is_custom': false,
    'created_at': '2024-01-15T10:00:00Z',
    'updated_at': '2024-01-15T10:00:00Z',
  },
  {
    'id': 2,
    'company_id': 1,
    'unit_id': 1,
    'name': 'Vegetable Biryani',
    'description': 'Aromatic basmati rice with mixed vegetables and spices',
    'unit_price': 10.99,
    'items': {'rice': 'basmati', 'vegetables': ['carrot', 'peas', 'beans', 'potato']},
    'category': 'lunch',
    'food_type': 'veg',
    'product_type': 'main',
    'product_category': 'rice',
    'threshold': 100,
    'image_path': '/images/meals/veg-biryani.jpg',
    'screen': 'menu',
    'status': true,
    'is_swappable': true,
    'swap_with': 'Pulao',
    'swap_charges': 1.50,
    'meal_plans': 'Premium,Standard,Basic',
    'is_custom': false,
    'created_at': '2024-01-15T10:00:00Z',
    'updated_at': '2024-01-15T10:00:00Z',
  },
  {
    'id': 3,
    'company_id': 1,
    'unit_id': 1,
    'name': 'Pancakes with Maple Syrup',
    'description': 'Fluffy pancakes served with butter and maple syrup',
    'unit_price': 8.99,
    'items': {'base': 'pancakes', 'toppings': ['butter', 'maple syrup']},
    'category': 'breakfast',
    'food_type': 'veg',
    'product_type': 'main',
    'product_category': 'breakfast',
    'threshold': 75,
    'image_path': '/images/meals/pancakes.jpg',
    'screen': 'menu',
    'status': true,
    'is_swappable': false,
    'swap_with': null,
    'swap_charges': 0.00,
    'meal_plans': 'Premium,Standard',
    'is_custom': false,
    'created_at': '2024-01-15T10:00:00Z',
    'updated_at': '2024-01-15T10:00:00Z',
  },
  {
    'id': 4,
    'company_id': 1,
    'unit_id': 1,
    'name': 'Butter Chicken',
    'description': 'Tender chicken in rich tomato and butter gravy',
    'unit_price': 14.99,
    'items': {'protein': 'chicken', 'sauce': 'butter tomato', 'spices': ['garam masala', 'fenugreek']},
    'category': 'dinner',
    'food_type': 'non-veg',
    'product_type': 'main',
    'product_category': 'curry',
    'threshold': 60,
    'image_path': '/images/meals/butter-chicken.jpg',
    'screen': 'menu',
    'status': true,
    'is_swappable': true,
    'swap_with': 'Chicken Tikka Masala',
    'swap_charges': 1.00,
    'meal_plans': 'Premium',
    'is_custom': false,
    'created_at': '2024-01-15T10:00:00Z',
    'updated_at': '2024-01-15T10:00:00Z',
  },
  {
    'id': 5,
    'company_id': 1,
    'unit_id': 1,
    'name': 'Fresh Orange Juice',
    'description': 'Freshly squeezed orange juice',
    'unit_price': 4.99,
    'items': {'fruit': 'orange', 'size': '250ml'},
    'category': 'breakfast',
    'food_type': 'beverage',
    'product_type': 'drink',
    'product_category': 'juice',
    'threshold': 200,
    'image_path': '/images/meals/orange-juice.jpg',
    'screen': 'menu',
    'status': true,
    'is_swappable': true,
    'swap_with': 'Apple Juice',
    'swap_charges': 0.50,
    'meal_plans': 'Premium,Standard,Basic',
    'is_custom': false,
    'created_at': '2024-01-15T10:00:00Z',
    'updated_at': '2024-01-15T10:00:00Z',
  },
];

int _nextId = 6;

// ========== Handler Functions ==========

void _getMeals(HttpRequest request) {
  final queryParams = request.uri.queryParameters;
  var meals = List<Map<String, dynamic>>.from(_mockMeals);

  // Apply filters
  if (queryParams.containsKey('menu')) {
    final menu = queryParams['menu'];
    meals = meals.where((m) => m['category'] == menu).toList();
  }

  if (queryParams.containsKey('food_type')) {
    final foodType = queryParams['food_type'];
    meals = meals.where((m) => m['food_type'] == foodType).toList();
  }

  if (queryParams.containsKey('product_category')) {
    final category = queryParams['product_category'];
    meals = meals.where((m) => m['product_category'] == category).toList();
  }

  if (queryParams.containsKey('active')) {
    final active = queryParams['active'] == 'true';
    meals = meals.where((m) => m['status'] == active).toList();
  }

  if (queryParams.containsKey('search')) {
    final search = queryParams['search']!.toLowerCase();
    meals = meals.where((m) {
      final name = (m['name'] as String).toLowerCase();
      final desc = (m['description'] as String?)?.toLowerCase() ?? '';
      return name.contains(search) || desc.contains(search);
    }).toList();
  }

  // Apply sorting
  final sortBy = queryParams['sort_by'] ?? 'name';
  final sortDirection = queryParams['sort_direction'] ?? 'asc';
  
  meals.sort((a, b) {
    final aVal = a[sortBy];
    final bVal = b[sortBy];
    final comparison = aVal.toString().compareTo(bVal.toString());
    return sortDirection == 'asc' ? comparison : -comparison;
  });

  final response = {
    'success': true,
    'data': meals,
    'meta': {
      'total': meals.length,
      'count': meals.length,
    }
  };

  _sendJson(request, response);
}

void _getMealById(HttpRequest request, int id) {
  final meal = _mockMeals.firstWhere(
    (m) => m['id'] == id,
    orElse: () => {},
  );

  if (meal.isEmpty) {
    _send404(request);
    return;
  }

  final response = {
    'success': true,
    'data': meal,
  };

  _sendJson(request, response);
}

void _getMealsByMenu(HttpRequest request, String menu) {
  final meals = _mockMeals.where((m) => m['category'] == menu).toList();

  final response = {
    'success': true,
    'data': meals,
    'meta': {
      'total': meals.length,
      'count': meals.length,
      'menu': menu,
    }
  };

  _sendJson(request, response);
}

void _getVegetarianMeals(HttpRequest request) {
  final meals = _mockMeals.where((m) => m['food_type'] == 'veg').toList();

  final response = {
    'success': true,
    'data': meals,
    'meta': {
      'total': meals.length,
      'count': meals.length,
      'filter': 'vegetarian',
    }
  };

  _sendJson(request, response);
}

void _createMeal(HttpRequest request) async {
  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final newMeal = {
    'id': _nextId++,
    'company_id': data['company_id'] ?? 1,
    'unit_id': data['unit_id'] ?? 1,
    'name': data['name'],
    'description': data['description'],
    'unit_price': data['unit_price'],
    'items': data['items'],
    'category': data['category'],
    'food_type': data['food_type'],
    'product_type': data['product_type'],
    'product_category': data['product_category'],
    'threshold': data['threshold'],
    'image_path': data['image_path'],
    'screen': data['screen'] ?? 'menu',
    'status': data['status'] ?? true,
    'is_swappable': data['is_swappable'] ?? false,
    'swap_with': data['swap_with'],
    'swap_charges': data['swap_charges'] ?? 0.0,
    'meal_plans': data['meal_plans'],
    'is_custom': data['is_custom'] ?? false,
    'created_at': DateTime.now().toIso8601String(),
    'updated_at': DateTime.now().toIso8601String(),
  };

  _mockMeals.add(newMeal);

  final response = {
    'success': true,
    'message': 'Meal created successfully',
    'data': newMeal,
  };

  request.response.statusCode = 201;
  _sendJson(request, response);
}

void _updateMeal(HttpRequest request, int id) async {
  final index = _mockMeals.indexWhere((m) => m['id'] == id);

  if (index == -1) {
    _send404(request);
    return;
  }

  final body = await utf8.decoder.bind(request).join();
  final data = jsonDecode(body) as Map<String, dynamic>;

  final updatedMeal = Map<String, dynamic>.from(_mockMeals[index]);

  // Update fields
  if (data.containsKey('name')) updatedMeal['name'] = data['name'];
  if (data.containsKey('description')) updatedMeal['description'] = data['description'];
  if (data.containsKey('unit_price')) updatedMeal['unit_price'] = data['unit_price'];
  if (data.containsKey('items')) updatedMeal['items'] = data['items'];
  if (data.containsKey('category')) updatedMeal['category'] = data['category'];
  if (data.containsKey('food_type')) updatedMeal['food_type'] = data['food_type'];
  if (data.containsKey('product_type')) updatedMeal['product_type'] = data['product_type'];
  if (data.containsKey('product_category')) updatedMeal['product_category'] = data['product_category'];
  if (data.containsKey('threshold')) updatedMeal['threshold'] = data['threshold'];
  if (data.containsKey('image_path')) updatedMeal['image_path'] = data['image_path'];
  if (data.containsKey('screen')) updatedMeal['screen'] = data['screen'];
  if (data.containsKey('status')) updatedMeal['status'] = data['status'];
  if (data.containsKey('is_swappable')) updatedMeal['is_swappable'] = data['is_swappable'];
  if (data.containsKey('swap_with')) updatedMeal['swap_with'] = data['swap_with'];
  if (data.containsKey('swap_charges')) updatedMeal['swap_charges'] = data['swap_charges'];
  if (data.containsKey('meal_plans')) updatedMeal['meal_plans'] = data['meal_plans'];
  if (data.containsKey('is_custom')) updatedMeal['is_custom'] = data['is_custom'];

  updatedMeal['updated_at'] = DateTime.now().toIso8601String();

  _mockMeals[index] = updatedMeal;

  final response = {
    'success': true,
    'message': 'Meal updated successfully',
    'data': updatedMeal,
  };

  _sendJson(request, response);
}

void _deleteMeal(HttpRequest request, int id) {
  final index = _mockMeals.indexWhere((m) => m['id'] == id);

  if (index == -1) {
    _send404(request);
    return;
  }

  _mockMeals.removeAt(index);

  final response = {
    'success': true,
    'message': 'Meal deleted successfully',
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


