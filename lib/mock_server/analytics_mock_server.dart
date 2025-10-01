import 'dart:convert';
import 'dart:io';

/// Mock server for analytics microservice
/// Run with: dart run lib/mock_server/analytics_mock_server.dart
void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8008);
  print('🚀 Analytics Mock Server running on http://localhost:8008');
  print('📝 Base path: /v2/analytics-service-v12');
  print('');
  print('Available endpoints:');
  print('  GET /v2/analytics-service-v12/health');
  print('  GET /v2/analytics-service-v12/sales');
  print('  GET /v2/analytics-service-v12/sales/years');
  print('  GET /v2/analytics-service-v12/sales/months/{year}');
  print('  GET /v2/analytics-service-v12/sales/payment-methods');
  print('  GET /v2/analytics-service-v12/sales/revenue/{year}/{month}');
  print('  GET /v2/analytics-service-v12/sales/comparison/{year}/{type}');
  print('  GET /v2/analytics-service-v12/sales/avg-meal/{year}/{month}');
  print('  GET /v2/analytics-service-v12/food');
  print('  GET /v2/analytics-service-v12/food/popular/{year}/{month}');
  print('  GET /v2/analytics-service-v12/food/performance/{year}/{month}/{type}');
  print('  GET /v2/analytics-service-v12/food/extras');
  print('  GET /v2/analytics-service-v12/customer');
  print('  GET /v2/analytics-service-v12/customer/loyal');
  print('  GET /v2/analytics-service-v12/customer/spending/{customerId}');
  print('  GET /v2/analytics-service-v12/customer/preferences/{customerId}');
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
    if (path.startsWith('/v2/analytics-service-v12')) {
      _handleAnalyticsRoutes(request, path, method);
    } else {
      _send404(request);
    }
  } catch (e, st) {
    print('Error: $e');
    print(st);
    _send500(request, e.toString());
  }
}

void _handleAnalyticsRoutes(HttpRequest request, String path, String method) {
  final pathSegments = path.split('/').where((s) => s.isNotEmpty).toList();

  // Health check
  if (path.endsWith('/health') && method == 'GET') {
    _getHealth(request);
  }
  // Sales analytics
  else if (path.endsWith('/sales') && method == 'GET') {
    _getSalesDashboard(request);
  }
  else if (path.endsWith('/sales/years') && method == 'GET') {
    _getSalesYears(request);
  }
  else if (path.contains('/sales/months/') && method == 'GET') {
    final year = int.tryParse(pathSegments.last) ?? 2025;
    _getSalesMonths(request, year);
  }
  else if (path.endsWith('/sales/payment-methods') && method == 'GET') {
    _getPaymentMethods(request);
  }
  else if (path.contains('/sales/revenue/') && method == 'GET') {
    final parts = pathSegments.sublist(3);
    final year = int.tryParse(parts[1]) ?? 2025;
    final month = int.tryParse(parts[2]) ?? 1;
    _getRevenue(request, year, month);
  }
  else if (path.contains('/sales/comparison/') && method == 'GET') {
    final parts = pathSegments.sublist(3);
    final year = int.tryParse(parts[1]) ?? 2025;
    final type = parts[2];
    _getSalesComparison(request, year, type);
  }
  else if (path.contains('/sales/avg-meal/') && method == 'GET') {
    final parts = pathSegments.sublist(3);
    final year = int.tryParse(parts[1]) ?? 2025;
    final month = int.tryParse(parts[2]) ?? 1;
    _getAvgMeal(request, year, month);
  }
  // Food analytics
  else if (path.endsWith('/food') && method == 'GET') {
    _getFoodDashboard(request);
  }
  else if (path.contains('/food/popular/') && method == 'GET') {
    final parts = pathSegments.sublist(3);
    final year = int.tryParse(parts[1]) ?? 2025;
    final month = int.tryParse(parts[2]) ?? 1;
    _getPopularMeals(request, year, month);
  }
  else if (path.contains('/food/performance/') && method == 'GET') {
    final parts = pathSegments.sublist(3);
    final year = int.tryParse(parts[1]) ?? 2025;
    final month = int.tryParse(parts[2]) ?? 1;
    final type = parts[3];
    _getMealPerformance(request, year, month, type);
  }
  else if (path.endsWith('/food/extras') && method == 'GET') {
    _getCommonExtras(request);
  }
  // Customer analytics
  else if (path.endsWith('/customer') && method == 'GET') {
    _getCustomerDashboard(request);
  }
  else if (path.endsWith('/customer/loyal') && method == 'GET') {
    _getLoyalCustomers(request);
  }
  else if (path.contains('/customer/spending/') && method == 'GET') {
    final customerId = pathSegments.last;
    _getCustomerSpending(request, customerId);
  }
  else if (path.contains('/customer/preferences/') && method == 'GET') {
    final customerId = pathSegments.last;
    _getCustomerPreferences(request, customerId);
  }
  else {
    _send404(request);
  }
}

// Health endpoint
void _getHealth(HttpRequest request) {
  _sendJson(request, {
    'status': 'ok',
    'service': 'analytics-service',
    'version': '2.0.0',
    'timestamp': DateTime.now().toIso8601String(),
  });
}

// Sales Analytics endpoints
void _getSalesDashboard(HttpRequest request) {
  _sendJson(request, {
    'status': 'success',
    'data': {
      'years': [2023, 2024, 2025],
      'months': {
        '1': 'January',
        '2': 'February',
        '3': 'March',
        '4': 'April',
        '5': 'May',
        '6': 'June',
        '7': 'July',
        '8': 'August',
        '9': 'September',
        '10': 'October',
        '11': 'November',
        '12': 'December',
      },
      'payment_modes': _mockPaymentModes,
    },
  });
}

void _getSalesYears(HttpRequest request) {
  _sendJson(request, {
    'status': 'success',
    'data': [2023, 2024, 2025],
  });
}

void _getSalesMonths(HttpRequest request, int year) {
  _sendJson(request, {
    'status': 'success',
    'data': {
      '1': 'January',
      '2': 'February',
      '3': 'March',
      '4': 'April',
      '5': 'May',
      '6': 'June',
      '7': 'July',
      '8': 'August',
      '9': 'September',
      '10': 'October',
      '11': 'November',
      '12': 'December',
    },
  });
}

void _getPaymentMethods(HttpRequest request) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockPaymentModes,
  });
}

void _getRevenue(HttpRequest request, int year, int month) {
  _sendJson(request, {
    'status': 'success',
    'data': [
      {'gross_amount': 125000.50},
    ],
  });
}

void _getSalesComparison(HttpRequest request, int year, String type) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockSalesComparison,
  });
}

void _getAvgMeal(HttpRequest request, int year, int month) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockAvgMeals,
  });
}

// Food Analytics endpoints
void _getFoodDashboard(HttpRequest request) {
  _sendJson(request, {
    'status': 'success',
    'data': {
      'years': [2023, 2024, 2025],
      'months': {
        '1': 'January',
        '2': 'February',
      },
      'menus': ['Breakfast', 'Lunch', 'Dinner'],
      'common_extras': _mockCommonExtras,
    },
  });
}

void _getPopularMeals(HttpRequest request, int year, int month) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockMealPerformance,
  });
}

void _getMealPerformance(HttpRequest request, int year, int month, String type) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockMealPerformance,
  });
}

void _getCommonExtras(HttpRequest request) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockCommonExtras,
  });
}

// Customer Analytics endpoints
void _getCustomerDashboard(HttpRequest request) {
  _sendJson(request, {
    'status': 'success',
    'data': {
      'loyal_customers': _mockLoyalCustomers,
      'customer_preferences': _mockCustomerPreferences,
      'customer_spending': _mockCustomerSpending,
    },
  });
}

void _getLoyalCustomers(HttpRequest request) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockLoyalCustomers,
  });
}

void _getCustomerSpending(HttpRequest request, String customerId) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockCustomerSpending,
  });
}

void _getCustomerPreferences(HttpRequest request, String customerId) {
  _sendJson(request, {
    'status': 'success',
    'data': _mockCustomerPreferences,
  });
}

// Helper functions
void _sendJson(HttpRequest request, Map<String, dynamic> data, {int statusCode = 200}) {
  request.response.statusCode = statusCode;
  request.response.write(jsonEncode(data));
  request.response.close();
}

void _send404(HttpRequest request) {
  request.response.statusCode = 404;
  request.response.write(jsonEncode({'error': 'Not found'}));
  request.response.close();
}

void _send500(HttpRequest request, String error) {
  request.response.statusCode = 500;
  request.response.write(jsonEncode({'error': 'Internal server error', 'message': error}));
  request.response.close();
}

// Mock data
final List<Map<String, dynamic>> _mockPaymentModes = [
  {'payment_mode': 'Credit Card', 'count': 450},
  {'payment_mode': 'Cash', 'count': 320},
  {'payment_mode': 'Digital Wallet', 'count': 280},
  {'payment_mode': 'Bank Transfer', 'count': 150},
];

final List<Map<String, dynamic>> _mockSalesComparison = [
  {'period': '2023', 'gross_amount': 980000.00, 'net_amount': 882000.00},
  {'period': '2024', 'gross_amount': 1250000.00, 'net_amount': 1125000.00},
  {'period': '2025', 'gross_amount': 1450000.00, 'net_amount': 1305000.00},
];

final List<Map<String, dynamic>> _mockAvgMeals = [
  {'meal_name': 'Chicken Curry', 'qty': 2.5},
  {'meal_name': 'Beef Biryani', 'qty': 2.2},
  {'meal_name': 'Vegetable Stir Fry', 'qty': 1.8},
  {'meal_name': 'Fish Tacos', 'qty': 2.0},
];

final List<Map<String, dynamic>> _mockMealPerformance = [
  {'product_name': 'Chicken Curry', 'qty': 850},
  {'product_name': 'Beef Biryani', 'qty': 720},
  {'product_name': 'Vegetable Stir Fry', 'qty': 650},
  {'product_name': 'Fish Tacos', 'qty': 580},
  {'product_name': 'Pasta Carbonara', 'qty': 520},
];

final List<Map<String, dynamic>> _mockCommonExtras = [
  {'meal': 'Chicken Curry', 'extra': 'Extra Rice', 'count': 120},
  {'meal': 'Beef Biryani', 'extra': 'Raita', 'count': 95},
  {'meal': 'Vegetable Stir Fry', 'extra': 'Extra Sauce', 'count': 85},
  {'meal': 'Fish Tacos', 'extra': 'Guacamole', 'count': 75},
  {'meal': 'Pasta Carbonara', 'extra': 'Garlic Bread', 'count': 65},
];

final List<Map<String, dynamic>> _mockLoyalCustomers = [
  {'customer_code': 'CUST001', 'customer_name': 'John Doe', 'net_amount': 15000.75},
  {'customer_code': 'CUST002', 'customer_name': 'Jane Smith', 'net_amount': 12500.50},
  {'customer_code': 'CUST003', 'customer_name': 'Bob Johnson', 'net_amount': 11200.25},
  {'customer_code': 'CUST004', 'customer_name': 'Alice Williams', 'net_amount': 10800.00},
  {'customer_code': 'CUST005', 'customer_name': 'Charlie Brown', 'net_amount': 9500.75},
];

final List<Map<String, dynamic>> _mockCustomerSpending = [
  {'customer_name': 'John Doe', 'yearly': 15000.75, 'monthly': 1250.06},
  {'customer_name': 'Jane Smith', 'yearly': 12500.50, 'monthly': 1041.71},
];

final List<Map<String, dynamic>> _mockCustomerPreferences = [
  {'customer_code': 'CUST001', 'customer_name': 'John Doe', 'product_name': 'Chicken Curry', 'net_amount': 5500.50},
  {'customer_code': 'CUST001', 'customer_name': 'John Doe', 'product_name': 'Beef Biryani', 'net_amount': 4200.25},
  {'customer_code': 'CUST002', 'customer_name': 'Jane Smith', 'product_name': 'Vegetable Stir Fry', 'net_amount': 3800.00},
];

