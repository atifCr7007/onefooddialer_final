# Analytics Service Integration Rules

## Overview
This document describes the integration of the Analytics microservice into the OneFoodDialer admin dashboard.

## Service Information
- **Service Name**: Analytics Service
- **Version**: 2.0.0
- **Base Path**: `/v2/analytics-service-v12`
- **Mock Server Port**: 8009
- **Production URL**: `https://api.onefooddialer.com/v2/analytics-service-v12`

## Architecture

### Client Package
- **Location**: `lib/client/analytics_client/`
- **Package Name**: `analytics_client`
- **Generated From**: `contract/analytics_openapi.yaml`

### Resource Clients
- **Location**: `lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/analytics_resource_clients.dart`
- **Clients**:
  - `SalesAnalyticsResourceClient` - Sales analytics operations
  - `FoodAnalyticsResourceClient` - Food analytics operations
  - `CustomerAnalyticsResourceClient` - Customer analytics operations
  - `AnalyticsHealthResourceClient` - Health check operations

### Generated UI
- **Location**: `lib/features/`
- **Features**:
  - `sales analytics/` - Sales analytics dashboard and reports
  - `food analytics/` - Food analytics dashboard and reports
  - `customer analytics/` - Customer analytics dashboard and reports
  - `health/` - Health check pages

### Mock Server
- **Location**: `lib/mock_server/analytics_mock_server.dart`
- **Port**: 8009
- **Run Command**: `dart run lib/mock_server/analytics_mock_server.dart`

## API Endpoints

### Health Check
- `GET /health` - Service health status

### Sales Analytics
- `GET /sales` - Sales dashboard data
- `GET /sales/years` - Years with order data
- `GET /sales/months/{year}` - Months with order data for a year
- `GET /sales/payment-methods` - Payment methods
- `GET /sales/revenue/{year}/{month}` - Revenue for a period
- `GET /sales/comparison/{year}/{type}` - Sales comparison (yearly/monthly)
- `GET /sales/avg-meal/{year}/{month}` - Average meal per customer

### Food Analytics
- `GET /food` - Food dashboard data
- `GET /food/popular/{year}/{month}` - Popular meals
- `GET /food/performance/{year}/{month}/{type}` - Meal performance (best/worst)
- `GET /food/extras` - Common extras

### Customer Analytics
- `GET /customer` - Customer dashboard data
- `GET /customer/loyal` - Loyal customers
- `GET /customer/spending/{customerId}` - Customer spending
- `GET /customer/preferences/{customerId}` - Customer preferences

## Usage Examples

### Using Resource Clients

```dart
import 'package:dio/dio.dart';
import 'package:analytics_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/analytics_resource_clients.dart';

// Create Dio instance
final dio = Dio(BaseOptions(
  baseUrl: 'http://localhost:8009/v2/analytics-service-v12',
));

// Create serializers
final serializers = standardSerializers;

// Create resource clients
final salesClient = createSalesAnalyticsClient(dio, serializers);
final foodClient = createFoodAnalyticsClient(dio, serializers);
final customerClient = createCustomerAnalyticsClient(dio, serializers);

// Use the clients
final salesDashboard = await salesClient.getDashboard();
final popularMeals = await foodClient.getPopularMeals(2025, 1);
final loyalCustomers = await customerClient.getLoyalCustomers(limit: 10);
```

### Using in Riverpod Providers

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:analytics_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/analytics_resource_clients.dart';

// Dio provider
final dioProvider = Provider((ref) {
  return Dio(BaseOptions(
    baseUrl: 'http://localhost:8009/v2/analytics-service-v12',
  ));
});

// Sales analytics client provider
final salesAnalyticsClientProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);
  return createSalesAnalyticsClient(dio, standardSerializers);
});

// Sales dashboard provider
final salesDashboardProvider = FutureProvider((ref) async {
  final client = ref.watch(salesAnalyticsClientProvider);
  return await client.getDashboard();
});
```

## Testing

### Running Mock Server
```bash
# Start the mock server
dart run lib/mock_server/analytics_mock_server.dart

# Test health endpoint
curl http://localhost:8009/v2/analytics-service-v12/health

# Test sales dashboard
curl http://localhost:8009/v2/analytics-service-v12/sales

# Test food analytics
curl http://localhost:8009/v2/analytics-service-v12/food

# Test customer analytics
curl http://localhost:8009/v2/analytics-service-v12/customer
```

### Running Flutter App with Mock Server
```bash
# Terminal 1: Start mock server
dart run lib/mock_server/analytics_mock_server.dart

# Terminal 2: Run Flutter app
flutter run -d chrome --dart-define=ANALYTICS_API_URL=http://localhost:8009/v2/analytics-service-v12
```

## Navigation Routes

The analytics features are integrated into the admin shell with the following routes:

- `/analytics/sales` - Sales Analytics Dashboard
- `/analytics/food` - Food Analytics Dashboard
- `/analytics/customer` - Customer Analytics Dashboard
- `/analytics/health` - Analytics Service Health

## Data Models

### Sales Analytics
- `PaymentMode` - Payment method with count
- `RevenueShare` - Revenue data
- `SalesComparison` - Sales comparison data
- `AvgMeal` - Average meal per customer

### Food Analytics
- `MealPerformance` - Meal performance data
- `CommonExtra` - Common extras data

### Customer Analytics
- `LoyalCustomer` - Loyal customer data
- `CustomerSpending` - Customer spending data
- `CustomerPreference` - Customer preference data

## Authentication

All analytics endpoints (except `/health`) require JWT authentication:

```dart
dio.options.headers['Authorization'] = 'Bearer $jwtToken';
```

## Error Handling

All resource clients include error handling:

```dart
try {
  final data = await salesClient.getDashboard();
  // Handle success
} catch (e) {
  // Handle error
  print('Error: $e');
}
```

## Production Deployment

To switch from mock server to production:

1. Update the base URL in your Dio configuration:
```dart
final dio = Dio(BaseOptions(
  baseUrl: 'https://api.onefooddialer.com/v2/analytics-service-v12',
));
```

2. Ensure JWT token is included in all requests
3. Update environment variables or configuration files

## Maintenance

### Regenerating Client Code
If the OpenAPI spec changes:

```bash
# Regenerate the client
cd lib/client/analytics_client
openapi-generator-cli generate -i ../../../contract/analytics_openapi.yaml -g dart-dio -o .

# Update package name
sed -i '' 's/package:openapi/package:analytics_client/g' lib/**/*.dart

# Regenerate UI
cd lib/flutter-ui-codegen-pack-extended-fixed
dart run bin/generate.dart --spec ../../contract/analytics_openapi.yaml --out ../../lib/features
```

### Adding New Endpoints
1. Update `contract/analytics_openapi.yaml`
2. Regenerate client code
3. Update resource clients in `analytics_resource_clients.dart`
4. Regenerate UI views
5. Update mock server with new endpoints
6. Update this documentation

## Notes

- The analytics service provides read-only data
- All data is aggregated and anonymized
- Rate limiting: 200 requests per minute per user
- Data is cached for 5 minutes on the server side
- Mock server provides realistic test data for development

