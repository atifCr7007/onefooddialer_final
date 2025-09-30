# Microservice Integration Template

This template provides a step-by-step guide for integrating any microservice into the OneFoodDialer 2025 admin dashboard. Follow this checklist for consistent, production-ready integrations.

## 📋 Pre-Integration Checklist

- [ ] Microservice client SDK exists in `/lib/client/{service}_client`
- [ ] OpenAPI spec exists in `/contract/{service}_openapi.yaml`
- [ ] Reference implementations reviewed (customer, delivery)
- [ ] Estimated time allocated (~20 minutes per service)

---

## Phase 1: Fix Package Configuration (5 min)

### Step 1.1: Fix Package Name
- [ ] Open `/lib/client/{service}_client/pubspec.yaml`
- [ ] Change `name: openapi` to `name: {service}_client`
- [ ] Update description to match service

**Example:**
```yaml
name: payment_client
version: 1.0.0
description: Payment API client for OneFoodDialer
```

### Step 1.2: Fix Import Statements
- [ ] Run command to replace all imports:
```bash
grep -rl "package:openapi/" lib/client/{service}_client | xargs sed -i '' 's/package:openapi\//package:{service}_client\//g'
```
- [ ] Verify changes applied correctly

### Step 1.3: Rename Main Export File
- [ ] Rename `/lib/client/{service}_client/lib/openapi.dart` to `{service}_client.dart`
```bash
mv lib/client/{service}_client/lib/openapi.dart lib/client/{service}_client/lib/{service}_client.dart
```

---

## Phase 2: Read and Understand the API (CRITICAL - 5 min)

### Step 2.1: Read ALL API Classes
- [ ] Open `/lib/client/{service}_client/lib/src/api/` directory
- [ ] Read EVERY API class file
- [ ] Document for EACH method:
  - Method name
  - Parameter names and types (especially ID types: int vs String)
  - Return type
  - Required vs optional parameters

**Template for documentation:**
```
API: {ApiName}
Method: {methodName}
Parameters:
  - {paramName}: {type} (required/optional)
  - ...
Returns: {ReturnType}
```

### Step 2.2: Read ALL Model Classes
- [ ] Open `/lib/client/{service}_client/lib/src/model/` directory
- [ ] For each model used in API methods, document:
  - Model name
  - All field names (property names, NOT wire names)
  - Field types
  - Required vs optional fields

**Template for documentation:**
```
Model: {ModelName}
Fields:
  - {fieldName}: {type} (required/optional) - wire: {wireName}
  - ...
```

### Step 2.3: Verify Critical Details
- [ ] **ID Types**: Are IDs `int` or `String`?
- [ ] **Field Names**: What are the actual property names (not wire names)?
- [ ] **Method Existence**: Which methods actually exist in the API?
- [ ] **Parameter Names**: Exact parameter names (e.g., `id` vs `customerId` vs `orderId`)

**⚠️ CRITICAL: Do NOT assume anything. Verify EVERYTHING by reading the actual generated code.**

---

## Phase 3: Create Resource Client (5 min)

### Step 3.1: Add Dependency
- [ ] Add to `/lib/flutter-ui-codegen-pack-extended-fixed/pubspec.yaml`:
```yaml
dependencies:
  {service}_client:
    path: ../client/{service}_client
```

### Step 3.2: Create Resource Client File
- [ ] Create `/lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/{service}_resource_clients.dart`
- [ ] Follow this structure:

```dart
import 'package:dio/dio.dart';
import 'package:{service}_client/{service}_client.dart';
import 'package:built_value/serializer.dart';

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
  
  // Add other pagination helpers as needed
}

/// {Service} Resource Client
/// Handles {service} operations
class {Service}ResourceClient {
  final Dio http;
  final {Service}Api api;

  {Service}ResourceClient(this.http, this.api);

  /// List items with optional filters
  Future<dynamic> list({/* parameters based on actual API */}) async {
    try {
      final response = await api.{actualMethodName}(/* actual parameters */);
      return response.data;
    } catch (e) {
      print('Error in list {service}: $e');
      rethrow;
    }
  }

  // Add other methods based on actual API
}

/// Factory function for creating resource client
{Service}ResourceClient create{Service}Client(Dio dio, Serializers serializers) {
  final api = {Service}Api(dio, serializers);
  return {Service}ResourceClient(dio, api);
}
```

### Step 3.3: Implement Methods
- [ ] For EACH API method, create a corresponding resource client method
- [ ] Use EXACT parameter types from API (int vs String for IDs)
- [ ] Use EXACT field names from models
- [ ] Support flexible field name mapping (snake_case, camelCase, etc.)
- [ ] Add proper error handling

**Example:**
```dart
Future<dynamic> create(Map<String, dynamic> data) async {
  try {
    final request = {Model}Create((b) => b
      ..{actualFieldName} = data['{field}'] ?? data['{field_snake}'] ?? data['{fieldCamel}']
      // Support multiple naming conventions
    );
    final response = await api.{actualMethodName}({actualParamName}: request);
    return response.data;
  } catch (e) {
    print('Error in create {service}: $e');
    rethrow;
  }
}
```

---

## Phase 4: Create Providers (3 min)

### Step 4.1: Create Providers Directory
```bash
mkdir -p lib/features/{service}/providers
```

### Step 4.2: Create Providers File
- [ ] Create `/lib/features/{service}/providers/{service}_providers.dart`
- [ ] Follow this structure:

```dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{service}_client/{service}_client.dart';
import 'package:food_one/flutter-ui-codegen-pack-extended-fixed/lib/shared/{service}_resource_clients.dart';
import 'package:built_value/serializer.dart';

// Dio provider
final {service}DioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseURL: 'https://api.onefooddialer.com/v2/{service}',
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));
  
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
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
final {service}ListProvider = FutureProvider.family<dynamic, {ParamsType}>((ref, params) async {
  final client = ref.watch({service}ClientProvider);
  return await client.list(/* params */);
});

// Detail provider (if needed)
final {service}DetailProvider = FutureProvider.family<dynamic, {IdType}>((ref, id) async {
  final client = ref.watch({service}ClientProvider);
  return await client.get(id);
});

// Action providers (create, update, delete)
final {service}CreateProvider = Provider<Future<dynamic> Function(Map<String, dynamic>)>((ref) {
  return (data) async {
    final client = ref.read({service}ClientProvider);
    final result = await client.create(data);
    ref.invalidate({service}ListProvider);
    return result;
  };
});

// Add more action providers as needed
```

---

## Phase 5: Create UI Page (5 min)

### Step 5.1: Create Page File
- [ ] Create `/lib/features/{service}/{service}_page.dart`
- [ ] Follow the pattern from `deliveries_page.dart` or `customers_page.dart`
- [ ] Include:
  - Filters (if applicable)
  - Search (if applicable)
  - List view with proper data extraction
  - Loading state (Shimmer skeleton)
  - Empty state
  - Error state with retry
  - Action buttons/menu

### Step 5.2: Update Router
- [ ] Open `/lib/admin/router/admin_router.dart`
- [ ] Add import:
```dart
import '../../features/{service}/{service}_page.dart';
```
- [ ] Update route:
```dart
GoRoute(
  path: '/features/{service}',
  builder: (context, state) => const {Service}Page(),
),
```

---

## Phase 6: Create Mock Server (5 min)

### Step 6.1: Create Mock Server File
- [ ] Create `/lib/mock_server/{service}_mock_server.dart`
- [ ] Follow pattern from `delivery_mock_server.dart`
- [ ] Include:
  - All API endpoints
  - CORS support
  - Sample data
  - Proper response formats
  - Error handling
- [ ] Use unique port (8003, 8004, etc.)

### Step 6.2: Document Endpoints
- [ ] Add clear documentation at the top of the file
- [ ] List all endpoints with method and path
- [ ] Include example requests/responses

---

## Phase 7: Add Dependencies (2 min)

### Step 7.1: Update Root pubspec.yaml
- [ ] Add to `/pubspec.yaml`:
```yaml
dependencies:
  {service}_client:
    path: lib/client/{service}_client
```

### Step 7.2: Run pub get
```bash
flutter pub get
```

---

## Phase 8: Quality Assurance (5 min)

### Step 8.1: Run Flutter Analyze
```bash
flutter analyze --no-fatal-infos
```
- [ ] **Must have 0 errors**
- [ ] Fix any critical warnings
- [ ] Document remaining warnings

### Step 8.2: Type Safety Check
- [ ] All ID parameters use correct type (int vs String)
- [ ] All model field names match generated models
- [ ] All API method signatures verified
- [ ] No unnecessary type casting

### Step 8.3: State Management Check
- [ ] AsyncValue used for loading/error states
- [ ] Proper cache invalidation
- [ ] Error handling with try-catch
- [ ] Loading states implemented
- [ ] Empty states implemented
- [ ] Error states with retry

### Step 8.4: Test with Mock Server
- [ ] Start mock server
- [ ] Update provider base URL to mock server
- [ ] Run app and test all features
- [ ] Verify data displays correctly
- [ ] Test filters and search
- [ ] Test actions

---

## Phase 9: Documentation (3 min)

### Step 9.1: Create Integration Summary
- [ ] Create `{SERVICE}_INTEGRATION_SUMMARY.md`
- [ ] Follow template from `DELIVERY_INTEGRATION_SUMMARY.md`
- [ ] Include:
  - What was implemented
  - API method signatures
  - Model field names
  - Files created/modified
  - QA results
  - Next steps

---

## ✅ Final Checklist

- [ ] Package name is `{service}_client`
- [ ] All imports use `package:{service}_client/`
- [ ] Resource client created with correct types
- [ ] Providers created with proper state management
- [ ] UI page created and integrated
- [ ] Mock server created and tested
- [ ] `flutter analyze` shows 0 errors
- [ ] No language version override errors
- [ ] All null safety handled
- [ ] Proper error handling throughout
- [ ] Documentation complete

---

## 🎯 Success Criteria

**Must Have:**
- ✅ 0 errors in flutter analyze
- ✅ All ID types correct (verified from API)
- ✅ All field names correct (verified from models)
- ✅ All methods exist in API (verified)
- ✅ Proper state management (AsyncValue)
- ✅ Error handling everywhere
- ✅ Loading/empty/error states
- ✅ Mock server working
- ✅ Documentation complete

**Nice to Have:**
- ✅ Pagination implemented
- ✅ Filters implemented
- ✅ Search implemented
- ✅ Actions implemented
- ✅ Responsive design
- ✅ Accessibility

---

## ⚠️ Common Pitfalls to Avoid

1. **Assuming ID Types** - Always verify from actual API (int vs String)
2. **Assuming Field Names** - Always check actual model definitions
3. **Adding Non-existent Methods** - Only implement methods that exist in API
4. **Wrong Parameter Names** - Use exact parameter names from API
5. **Skipping API Reading** - ALWAYS read the actual generated code first
6. **Type Casting** - If you need type casting, your types are wrong
7. **Hardcoding Field Names** - Support multiple naming conventions
8. **Forgetting Error Handling** - Every async operation needs try-catch
9. **No Loading States** - Users need feedback during async operations
10. **No Empty States** - Handle empty data gracefully

---

## 📚 Reference Implementations

- **Customer Microservice** - `/lib/features/customer/` - Full CRUD example
- **Delivery Microservice** - `/lib/features/delivery/` - Multiple resource clients
- **Customer Resource Client** - Best practices for type safety
- **Delivery Resource Client** - Multiple API integration

---

## ⏱️ Estimated Time

- Phase 1: 5 minutes (package configuration)
- Phase 2: 5 minutes (read and understand API)
- Phase 3: 5 minutes (resource client)
- Phase 4: 3 minutes (providers)
- Phase 5: 5 minutes (UI page)
- Phase 6: 5 minutes (mock server)
- Phase 7: 2 minutes (dependencies)
- Phase 8: 5 minutes (QA)
- Phase 9: 3 minutes (documentation)

**Total: ~38 minutes per microservice** (with proper API reading)

---

**Remember: Quality over speed. Take time to verify types and field names. Rushing will cause cascading fixes later.**

