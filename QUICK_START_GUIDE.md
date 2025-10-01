# OneFoodDialer Quick Start Guide

## 🚀 Getting Started with Mock Servers

This guide will help you get the OneFoodDialer admin dashboard running with mock servers for development.

## Prerequisites

- Flutter SDK installed
- Dart SDK installed
- Terminal/Command line access

## Step-by-Step Setup

### Step 1: Kill Any Existing Mock Servers

```bash
bash lib/mock_server/kill_all_mocks.sh
```

**Expected Output:**
```
═══════════════════════════════════════════════════════════
🛑 Stopping All OneFoodDialer Mock Servers
═══════════════════════════════════════════════════════════

Killing process on port 8001 (PID: 12345)...
✅ Successfully killed process on port 8001
...
```

### Step 2: Start All Mock Servers

```bash
dart run lib/mock_server/start_all_mocks.dart
```

**Expected Output:**
```
═══════════════════════════════════════════════════════════
🚀 Starting All OneFoodDialer Mock Servers
═══════════════════════════════════════════════════════════

Starting Auth server on port 8012...
🚀 Auth Mock Server running on http://localhost:8012

Starting Customer server on port 8001...
🚀 Customer Mock Server running on http://localhost:8001

...

═══════════════════════════════════════════════════════════
✅ All mock servers started!
═══════════════════════════════════════════════════════════

Mock Server URLs:
  Auth            → http://localhost:8012
  Customer        → http://localhost:8001
  Order           → http://localhost:8002
  Meal            → http://localhost:8003
  Payment         → http://localhost:8004
  Catalogs        → http://localhost:8005
  Kitchen         → http://localhost:8006
  Delivery        → http://localhost:8007
  Analytics       → http://localhost:8008
  Admin           → http://localhost:8009
  Subscription    → http://localhost:8010
  QuickServer     → http://localhost:8011

Press Ctrl+C to stop all servers
```

### Step 3: Verify Mock Servers (Optional)

```bash
bash lib/mock_server/test_mock_servers.sh
```

**Expected Output:**
```
═══════════════════════════════════════════════════════════
🧪 Testing OneFoodDialer Mock Servers
═══════════════════════════════════════════════════════════

Testing Auth on port 8012... ✅ PASSED (HTTP 200)
Testing Customer on port 8001... ✅ PASSED (HTTP 200)
Testing Order on port 8002... ✅ PASSED (HTTP 200)
...

═══════════════════════════════════════════════════════════
Test Results: 12 passed, 0 failed
═══════════════════════════════════════════════════════════

✅ All mock servers are running correctly!
```

### Step 4: Run Flutter App

Open a **new terminal** (keep mock servers running in the first terminal):

```bash
flutter run
```

**Expected Console Output:**
```
═══════════════════════════════════════════════════════════
🔧 OneFoodDialer Configuration
═══════════════════════════════════════════════════════════
Environment: MOCK (Development)
Debug Mode: true

API Base URLs:
  Auth:         http://localhost:8012
  Customer:     http://localhost:8001
  Order:        http://localhost:8002
  Meal:         http://localhost:8003
  Payment:      http://localhost:8004
  Catalog:      http://localhost:8005
  QuickServer:  http://localhost:8011
  Subscription: http://localhost:8010
  Kitchen:      http://localhost:8006
  Delivery:     http://localhost:8007
  Analytics:    http://localhost:8008
  Admin:        http://localhost:8009
═══════════════════════════════════════════════════════════
```

### Step 5: Login to Admin Dashboard

1. App will open to login page
2. Use any credentials (mock auth accepts anything)
3. You'll be redirected to the dashboard

### Step 6: Test Navigation

Click through the sidebar to test different microservices:

#### ✅ Working Features (with Mock Data)

- **Invoice Service**
  - Invoices → `/features/invoices`
  - Statistics → `/features/statistics`
  - Health Check → `/features/health`

- **Kitchen Service**
  - Kitchens → `/features/kitchens`
  - Kitchen Masters → `/features/kitchen-masters`
  - Recipes → `/features/recipes`

- **Payment Service**
  - Payment Transactions → `/features/payments`
  - Payment Methods → `/features/payment-methods` ✅ FIXED

- **Customer Service**
  - Customers → `/features/customers`

- **Delivery Service**
  - Deliveries → `/features/deliveries`

- **Meal Service**
  - Meals → `/features/meals`

- **Catalog Service**
  - Products → `/features/products` ✅ FIXED

- **Order Service**
  - Order Management → `/features/order-management`
  - Order Tracking → `/features/order-tracking`
  - Order Items → `/features/order-items`

- **Subscription Service**
  - Subscriptions → `/features/subscriptions`
  - Subscription Plans → `/features/subscription-plans` ✅ FIXED

- **Analytics Service**
  - Sales Analytics → `/features/sales-analytics`
  - Food Analytics → `/features/food-analytics`
  - Customer Analytics → `/features/customer-analytics`

- **Administration**
  - Dashboard → `/admin/dashboard`
  - Health → `/admin/health`
  - Users → `/admin/users`
  - Roles → `/admin/roles`
  - System → `/admin/system`

#### 🚧 Coming Soon Features

- Customer Support → Shows "Coming Soon" page
- Delivery Drivers → Shows "Coming Soon" page
- QuickServer Config → Shows "Coming Soon" page
- QuickServer Backorders → Shows "Coming Soon" page
- QuickServer Orders → Shows "Coming Soon" page
- QuickServer Timeslots → Shows "Coming Soon" page
- QuickServer Locations → Shows "Coming Soon" page

## 🔍 Debugging

### Check Console Logs

When you navigate to a feature, you should see logs like:

**Flutter App Console:**
```
🔵 [Payment API] GET http://localhost:8004/api/v1/payment-methods/customer/1
🔵 [Payment API] Headers: {Content-Type: application/json}
🔵 [Payment API] Response: 200 OK
🔵 [Payment API] Data: {"success":true,"data":[...]}
```

**Mock Server Console:**
```
🔵 [Payment Mock] 2024-01-15T10:30:00.000
🔵 [Payment Mock] GET /api/v1/payment-methods/customer/1
🔵 [Payment Mock] Response: 200
🔵 [Payment Mock] Data: {"success":true,"data":[...]}
```

### Common Issues

#### Issue: "Failed host lookup: 'api.onefooddialer.com'"

**Solution:**
- Verify `AppConfig.useMockServers` is `true` in `lib/config/app_config.dart`
- Restart the Flutter app
- Check mock servers are running

#### Issue: "Address already in use"

**Solution:**
```bash
bash lib/mock_server/kill_all_mocks.sh
dart run lib/mock_server/start_all_mocks.dart
```

#### Issue: "GoException: no route for this location"

**Solution:**
- Routes have been fixed to use hyphens instead of spaces
- Clear app cache: `flutter clean && flutter pub get`
- Restart app

#### Issue: No data showing in UI

**Solution:**
1. Check console logs for API requests
2. Verify mock server is returning data
3. Check provider uses `AppConfig` base URLs
4. Restart both mock servers and Flutter app

## 📊 Sample Data Available

Each mock server provides sample data:

- **Customers**: 5 sample customers
- **Orders**: 10 sample orders
- **Payments**: 3 sample payments
- **Payment Methods**: 3 sample payment methods
- **Deliveries**: 8 sample deliveries
- **Meals**: 6 sample meals
- **Products**: 8 sample products
- **Subscriptions**: 5 sample subscriptions
- **Subscription Plans**: 3 sample plans
- **Admin Users**: 5 sample users
- **Admin Roles**: 3 sample roles

## 🛠️ Development Workflow

### Daily Development

1. **Start mock servers** (once per day):
   ```bash
   dart run lib/mock_server/start_all_mocks.dart
   ```

2. **Run Flutter app** (in new terminal):
   ```bash
   flutter run
   ```

3. **Make changes** to code

4. **Hot reload** in Flutter (press `r` in terminal)

5. **Check console logs** for API calls

### Switching to Production

To test with real backend:

1. Edit `lib/config/app_config.dart`:
   ```dart
   static const bool useMockServers = false; // Use production
   ```

2. Restart Flutter app

3. Configure production URLs in `AppConfig`

## 📚 Additional Resources

- **Mock Server README**: `lib/mock_server/README.md`
- **Fix Summary**: `MOCK_SERVER_FIX_SUMMARY.md`
- **Integration Template**: `MICROSERVICE_INTEGRATION_TEMPLATE.md`

## 🎯 Next Steps

1. ✅ Verify all mock servers are running
2. ✅ Test navigation to all features
3. ✅ Check console logs show data
4. ✅ Test CRUD operations
5. 🚧 Implement missing features (Coming Soon pages)
6. 🚧 Add real backend integration

## 💡 Tips

- Keep mock server terminal open to see request logs
- Use `flutter run -v` for verbose logging
- Check both Flutter and mock server consoles for errors
- Use `flutter clean` if you encounter caching issues
- Press `r` for hot reload, `R` for hot restart in Flutter

## 🐛 Still Having Issues?

1. Kill all processes: `bash lib/mock_server/kill_all_mocks.sh`
2. Clean Flutter: `flutter clean && flutter pub get`
3. Restart mock servers: `dart run lib/mock_server/start_all_mocks.dart`
4. Restart Flutter app: `flutter run`
5. Check console logs for specific errors
6. Review `MOCK_SERVER_FIX_SUMMARY.md` for detailed fixes

---

**Happy Coding! 🚀**

