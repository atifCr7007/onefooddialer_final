# Customer Microservice Integration Guide

## Overview
This document provides a comprehensive guide for integrating microservices into the OneFoodDialer 2025 admin dashboard, using the Customer microservice as a reference implementation.

## Table of Contents
1. [Prerequisites](#prerequisites)
2. [Resource Client Creation](#resource-client-creation)
3. [UI Generation](#ui-generation)
4. [Provider Setup](#provider-setup)
5. [Page Implementation](#page-implementation)
6. [Router Integration](#router-integration)
7. [Mock Server Setup](#mock-server-setup)
8. [Testing](#testing)
9. [Deployment](#deployment)

## Prerequisites

### Required Files
- OpenAPI specification in `contract/{service}_openapi.yaml`
- Generated client SDK in `lib/client/{service}_client/`
- Code generator at `lib/flutter-ui-codegen-pack-extended-fixed/bin/generate.dart`

### Required Dependencies
```yaml
dependencies:
  flutter_riverpod: ^2.6.1
  dio: ^5.9.0
  shimmer: ^3.0.0
  flutter_form_builder: ^10.2.0
  form_builder_validators: ^11.2.0
  go_router: ^14.2.0
```

## Resource Client Creation

### Step 1: Create Resource Client File
Create `lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/{service}_resource_clients.dart`

### Step 2: Implement Resource Client Pattern
```dart
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:{service}_client/openapi.dart';

/// Paginator utility for handling paginated responses
class {Service}Paginator {
  static List items(dynamic payload) {
    if (payload is Map) return (payload['data'] ?? payload['items'] ?? []) as List;
    if (payload is List) return payload;
    return [];
  }

  static int total(dynamic payload) {
    if (payload is Map) return (payload['meta']?['total'] ?? payload['total'] ?? 0) as int;
    return 0;
  }
}

/// {Service} Resource Client
class {Service}ResourceClient {
  final Dio http;
  final {Service}Api api;

  {Service}ResourceClient(this.http, this.api);

  Future<dynamic> list({/* params */}) async {
    try {
      final response = await api.getItems(/* params */);
      return response.data;
    } catch (e) {
      print('Error in list: $e');
      rethrow;
    }
  }

  Future<dynamic> get(String id) async {
    try {
      final response = await api.getItemById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get: $e');
      rethrow;
    }
  }

  Future<dynamic> create(Map<String, dynamic> data) async {
    try {
      final request = {Service}Create((b) => b
        ..field1 = data['field1']
        ..field2 = data['field2']
      );
      final response = await api.createItem(request: request);
      return response.data;
    } catch (e) {
      print('Error in create: $e');
      rethrow;
    }
  }

  Future<dynamic> update(String id, Map<String, dynamic> data) async {
    try {
      final request = {Service}Update((b) {
        if (data.containsKey('field1')) b.field1 = data['field1'];
        if (data.containsKey('field2')) b.field2 = data['field2'];
      });
      final response = await api.updateItem(id: id, request: request);
      return response.data;
    } catch (e) {
      print('Error in update: $e');
      rethrow;
    }
  }

  Future<dynamic> remove(String id) async {
    try {
      final response = await api.deleteItem(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete: $e');
      rethrow;
    }
  }
}

/// Factory function
{Service}ResourceClient create{Service}Client(Dio dio, Serializers serializers) {
  final api = {Service}Api(dio, serializers);
  return {Service}ResourceClient(dio, api);
}
```

## UI Generation

### Step 1: Run Code Generator
```bash
cd lib/flutter-ui-codegen-pack-extended-fixed
dart run bin/generate.dart --spec ../../contract/{service}_openapi.yaml --out ../../lib/features
```

### Step 2: Verify Generated Files
Check that the following files were created:
- `lib/features/{service}/providers.dart`
- `lib/features/{service}/list_page.dart`
- `lib/features/{service}/details_page.dart`
- `lib/features/{service}/form_page.dart`

## Provider Setup

### Step 1: Create Provider File
Create `lib/features/{service}/providers/{service}_providers.dart`

### Step 2: Implement Providers
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:{service}_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/{service}_resource_clients.dart';

// Dio provider
final {service}DioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: const String.fromEnvironment(
      '{SERVICE}_API_URL',
      defaultValue: 'https://api.onefooddialer.com/v2/{service}-service',
    ),
    headers: {
      'Authorization': 'Bearer ${const String.fromEnvironment('JWT_TOKEN', defaultValue: 'test-token')}',
      'Content-Type': 'application/json',
    },
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ));
  return dio;
});

// Serializers provider
final {service}SerializersProvider = Provider<Serializers>((ref) {
  return standardSerializers;
});

// Resource client provider
final {service}ClientProvider = Provider<{Service}ResourceClient>((ref) {
  final dio = ref.watch({service}DioProvider);
  final serializers = ref.watch({service}SerializersProvider);
  return create{Service}Client(dio, serializers);
});

// List provider
final {service}ListProvider = FutureProvider.family<dynamic, Map<String, dynamic>>((ref, params) async {
  final client = ref.watch({service}ClientProvider);
  return await client.list(/* extract params */);
});

// Detail provider
final {service}DetailProvider = FutureProvider.family<dynamic, String>((ref, id) async {
  final client = ref.watch({service}ClientProvider);
  return await client.get(id);
});

// Action providers
final {service}CreateProvider = Provider<Future<dynamic> Function(Map<String, dynamic>)>((ref) {
  return (data) async {
    final client = ref.read({service}ClientProvider);
    final result = await client.create(data);
    ref.invalidate({service}ListProvider);
    return result;
  };
});

final {service}UpdateProvider = Provider<Future<dynamic> Function(String, Map<String, dynamic>)>((ref) {
  return (id, data) async {
    final client = ref.read({service}ClientProvider);
    final result = await client.update(id, data);
    ref.invalidate({service}ListProvider);
    ref.invalidate({service}DetailProvider(id));
    return result;
  };
});

final {service}DeleteProvider = Provider<Future<dynamic> Function(String)>((ref) {
  return (id) async {
    final client = ref.read({service}ClientProvider);
    final result = await client.remove(id);
    ref.invalidate({service}ListProvider);
    return result;
  };
});
```

## Page Implementation

### Enhanced List Page Features
- ✅ Shimmer loading skeleton
- ✅ Empty state with helpful message
- ✅ Error state with retry button
- ✅ Search with debouncing
- ✅ Filter chips
- ✅ Pagination controls
- ✅ Bulk selection
- ✅ Status chips
- ✅ Action buttons (view, edit, delete)
- ✅ Responsive design

### Enhanced Details Page Features
- ✅ Shimmer loading skeleton
- ✅ Error state with retry
- ✅ Formatted field display
- ✅ Action buttons in header
- ✅ Card-based layout

### Enhanced Form Page Features
- ✅ Inline validation
- ✅ Loading state on submit
- ✅ Success/error feedback
- ✅ Cancel button
- ✅ Field-specific icons
- ✅ Proper keyboard types

## Router Integration

### Step 1: Import Page
```dart
import '../../features/{service}/{service}_page.dart';
```

### Step 2: Add Route
```dart
GoRoute(
  path: '/features/{service}',
  builder: (context, state) => const {Service}Page(),
),
```

### Step 3: Verify Navigation
Check that the service appears in `lib/admin/providers/navigation_provider.dart`

## Mock Server Setup

### Step 1: Create Mock Server
Create `lib/mock_server/{service}_mock_server.dart`

### Step 2: Implement Endpoints
```dart
import 'dart:convert';
import 'dart:io';

void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 8001);
  print('🚀 {Service} Mock Server running on http://localhost:8001');
  
  await for (HttpRequest request in server) {
    _handleRequest(request);
  }
}

void _handleRequest(HttpRequest request) {
  // Add CORS headers
  request.response.headers.add('Access-Control-Allow-Origin', '*');
  request.response.headers.add('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
  request.response.headers.add('Access-Control-Allow-Headers', 'Origin, Content-Type, Authorization');
  
  if (request.method == 'OPTIONS') {
    request.response.statusCode = 200;
    request.response.close();
    return;
  }
  
  // Handle routes
  // ...
}
```

### Step 3: Run Mock Server
```bash
dart run lib/mock_server/{service}_mock_server.dart
```

## Testing

### Manual Testing Checklist
- [ ] List page loads with mock data
- [ ] Search filters results correctly
- [ ] Filter chips work
- [ ] Pagination works
- [ ] Create action opens form
- [ ] Edit action opens form with data
- [ ] Delete action shows confirmation
- [ ] Details page displays data
- [ ] Loading states show shimmer
- [ ] Empty states show helpful message
- [ ] Error states show retry button
- [ ] Responsive on mobile, tablet, desktop

### Run Flutter Analyze
```bash
flutter analyze
```

Expected output: `No issues found!`

### Test with Mock Server
```bash
# Terminal 1: Start mock server
dart run lib/mock_server/{service}_mock_server.dart

# Terminal 2: Run app with mock server
flutter run -d chrome -t lib/admin_main.dart \
  --dart-define={SERVICE}_API_URL=http://localhost:8001/v2/{service}-service \
  --dart-define=JWT_TOKEN=test-token
```

## Deployment

### Environment Variables
```bash
# Development
{SERVICE}_API_URL=http://localhost:8001/v2/{service}-service
JWT_TOKEN=dev-token

# Staging
{SERVICE}_API_URL=https://staging-api.onefooddialer.com/v2/{service}-service
JWT_TOKEN=staging-token

# Production
{SERVICE}_API_URL=https://api.onefooddialer.com/v2/{service}-service
JWT_TOKEN=production-token
```

### Build Commands
```bash
# Web
flutter build web --dart-define={SERVICE}_API_URL=$API_URL --dart-define=JWT_TOKEN=$TOKEN

# Android
flutter build apk --dart-define={SERVICE}_API_URL=$API_URL --dart-define=JWT_TOKEN=$TOKEN

# iOS
flutter build ios --dart-define={SERVICE}_API_URL=$API_URL --dart-define=JWT_TOKEN=$TOKEN
```

## Best Practices

### 1. Error Handling
- Always wrap API calls in try-catch
- Show user-friendly error messages
- Log technical details for debugging
- Provide retry mechanisms

### 2. State Management
- Use Riverpod providers for all state
- Invalidate cache after mutations
- Use family providers for parameterized queries
- Implement optimistic updates where appropriate

### 3. UI/UX
- Follow Material Design 3 guidelines
- Ensure WCAG 2.1 AA accessibility
- Test on multiple screen sizes
- Use semantic labels for screen readers

### 4. Performance
- Implement pagination for large lists
- Use lazy loading where possible
- Debounce search inputs (300ms)
- Cache API responses appropriately

## Troubleshooting

### Issue: Generated files have import errors
**Solution**: Update imports to use package imports instead of relative imports

### Issue: API calls fail with CORS errors
**Solution**: Ensure mock server includes proper CORS headers

### Issue: Shimmer package not found
**Solution**: Run `flutter pub get` to install dependencies

### Issue: Provider not found errors
**Solution**: Ensure ProviderScope wraps the app in main.dart

## Next Steps

After completing customer integration, follow the same pattern for:
1. Kitchen Service
2. Payment Service
3. Delivery Service
4. Order Service
5. Menu Service
6. Notification Service
7. Analytics Service
8. Reporting Service
9. Settings Service
10. Audit Service

Each service should follow this exact pattern for consistency and maintainability.

