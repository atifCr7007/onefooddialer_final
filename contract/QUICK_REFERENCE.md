# Prism Mock Servers - Quick Reference Card

## 🚀 Quick Start

```bash
cd contract
./start-prism-servers.sh    # Start all servers
./check-prism-servers.sh    # Check status
./stop-prism-servers.sh     # Stop all servers
```

## 📍 Port Mapping

| Service      | Port | URL                           |
|--------------|------|-------------------------------|
| Admin        | 4010 | http://localhost:4010         |
| Analytics    | 4011 | http://localhost:4011         |
| Auth         | 4012 | http://localhost:4012         |
| Catalogs     | 4013 | http://localhost:4013         |
| Customer     | 4014 | http://localhost:4014         |
| Delivery     | 4015 | http://localhost:4015         |
| Invoice      | 4016 | http://localhost:4016         |
| Kitchen      | 4017 | http://localhost:4017         |
| Meal         | 4018 | http://localhost:4018         |
| Order        | 4019 | http://localhost:4019         |
| Payment      | 4020 | http://localhost:4020         |
| Quickserver  | 4021 | http://localhost:4021         |
| Subscription | 4022 | http://localhost:4022         |

## 🧪 Test Commands

### Kitchen Service
```bash
# List kitchens
curl http://localhost:4017/kitchens

# Get kitchen by ID
curl http://localhost:4017/kitchens/123
```

### Order Service
```bash
# List orders (requires auth)
curl -H "Authorization: Bearer test-token" http://localhost:4019/orders

# Create order
curl -X POST http://localhost:4019/orders \
  -H "Authorization: Bearer test-token" \
  -H "Content-Type: application/json" \
  -d '{
    "customerId": "550e8400-e29b-41d4-a716-446655440001",
    "restaurantId": "550e8400-e29b-41d4-a716-446655440002",
    "items": [{"menuItemId": "789", "quantity": 2}],
    "deliveryType": "delivery"
  }'

# Track order
curl -H "Authorization: Bearer test-token" \
  http://localhost:4019/orders/{orderId}/tracking
```

### Customer Service
```bash
# List customers (requires auth)
curl -H "Authorization: Bearer test-token" http://localhost:4014/customers

# Get customer by ID
curl -H "Authorization: Bearer test-token" \
  http://localhost:4014/customers/123
```

### Auth Service
```bash
# Login
curl -X POST http://localhost:4012/login \
  -H "Content-Type: application/json" \
  -d '{"email": "test@example.com", "password": "password123"}'
```

## 📝 View Logs

```bash
# All logs
tail -f logs/*.log

# Specific service
tail -f logs/order_prism.log
tail -f logs/kitchen_prism.log
tail -f logs/customer_prism.log
```

## 🐳 Docker Commands

```bash
# Start with Docker
docker-compose -f docker-compose.prism.yml up -d

# Check status
docker-compose -f docker-compose.prism.yml ps

# View logs
docker-compose -f docker-compose.prism.yml logs -f prism-order

# Stop
docker-compose -f docker-compose.prism.yml down
```

## 🔧 Troubleshooting

### Port in use
```bash
./stop-prism-servers.sh
lsof -i :4019
kill -9 <PID>
```

### Server not starting
```bash
cat logs/order_prism.log
prism mock order_openapi.yaml --validate
```

### Check if server is running
```bash
curl http://localhost:4019/orders
nc -z localhost 4019
```

## 💡 Flutter Integration

```dart
class ApiConfig {
  static const String orderBaseUrl = 'http://localhost:4019';
  static const String kitchenBaseUrl = 'http://localhost:4017';
  static const String customerBaseUrl = 'http://localhost:4014';
  // ... add other services
}

// Usage
final response = await http.get(
  Uri.parse('${ApiConfig.orderBaseUrl}/orders'),
  headers: {'Authorization': 'Bearer mock-token'},
);
```

## ✅ Health Check

```bash
# Quick health check all services
for port in {4010..4022}; do
  echo -n "Port $port: "
  curl -s -o /dev/null -w "%{http_code}" http://localhost:$port && echo " ✓" || echo " ✗"
done
```

## 📚 Documentation

- Full Setup Guide: `README_PRISM_SETUP.md`
- Deployment Summary: `PRISM_MOCK_SERVERS_SUMMARY.md`
- OpenAPI Specs: `contract/*.yaml`

## 🎯 Key Features

✅ Dynamic response generation  
✅ Request validation  
✅ Security enforcement  
✅ Real-time logging  
✅ Easy management scripts  
✅ Docker support  

## 🚨 Important Notes

- Mock servers don't persist data
- Any Bearer token is accepted (no real auth)
- Responses are randomly generated based on schemas
- Use for development and testing only

