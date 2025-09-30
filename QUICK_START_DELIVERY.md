# 🚀 Quick Start: Delivery Microservice

## ⚡ 2-Minute Setup

### 1. Start Mock Server
```bash
dart run lib/mock_server/delivery_mock_server.dart
```

### 2. Run the App
```bash
flutter run -d chrome
```

### 3. Navigate to Delivery
1. Click **"Delivery Service"** in sidebar
2. Click **"Deliveries"**
3. ✅ Done!

---

## 📦 What You'll See

### Orders List
- **3 sample orders** (ORD-2025-001, ORD-2025-002, ORD-2025-003)
- **Status indicators** with colors:
  - 🟠 Pending (Orange)
  - 🔵 Dispatched (Blue)
  - 🟢 Delivered (Green)
  - 🔴 Failed (Red)

### Features Available
- ✅ **Location Filter** - Filter by Manhattan or Brooklyn Kitchen
- ✅ **Search** - Search by order number or customer name
- ✅ **Refresh** - Reload data
- ✅ **Actions Menu** - View/Update Status/Book 3rd Party

---

## 🔧 Switch to Production API

In `/lib/features/delivery/providers/delivery_providers.dart`:

```dart
// Change this line:
baseURL: 'http://localhost:8002',  // Mock server

// To this:
baseURL: 'https://api.onefooddialer.com/v2/delivery',  // Production
```

---

## 📊 Mock Server Endpoints

**Base URL:** `http://localhost:8002`

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/orders` | Get delivery orders |
| GET | `/orders/search?search=...` | Search orders |
| POST | `/orders/{orderId}/delivery-status` | Update status |
| GET | `/locations` | Get locations |
| POST | `/third-party/book` | Book delivery |
| GET | `/third-party/{orderId}/status` | Get status |
| POST | `/third-party/{orderId}/cancel` | Cancel delivery |

---

## 🧪 Test Scenarios

### Scenario 1: Filter by Location
1. Click location dropdown
2. Select "Manhattan Kitchen"
3. ✅ See 2 orders (ORD-001, ORD-002)

### Scenario 2: Search Orders
1. Type "Jane" in search box
2. ✅ See 1 order (ORD-002 - Jane Smith)

### Scenario 3: View All Orders
1. Clear search
2. Select "All Locations"
3. ✅ See all 3 orders

---

## 📁 Key Files

### Resource Client
`/lib/flutter-ui-codegen-pack-extended-fixed/lib/shared/delivery_resource_clients.dart`

### Providers
`/lib/features/delivery/providers/delivery_providers.dart`

### UI Page
`/lib/features/delivery/deliveries_page.dart`

### Mock Server
`/lib/mock_server/delivery_mock_server.dart`

---

## 🐛 Troubleshooting

### Mock Server Not Starting
```bash
# Check if port 8002 is in use
lsof -i :8002

# Kill process if needed
kill -9 <PID>

# Restart mock server
dart run lib/mock_server/delivery_mock_server.dart
```

### No Data Showing
1. Check mock server is running
2. Check provider base URL is correct
3. Check browser console for errors
4. Try refresh button

### Flutter Analyze Errors
```bash
flutter analyze --no-fatal-infos
```
**Expected:** 0 errors (only warnings about unused imports)

---

## 📚 Documentation

- **Full Summary:** `DELIVERY_INTEGRATION_SUMMARY.md`
- **Template for Next Service:** `MICROSERVICE_INTEGRATION_TEMPLATE.md`
- **Complete Status:** `DELIVERY_INTEGRATION_COMPLETE.md`

---

## ✅ Verification Checklist

- [ ] Mock server running on port 8002
- [ ] App running in browser
- [ ] Can navigate to Deliveries page
- [ ] See 3 orders in list
- [ ] Location filter works
- [ ] Search works
- [ ] Status colors display correctly
- [ ] Action menu appears

---

**Bhai, you're all set! 🔥 The delivery microservice is ready to use!**

