# OneFoodDialer Mock Servers

This directory contains mock servers for all OneFoodDialer microservices. These servers provide sample data for development and testing without requiring actual backend services.

## 🚀 Quick Start

### Start All Mock Servers

```bash
# Kill any existing mock servers first
bash lib/mock_server/kill_all_mocks.sh

# Start all mock servers
dart run lib/mock_server/start_all_mocks.dart
```

### Start Individual Mock Server

```bash
# Example: Start only the customer mock server
dart run lib/mock_server/customer_mock_server.dart
```

## 📋 Available Mock Servers

| Service | Port | Base Path | Description |
|---------|------|-----------|-------------|
| Auth | 8012 | `/api/v1` | Authentication and authorization |
| Customer | 8001 | `/api/v2` | Customer management |
| Order | 8002 | `/api/v2` | Order processing |
| Meal | 8003 | `/api/v2` | Meal and menu management |
| Payment | 8004 | `/api/v1` | Payment processing |
| Catalogs | 8005 | `/api/v2` | Product catalog |
| Kitchen | 8006 | `/api/v2` | Kitchen operations |
| Delivery | 8007 | `/api/v2` | Delivery management |
| Analytics | 8008 | `/api/v2` | Analytics and reporting |
| Admin | 8009 | `/api/v2` | Admin operations |
| Subscription | 8010 | `/api/v2` | Subscription management |
| QuickServer | 8011 | `/api/v1` | Quick service operations |

## 🔧 Configuration

The Flutter app automatically uses mock servers when `AppConfig.useMockServers` is `true` (default for development).

To switch between mock and production:

```dart
// In lib/config/app_config.dart
static const bool useMockServers = true; // Use mock servers
// OR
static const bool useMockServers = false; // Use production servers
```

## 📝 Console Logging

All mock servers log requests and responses to the console:

```
🔵 [Customer API] GET /api/v2/customers
🔵 [Customer API] Response: 200 OK
🔵 [Payment API] POST /api/v1/payments
🔵 [Payment API] Response: 201 Created
```

The Flutter app also logs API calls when in debug mode:

```dart
if (AppConfig.isDebugMode) {
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
    error: true,
    logPrint: (obj) => print('🔵 [Service API] $obj'),
  ));
}
```

## 🛠️ Troubleshooting

### Port Already in Use

If you see "Address already in use" errors:

```bash
# Kill all mock servers
bash lib/mock_server/kill_all_mocks.sh

# Then restart
dart run lib/mock_server/start_all_mocks.dart
```

### Connection Errors in Flutter App

If you see "Failed host lookup" errors:

1. Ensure mock servers are running
2. Check `AppConfig.useMockServers` is `true`
3. Verify the correct port in `AppConfig`

### No Data Showing

1. Check console logs for API requests
2. Verify mock server is returning data
3. Check provider configuration uses `AppConfig` base URLs

## 📦 Sample Data

Each mock server includes sample data:

- **Customer**: 5 sample customers
- **Order**: 10 sample orders
- **Payment**: 3 sample payments, 3 payment methods
- **Delivery**: 8 sample deliveries
- **Meal**: 6 sample meals
- **Catalogs**: 8 sample products
- **Subscription**: 5 sample subscriptions, 3 plans
- **Admin**: 5 sample users, 3 roles

## 🔄 Adding New Endpoints

To add a new endpoint to a mock server:

1. Open the relevant mock server file (e.g., `customer_mock_server.dart`)
2. Add the route handler in `_handleRequest()`
3. Create the handler function with sample data
4. Test with the Flutter app

Example:

```dart
void _handleRequest(HttpRequest request) {
  final path = request.uri.path;
  final method = request.method;

  if (path == '/api/v2/customers' && method == 'GET') {
    _getAllCustomers(request);
  } else if (path.startsWith('/api/v2/customers/') && method == 'GET') {
    final id = int.tryParse(path.split('/').last);
    _getCustomer(request, id!);
  }
  // ... more routes
}

void _getAllCustomers(HttpRequest request) {
  final response = {
    'success': true,
    'data': _mockCustomers,
  };
  _sendJson(request, response);
}
```

## 🎯 Best Practices

1. **Always use AppConfig** for base URLs in providers
2. **Enable logging** in debug mode for troubleshooting
3. **Kill existing servers** before starting new ones
4. **Check console logs** for request/response data
5. **Use realistic sample data** that matches production structure

## 📚 Related Files

- `lib/config/app_config.dart` - Configuration for mock vs production
- `lib/features/*/providers.dart` - Service providers using mock servers
- `lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/*_resource_clients.dart` - Resource clients

## 🐛 Known Issues

1. **QuickServer client** needs regeneration (language version error)
2. **Some routes** may need URL encoding for spaces
3. **CORS** is enabled for all origins (development only)

## 📞 Support

For issues or questions:
1. Check console logs for errors
2. Verify mock servers are running
3. Check provider configuration
4. Review this README

