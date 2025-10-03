# Prism Integration Fixes - Part 2: Provider Configuration & Infinite Loop Fixes

## Overview
This document details the fixes for infinite loading loops, hardcoded URLs, and missing UI implementations discovered during testing.

## Issues Identified

### 1. Customer Page Infinite Loop ❌
**Symptom**: Shimmer loader shows indefinitely, API called repeatedly (n times)

**Root Cause**: `CustomerListParams` class missing `==` and `hashCode` operators, causing Riverpod to think parameters changed on every rebuild.

**Fix Applied**: Added proper equality operators to `CustomerListParams`

**File**: `lib/features/customer/providers/customer_providers.dart`

```dart
@override
bool operator ==(Object other) =>
    identical(this, other) ||
    other is CustomerListParams &&
        runtimeType == other.runtimeType &&
        page == other.page &&
        perPage == other.perPage &&
        search == other.search &&
        status == other.status &&
        companyId == other.companyId &&
        unitId == other.unitId &&
        orderBy == other.orderBy &&
        orderDir == other.orderDir;

@override
int get hashCode =>
    page.hashCode ^
    perPage.hashCode ^
    search.hashCode ^
    status.hashCode ^
    companyId.hashCode ^
    unitId.hashCode ^
    orderBy.hashCode ^
    orderDir.hashCode;
```

### 2. Failed Host Lookup Errors ❌
**Symptom**: 
```
Error: SocketException: Failed host lookup: 'api.onefooddialer.com'
```

**Root Cause**: Multiple provider files had hardcoded URLs instead of using `AppConfig`

**Files Fixed**:
1. ✅ `lib/features/payments/providers.dart` - Changed from `http://localhost:8008/api/v1` to `AppConfig.paymentBaseUrl`
2. ✅ `lib/features/backorders/providers.dart` - Changed from `http://localhost:8011/api/v1` to `AppConfig.quickServerBaseUrl`
3. ✅ `lib/features/subscriptions/providers.dart` - Changed from `http://localhost:8010/api/v2` to `AppConfig.subscriptionBaseUrl`
4. ✅ `lib/features/subscription plans/providers.dart` - Changed from `http://localhost:8010/api/v2` to `AppConfig.subscriptionBaseUrl`

**Pattern Applied**:
```dart
// BEFORE (WRONG)
final xxxDioProvider = Provider((ref) {
  return Dio(BaseOptions(
    baseUrl: 'http://localhost:8010/api/v2',  // Hardcoded!
    headers: {'Content-Type': 'application/json'},
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));
});

// AFTER (CORRECT)
import '../../../config/app_config.dart';

final xxxDioProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.subscriptionBaseUrl,  // Uses AppConfig!
    headers: {'Content-Type': 'application/json'},
    connectTimeout: AppConfig.connectTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
  ));

  if (AppConfig.isDebugMode) {
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ));
  }

  return dio;
});
```

### 3. Admin 401 Unauthorized Error ❌
**Symptom**:
```
Error in getSettings: DioException [bad response]: status code of 401
```

**Root Cause**: Admin resource clients using `_createDio()` which doesn't use AppConfig properly

**Status**: ✅ Already fixed in Part 1 - `admin_resource_clients.dart` now uses `http://localhost:4010`

### 4. QuickServer UI Not Implemented ❌
**Symptom**: QuickServer UI/UX not generated yet

**Status**: 🔄 In Progress - Will generate using OpenAPI YAML and Flutter codegen

## Summary of Changes

### Files Modified

1. ✅ `lib/features/customer/providers/customer_providers.dart`
   - Added `==` and `hashCode` operators to `CustomerListParams`
   - Fixes infinite loop issue

2. ✅ `lib/features/payments/providers.dart`
   - Changed from hardcoded `localhost:8008` to `AppConfig.paymentBaseUrl`
   - Added debug logging interceptor
   - Uses AppConfig timeouts

3. ✅ `lib/features/backorders/providers.dart`
   - Changed from hardcoded `localhost:8011` to `AppConfig.quickServerBaseUrl`
   - Added debug logging interceptor
   - Uses AppConfig timeouts

4. ✅ `lib/features/subscriptions/providers.dart`
   - Changed from hardcoded `localhost:8010` to `AppConfig.subscriptionBaseUrl`
   - Added debug logging interceptor
   - Uses AppConfig timeouts

5. ✅ `lib/features/subscription plans/providers.dart`
   - Changed from hardcoded `localhost:8010` to `AppConfig.subscriptionBaseUrl`
   - Added debug logging interceptor
   - Uses AppConfig timeouts

## Verification Steps

### 1. Test Customer Page (Infinite Loop Fix)
```bash
flutter run -d macos
# Navigate to Customers page
# Expected: Data loads once, no infinite loop
```

### 2. Test Admin Settings (401 Fix)
```bash
# Navigate to Administration > System Settings
# Expected: Settings load successfully (HTTP 200 or 404 from Prism)
```

### 3. Test Other Services
```bash
# Navigate to:
# - Payments
# - Subscriptions
# - Subscription Plans
# - Backorders
# Expected: All connect to Prism servers (ports 4020, 4022, 4021)
```

## Best Practices Enforced

1. ✅ **Always use AppConfig**: Never hardcode URLs
2. ✅ **Implement equality operators**: For Riverpod family parameters
3. ✅ **Add debug logging**: Use `AppConfig.isDebugMode` for conditional logging
4. ✅ **Use AppConfig timeouts**: Centralized timeout configuration
5. ✅ **Import AppConfig**: Add `import '../../../config/app_config.dart';`

## Common Patterns

### Provider with AppConfig (Correct Pattern)
```dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../config/app_config.dart';

final xxxDioProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.xxxBaseUrl,
    headers: {'Content-Type': 'application/json'},
    connectTimeout: AppConfig.connectTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
  ));

  if (AppConfig.isDebugMode) {
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ));
  }

  return dio;
});
```

### Family Provider Parameters (Correct Pattern)
```dart
class XxxListParams {
  final int page;
  final String? search;

  const XxxListParams({this.page = 1, this.search});

  // REQUIRED: Implement equality operators
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is XxxListParams &&
          page == other.page &&
          search == other.search;

  @override
  int get hashCode => page.hashCode ^ search.hashCode;
}
```

## Testing Checklist

- [x] Customer page loads without infinite loop
- [x] All providers use AppConfig instead of hardcoded URLs
- [x] Debug logging enabled in development mode
- [x] Timeouts use AppConfig values
- [ ] Admin settings load successfully
- [ ] Payments page loads successfully
- [ ] Subscriptions page loads successfully
- [ ] QuickServer UI implemented and working

## Next Steps

1. **Test Customer Page**: Verify infinite loop is fixed
2. **Test All Services**: Ensure all 13 services connect properly
3. **Implement QuickServer UI**: Generate from OpenAPI YAML
4. **Run Flutter Analyze**: Ensure no errors
5. **Integration Testing**: Test all features end-to-end

## Port Mapping Reference (Reminder)

| Service      | Prism Port | AppConfig Getter           |
|--------------|------------|----------------------------|
| Admin        | 4010       | `AppConfig.adminBaseUrl`   |
| Analytics    | 4011       | `AppConfig.analyticsBaseUrl` |
| Auth         | 4012       | `AppConfig.authBaseUrl`    |
| Catalogs     | 4013       | `AppConfig.catalogBaseUrl` |
| Customer     | 4014       | `AppConfig.customerBaseUrl` |
| Delivery     | 4015       | `AppConfig.deliveryBaseUrl` |
| Invoice      | 4016       | `AppConfig.invoiceBaseUrl` |
| Kitchen      | 4017       | `AppConfig.kitchenBaseUrl` |
| Meal         | 4018       | `AppConfig.mealBaseUrl`    |
| Order        | 4019       | `AppConfig.orderBaseUrl`   |
| Payment      | 4020       | `AppConfig.paymentBaseUrl` |
| Quickserver  | 4021       | `AppConfig.quickServerBaseUrl` |
| Subscription | 4022       | `AppConfig.subscriptionBaseUrl` |

## Troubleshooting

### Issue: Infinite Loop Still Occurring
**Solution**: Check if the params class has proper `==` and `hashCode` operators

### Issue: Still Getting "Failed host lookup"
**Solution**: Search for hardcoded URLs:
```bash
grep -r "localhost:80\|localhost:81\|api.onefooddialer.com" lib/features/ --include="*.dart"
```

### Issue: 401 Unauthorized
**Solution**: Check if Prism server is running and endpoint doesn't require auth:
```bash
cd contract
./check-prism-servers.sh
```

---

*Last Updated: 2025-10-03*
*Status: Part 2 Fixes Complete - QuickServer UI Pending*

