# 🧪 OneFoodDialer Admin Dashboard - Testing Guide

## 📋 Pre-Testing Checklist

Before starting tests, ensure:
- [x] All dependencies installed: `flutter pub get`
- [x] Flutter analyze shows 0 errors: `flutter analyze`
- [x] All mock servers available in `lib/mock_server/`

---

## 🚀 Quick Start Testing

### **1. Start All Mock Servers**
```bash
dart run lib/mock_server/start_all_mocks.dart
```

**Expected Output:**
```
🚀 Starting all mock servers...
✅ Auth Mock Server (8012)
✅ Customer Mock Server (8001)
✅ Order Mock Server (8002)
✅ Meal Mock Server (8003)
✅ Payment Mock Server (8004)
✅ Catalog Mock Server (8005)
✅ Kitchen Mock Server (8006)
✅ Delivery Mock Server (8007)
✅ Analytics Mock Server (8008)
✅ Admin Mock Server (8009)
✅ Subscription Mock Server (8010)
✅ QuickServer Mock Server (8011)
```

### **2. Run the App**
```bash
flutter run -d chrome --dart-define=USE_MOCK_SERVERS=true
```

**Expected:**
- App starts without errors
- Redirects to `/auth/login`
- Login page displays

---

## 🔐 Test 1: Authentication Flow

### **Test 1.1: Login**
1. Navigate to login page (should be automatic)
2. Enter credentials:
   - Username: `admin@onefood.com`
   - Password: `admin123`
3. Click "Login"

**Expected:**
- ✅ Loading indicator appears
- ✅ Redirect to `/dashboard`
- ✅ Sidebar and navbar visible
- ✅ User menu shows "Admin User"

**Mock Server Log:**
```
📥 Login Request: {"username":"admin@onefood.com","password":"admin123"}
📤 Login Response: {"success":true,"message":"Login successful","data":{...}}
```

### **Test 1.2: Invalid Login**
1. Logout (if logged in)
2. Enter invalid credentials:
   - Username: `wrong@email.com`
   - Password: `wrongpass`
3. Click "Login"

**Expected:**
- ✅ Error message displayed
- ✅ Stays on login page
- ✅ No redirect

### **Test 1.3: Forgot Password**
1. Click "Forgot Password?" link
2. Enter email: `admin@onefood.com`
3. Click "Send Reset Link"

**Expected:**
- ✅ Success message displayed
- ✅ "Check your email" view shown

### **Test 1.4: Logout**
1. Login successfully
2. Click user menu (top right)
3. Click "Logout"
4. Confirm in dialog

**Expected:**
- ✅ Redirect to `/auth/login`
- ✅ Token cleared from storage
- ✅ Cannot access protected routes

---

## 🧭 Test 2: Navigation & Routing

### **Test 2.1: Sidebar Navigation**
1. Login successfully
2. Click each sidebar item:
   - Dashboard
   - Customers
   - Orders
   - Meals
   - Payments
   - Catalogs
   - Subscriptions
   - Administration

**Expected:**
- ✅ Sidebar remains visible
- ✅ Navbar remains visible
- ✅ Only main content area updates
- ✅ No full page reload
- ✅ URL updates correctly

### **Test 2.2: Administration Submenu**
1. Click "Administration" in sidebar
2. Click each submenu item:
   - Dashboard
   - Health
   - Users
   - Roles
   - System Settings

**Expected:**
- ✅ Submenu expands/collapses
- ✅ Each page loads without errors
- ✅ Sidebar/navbar persist

### **Test 2.3: Direct URL Access**
1. Login successfully
2. Manually navigate to URLs:
   - `/dashboard`
   - `/features/customers`
   - `/admin/users`
   - `/admin/health`

**Expected:**
- ✅ All routes accessible
- ✅ Correct page displays
- ✅ Sidebar/navbar persist

### **Test 2.4: Protected Routes**
1. Logout
2. Try to access: `/dashboard`

**Expected:**
- ✅ Redirect to `/auth/login`
- ✅ Cannot access without auth

---

## 🖥️ Test 3: Mock Server Data Loading

### **Test 3.1: Dashboard Data**
1. Login successfully
2. Navigate to `/dashboard`

**Expected:**
- ✅ Dashboard loads
- ✅ Stats displayed
- ✅ Charts rendered
- ✅ No "Failed to load" errors

**Mock Server Log:**
```
📥 Get Dashboard Request
📤 Dashboard Response: {"success":true,"data":{...}}
```

### **Test 3.2: Customer List**
1. Navigate to `/features/customers`

**Expected:**
- ✅ Customer list loads
- ✅ Data displayed in table/cards
- ✅ Pagination works

**Mock Server Log:**
```
📥 Get Customers Request
📤 Customers Response: {"success":true,"data":[...]}
```

### **Test 3.3: Order List**
1. Navigate to `/features/orders`

**Expected:**
- ✅ Order list loads
- ✅ Data displayed
- ✅ Filters work

### **Test 3.4: Administration - Users**
1. Navigate to `/admin/users`

**Expected:**
- ✅ Users list loads
- ✅ Data displayed
- ✅ No "Failed to load" error

**Mock Server Log:**
```
📥 Get Users Request
📤 Users Response: {"success":true,"data":[...]}
```

### **Test 3.5: Administration - Health**
1. Navigate to `/admin/health`

**Expected:**
- ✅ Health status loads
- ✅ Service statuses displayed
- ✅ Uptime shown

**Mock Server Log:**
```
📥 Get Health Request
📤 Health Response: {"success":true,"data":{...}}
```

---

## 🔄 Test 4: Mock/Production Toggle

### **Test 4.1: Mock Mode (Default)**
```bash
flutter run -d chrome --dart-define=USE_MOCK_SERVERS=true
```

**Expected:**
- ✅ App uses localhost URLs
- ✅ Mock servers respond
- ✅ Full JSON logging in terminals

### **Test 4.2: Production Mode**
```bash
flutter run -d chrome --dart-define=USE_MOCK_SERVERS=false
```

**Expected:**
- ✅ App uses production URLs
- ✅ No mock server traffic
- ✅ Real API calls (if configured)

---

## 🧪 Test 5: Individual Mock Servers

### **Test Auth Mock Server (8012)**
```bash
# Start server
dart run lib/mock_server/auth_mock_server.dart

# Test login
curl -X POST http://localhost:8012/auth/login \
  -H "Content-Type: application/json" \
  -d '{"username":"admin@onefood.com","password":"admin123"}'
```

**Expected:**
```json
{
  "success": true,
  "message": "Login successful",
  "data": {
    "user": {...},
    "token": "mock_access_token_...",
    "token_type": "Bearer"
  }
}
```

### **Test Admin Mock Server (8009)**
```bash
# Start server
dart run lib/mock_server/admin_mock_server.dart

# Test dashboard
curl -X GET http://localhost:8009/v2/admin-service-v12/dashboard
```

**Expected:**
```json
{
  "success": true,
  "message": "Dashboard data retrieved successfully",
  "data": {
    "stats": {...},
    "recent_activity": [...],
    "charts": {...}
  }
}
```

### **Test Kitchen Mock Server (8006)**
```bash
# Start server
dart run lib/mock_server/kitchen_mock_server.dart

# Test kitchens list
curl -X GET http://localhost:8006/v2/kitchen-service-v12/kitchens
```

**Expected:**
```json
{
  "success": true,
  "message": "Kitchens retrieved successfully",
  "data": [
    {"id": 1, "name": "Main Kitchen", ...},
    {"id": 2, "name": "North Kitchen", ...}
  ]
}
```

---

## 📊 Test 6: Error Handling

### **Test 6.1: Network Error**
1. Stop all mock servers
2. Try to login

**Expected:**
- ✅ Error message displayed
- ✅ No app crash
- ✅ User-friendly error

### **Test 6.2: Invalid Token**
1. Login successfully
2. Manually clear token from storage
3. Try to access protected route

**Expected:**
- ✅ Redirect to login
- ✅ No app crash

---

## ✅ Test Results Checklist

### **Authentication:**
- [ ] Login with valid credentials works
- [ ] Login with invalid credentials shows error
- [ ] Forgot password flow works
- [ ] Logout works
- [ ] Token stored securely
- [ ] Auto-redirect to login when unauthenticated

### **Navigation:**
- [ ] Sidebar navigation works
- [ ] Navbar persists
- [ ] Main content updates only
- [ ] Direct URL access works
- [ ] Protected routes redirect to login

### **Mock Servers:**
- [ ] All 12 mock servers start
- [ ] Auth mock server works (8012)
- [ ] Admin mock server works (8009)
- [ ] Kitchen mock server works (8006)
- [ ] Full JSON logging works
- [ ] CORS headers present

### **Data Loading:**
- [ ] Dashboard loads data
- [ ] Customer list loads
- [ ] Order list loads
- [ ] Administration section loads
- [ ] No "Failed to load" errors

### **Configuration:**
- [ ] Mock mode works (USE_MOCK_SERVERS=true)
- [ ] Production mode works (USE_MOCK_SERVERS=false)
- [ ] No simultaneous mock+live traffic

### **Code Quality:**
- [ ] Flutter analyze shows 0 errors
- [ ] No console errors
- [ ] No runtime exceptions

---

## 🐛 Troubleshooting

### **Issue: "Failed to connect to server"**
**Solution:**
1. Check mock server is running: `lsof -i :8012`
2. Restart mock server
3. Check USE_MOCK_SERVERS=true

### **Issue: "Invalid credentials"**
**Solution:**
- Use test credentials: `admin@onefood.com` / `admin123`
- Check mock server logs

### **Issue: "Navigation not working"**
**Solution:**
1. Check browser console for errors
2. Verify routes in admin_router.dart
3. Check navigation provider configuration

### **Issue: "Administration section failed to load"**
**Solution:**
1. Start admin mock server: `dart run lib/mock_server/admin_mock_server.dart`
2. Check port 8009 is available
3. Verify admin_resource_clients.dart uses correct URL

---

## 📝 Test Report Template

```
# Test Report - [Date]

## Environment
- Flutter Version: [version]
- Browser: [Chrome/Safari/Firefox]
- Mock Servers: [Running/Not Running]

## Test Results
- Authentication: [PASS/FAIL]
- Navigation: [PASS/FAIL]
- Mock Servers: [PASS/FAIL]
- Data Loading: [PASS/FAIL]
- Configuration: [PASS/FAIL]

## Issues Found
1. [Issue description]
2. [Issue description]

## Notes
[Any additional notes]
```

---

**Happy Testing! 🎉**

