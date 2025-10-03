# Prism Mock Server Integration Fixes

## Overview
This document details all the fixes applied to integrate Prism mock servers with the OneFoodDialer Flutter application.

## Problem Statement
The Flutter app was unable to connect to the Prism mock servers due to port mismatches and authentication configuration issues.

### Error Encountered
```
flutter: 🔐 Attempting login to: http://localhost:8012
flutter: ❌ DioException in login:
flutter:    Type: DioExceptionType.connectionError
flutter:    Message: Connection refused
```

## Root Causes Identified

### 1. Port Mismatch
**Issue**: The app configuration was using ports 8001-8012, but Prism servers were running on ports 4010-4022.

**Files Affected**:
- `lib/config/app_config.dart`
- `lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/admin_resource_clients.dart`

### 2. Missing Invoice Service Configuration
**Issue**: The Invoice service (running on port 4016) was not configured in `app_config.dart`.

### 3. Auth OpenAPI Security Configuration
**Issue**: The auth_openapi.yaml had a global security requirement that was blocking public endpoints like `/auth/login`.

## Fixes Applied

### Fix 1: Updated Port Configuration in app_config.dart

**Changed From** (Old Ports):
```dart
static const String mockAuthUrl = 'http://localhost:8012';
static const String mockCustomerUrl = 'http://localhost:8001';
static const String mockOrderUrl = 'http://localhost:8002';
static const String mockMealUrl = 'http://localhost:8003';
static const String mockPaymentUrl = 'http://localhost:8004';
static const String mockCatalogUrl = 'http://localhost:8005';
static const String mockQuickServerUrl = 'http://localhost:8011';
static const String mockSubscriptionUrl = 'http://localhost:8010';
static const String mockKitchenUrl = 'http://localhost:8006';
static const String mockDeliveryUrl = 'http://localhost:8007';
static const String mockAnalyticsUrl = 'http://localhost:8008';
static const String mockAdminUrl = 'http://localhost:8009';
```

**Changed To** (Prism Ports):
```dart
static const String mockAdminUrl = 'http://localhost:4010';
static const String mockAnalyticsUrl = 'http://localhost:4011';
static const String mockAuthUrl = 'http://localhost:4012';
static const String mockCatalogUrl = 'http://localhost:4013';
static const String mockCustomerUrl = 'http://localhost:4014';
static const String mockDeliveryUrl = 'http://localhost:4015';
static const String mockInvoiceUrl = 'http://localhost:4016';  // NEW
static const String mockKitchenUrl = 'http://localhost:4017';
static const String mockMealUrl = 'http://localhost:4018';
static const String mockOrderUrl = 'http://localhost:4019';
static const String mockPaymentUrl = 'http://localhost:4020';
static const String mockQuickServerUrl = 'http://localhost:4021';
static const String mockSubscriptionUrl = 'http://localhost:4022';
```

### Fix 2: Added Invoice Service Configuration

**Added to app_config.dart**:
```dart
// Production URL
static const String productionInvoiceUrl = String.fromEnvironment(
  'PROD_INVOICE_URL',
  defaultValue: 'https://api.onefood.com/v2/invoice-service-v12',
);

// Getter
static String get invoiceBaseUrl => useMockServers ? mockInvoiceUrl : productionInvoiceUrl;
```

**Updated printConfig() method** to include Invoice service in alphabetical order.

**Updated validate() method** to include Invoice URL in validation list.

### Fix 3: Updated Admin Resource Client

**File**: `lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/admin_resource_clients.dart`

**Changed From**:
```dart
final String baseUrl = useMockServers
    ? 'http://localhost:8009'
    : const String.fromEnvironment('PROD_ADMIN_URL', ...);
```

**Changed To**:
```dart
final String baseUrl = useMockServers
    ? 'http://localhost:4010'  // Prism mock server for Admin service
    : const String.fromEnvironment('PROD_ADMIN_URL', ...);
```

### Fix 4: Fixed Auth OpenAPI Security Configuration

**File**: `contract/auth_openapi.yaml`

**Issue**: Global security requirement was blocking public endpoints.

**Fix**: Added `security: []` to override global security for public endpoints:

1. `/auth/login` - Line 183
2. `/auth/forgot-password` - Line 322
3. `/auth/reset-password` - Line 363
4. `/auth/keycloak/login` - Line 497

**Example**:
```yaml
/auth/login:
  post:
    summary: Login
    description: Authenticates a user and returns a token
    operationId: login
    tags:
      - Auth
    security: []  # Override global security - login endpoint is public
    requestBody:
      required: true
      ...
```

### Fix 5: Updated Prism Server Instructions

**File**: `lib/config/app_config.dart`

**Changed From**:
```dart
print('⚠️  IMPORTANT: Mock servers must be running!');
print('   Start all mock servers with:');
print('   dart run lib/mock_server/start_all_mocks.dart');
```

**Changed To**:
```dart
print('⚠️  IMPORTANT: Prism mock servers must be running!');
print('   Start all Prism mock servers with:');
print('   cd contract && ./start-prism-servers.sh');
print('   Or check status: ./check-prism-servers.sh');
```

## Port Mapping Reference

| Service      | Old Port | New Port (Prism) | Status |
|--------------|----------|------------------|--------|
| Admin        | 8009     | 4010             | ✅ Fixed |
| Analytics    | 8008     | 4011             | ✅ Fixed |
| Auth         | 8012     | 4012             | ✅ Fixed |
| Catalogs     | 8005     | 4013             | ✅ Fixed |
| Customer     | 8001     | 4014             | ✅ Fixed |
| Delivery     | 8007     | 4015             | ✅ Fixed |
| Invoice      | N/A      | 4016             | ✅ Added |
| Kitchen      | 8006     | 4017             | ✅ Fixed |
| Meal         | 8003     | 4018             | ✅ Fixed |
| Order        | 8002     | 4019             | ✅ Fixed |
| Payment      | 8004     | 4020             | ✅ Fixed |
| Quickserver  | 8011     | 4021             | ✅ Fixed |
| Subscription | 8010     | 4022             | ✅ Fixed |

## Verification Steps

### 1. Check Prism Servers Status
```bash
cd contract
./check-prism-servers.sh
```

Expected output: All 13 services showing "✓ Running"

### 2. Test Auth Login Endpoint
```bash
curl -X POST http://localhost:4012/auth/login \
  -H "Content-Type: application/json" \
  -d '{"username":"admin@onefood.com","password":"password"}' \
  -s | jq .
```

Expected output: JSON response with user data and token

### 3. Run Flutter App
```bash
flutter run -d macos
```

Expected: App should connect to Prism servers without connection errors

## Files Modified

1. ✅ `lib/config/app_config.dart` - Updated all port configurations
2. ✅ `lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/admin_resource_clients.dart` - Fixed hardcoded port
3. ✅ `contract/auth_openapi.yaml` - Fixed security configuration for public endpoints

## Testing Checklist

- [x] All Prism servers running on correct ports (4010-4022)
- [x] Auth login endpoint returns mock data (200 OK)
- [x] App configuration updated with correct ports
- [x] Invoice service added to configuration
- [x] Admin resource client using correct port
- [ ] Flutter app successfully connects to Auth service
- [ ] Flutter app successfully authenticates with mock credentials
- [ ] All 13 microservices accessible from Flutter app

## Next Steps

1. **Test Flutter App**: Run the app and verify login functionality works
2. **Test Other Services**: Verify other microservices are accessible
3. **Update Tests**: Update any tests that reference old port numbers
4. **Documentation**: Update any developer documentation with new port mappings
5. **CI/CD**: Update CI/CD pipelines to use Prism servers for testing

## Best Practices Applied

1. ✅ **Centralized Configuration**: All URLs managed in `app_config.dart`
2. ✅ **Environment-Based**: Support for mock, dev, staging, and production environments
3. ✅ **Alphabetical Ordering**: Services listed alphabetically for easy maintenance
4. ✅ **Comprehensive Validation**: URL validation in `validate()` method
5. ✅ **Clear Documentation**: Comments explaining Prism port mappings
6. ✅ **Security Best Practices**: Public endpoints properly configured in OpenAPI specs

## Troubleshooting

### Issue: Connection Refused
**Solution**: Ensure Prism servers are running with `./check-prism-servers.sh`

### Issue: 401 Unauthorized on Login
**Solution**: Verify `security: []` is set on public endpoints in OpenAPI spec

### Issue: Port Already in Use
**Solution**: Stop old mock servers and restart Prism servers
```bash
cd contract
./stop-prism-servers.sh
./start-prism-servers.sh
```

### Issue: Invalid Response Format
**Solution**: Check OpenAPI schema definitions match expected response format

## References

- Prism Documentation: https://stoplight.io/open-source/prism
- OpenAPI 3.1 Specification: https://spec.openapis.org/oas/v3.1.0
- Flutter Dio Package: https://pub.dev/packages/dio
- OneFoodDialer Architecture: See `contract/ARCHITECTURE_DIAGRAM.md`

