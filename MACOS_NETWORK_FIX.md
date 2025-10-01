# 🔧 macOS Network Permission Fix - OneFoodDialer

## 🐛 Issue

When running the app on macOS, login failed with the following error:

```
SocketException: Connection failed (OS Error: Operation not permitted, errno = 1), 
address = localhost, port = 8012
```

**Root Cause:**
- macOS app was missing network client entitlements
- macOS App Sandbox requires explicit permission for network access
- The app had `network.server` permission but not `network.client`

---

## ✅ Solution

Added network client entitlements to macOS configuration files.

### **Files Modified:**

1. **`macos/Runner/DebugProfile.entitlements`**
2. **`macos/Runner/Release.entitlements`**

### **Changes Made:**

#### **DebugProfile.entitlements:**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>com.apple.security.app-sandbox</key>
	<true/>
	<key>com.apple.security.cs.allow-jit</key>
	<true/>
	<key>com.apple.security.network.server</key>
	<true/>
	<!-- ✅ ADDED: Network client permission -->
	<key>com.apple.security.network.client</key>
	<true/>
</dict>
</plist>
```

#### **Release.entitlements:**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>com.apple.security.app-sandbox</key>
	<true/>
	<!-- ✅ ADDED: Network client permission -->
	<key>com.apple.security.network.client</key>
	<true/>
	<!-- ✅ ADDED: Network server permission -->
	<key>com.apple.security.network.server</key>
	<true/>
</dict>
</plist>
```

---

## 🧪 Testing Results

### **Before Fix:**
```
❌ SocketException: Connection failed (OS Error: Operation not permitted, errno = 1)
❌ Login fails
❌ Cannot connect to mock servers
```

### **After Fix:**
```
✅ Connection successful
✅ Login works
✅ Mock servers accessible
✅ All API calls working
```

### **Test Output:**
```
flutter: 🔐 Attempting login to: http://localhost:8012
flutter: 📝 Username: admin@onefood.com
flutter: 📤 Sending login request...
flutter: ✅ Login successful!
```

---

## 📋 Entitlements Explained

### **com.apple.security.app-sandbox**
- Enables App Sandbox for security
- Required for Mac App Store distribution
- Restricts app access to system resources

### **com.apple.security.network.client**
- **✅ REQUIRED** - Allows outgoing network connections
- Enables HTTP/HTTPS requests to external servers
- Needed for API calls, mock servers, etc.

### **com.apple.security.network.server**
- Allows incoming network connections
- Enables the app to act as a server
- Useful for development/debugging

### **com.apple.security.cs.allow-jit**
- Allows Just-In-Time compilation
- Required for Flutter's Dart VM
- Debug mode only

---

## 🚀 How to Apply Fix

### **Method 1: Clean Build (Recommended)**
```bash
# 1. Clean project
flutter clean

# 2. Get dependencies
flutter pub get

# 3. Run on macOS
flutter run -d macos --dart-define=USE_MOCK_SERVERS=true
```

### **Method 2: Rebuild Only**
```bash
# Stop the app (press 'q' in terminal)
# Then run again
flutter run -d macos --dart-define=USE_MOCK_SERVERS=true
```

**Note:** Hot reload/restart will NOT apply entitlement changes. You must rebuild the app.

---

## 📝 Additional Fixes

### **1. Mock Server Startup Script**
Fixed `lib/mock_server/start_all_mocks.dart`:
- Changed `catalog_mock_server.dart` → `catalogs_mock_server.dart`
- Moved Auth server to first position (starts first)

### **2. Enhanced Logging**
Added detailed logging to `auth_resource_clients.dart`:
```dart
print('🔐 Attempting login to: ${http.options.baseUrl}');
print('📝 Username: $username');
print('📤 Sending login request...');
print('✅ Login successful!');
```

### **3. Web Storage Fix**
Updated `AuthStorage` to use platform-specific storage:
- **Web:** SharedPreferences (localStorage)
- **macOS/iOS/Android:** FlutterSecureStorage (encrypted)

---

## 🔐 Security Considerations

### **Development (Mock Servers):**
- ✅ Network client permission required
- ✅ Localhost connections allowed
- ✅ No external network access needed

### **Production:**
- ✅ Network client permission required
- ✅ HTTPS recommended for all API calls
- ✅ Consider additional entitlements based on features:
  - `com.apple.security.files.user-selected.read-write` - File access
  - `com.apple.security.device.camera` - Camera access
  - `com.apple.security.device.microphone` - Microphone access

---

## 📊 Platform Comparison

| Platform | Network Permission | Configuration File |
|----------|-------------------|-------------------|
| **macOS** | Entitlements required | `macos/Runner/*.entitlements` |
| **iOS** | Entitlements required | `ios/Runner/*.entitlements` |
| **Android** | Manifest permission | `android/app/src/main/AndroidManifest.xml` |
| **Web** | No permission needed | Browser handles it |
| **Windows** | No permission needed | OS allows by default |
| **Linux** | No permission needed | OS allows by default |

---

## ✅ Verification Checklist

After applying the fix, verify:

- [ ] App builds without errors
- [ ] Login page displays
- [ ] Can enter credentials
- [ ] Login succeeds
- [ ] Redirects to dashboard
- [ ] Mock server logs show requests
- [ ] No "Operation not permitted" errors
- [ ] All API calls work

---

## 🎯 Summary

**Issue:** macOS app couldn't connect to network (missing entitlements)
**Solution:** Added `com.apple.security.network.client` entitlement
**Status:** ✅ Fixed and tested
**Impact:** Login and all API calls now work on macOS

---

## 📞 Quick Reference

### **Test Login:**
```bash
# 1. Start mock servers
dart run lib/mock_server/start_all_mocks.dart

# 2. Run app on macOS
flutter run -d macos --dart-define=USE_MOCK_SERVERS=true

# 3. Login with test credentials
Username: admin@onefood.com
Password: admin123
```

### **Expected Result:**
```
✅ Login successful!
✅ Redirects to dashboard
✅ All features accessible
```

---

**Fix completed and verified! macOS app now has full network access.** ✅

