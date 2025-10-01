#!/bin/bash

# Script to test all mock servers are running and responding
# Run with: bash lib/mock_server/test_mock_servers.sh

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "🧪 Testing OneFoodDialer Mock Servers"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Array of servers to test
declare -A SERVERS=(
  ["Auth"]="8012:/api/v1/health"
  ["Customer"]="8001:/api/v2/customers"
  ["Order"]="8002:/api/v2/orders"
  ["Meal"]="8003:/api/v2/meals"
  ["Payment"]="8004:/api/v1/payments/statistics"
  ["Catalogs"]="8005:/api/v2/catalogue/products"
  ["Kitchen"]="8006:/api/v2/kitchens"
  ["Delivery"]="8007:/api/v2/deliveries"
  ["Analytics"]="8008:/api/v2/analytics/sales"
  ["Admin"]="8009:/api/v2/admin/dashboard"
  ["Subscription"]="8010:/api/v2/subscriptions"
  ["QuickServer"]="8011:/api/v1/timeslots"
)

PASSED=0
FAILED=0

for SERVICE in "${!SERVERS[@]}"; do
  IFS=':' read -r PORT PATH <<< "${SERVERS[$SERVICE]}"
  URL="http://localhost:$PORT$PATH"
  
  echo -n "Testing $SERVICE on port $PORT... "
  
  # Test if port is listening
  if ! lsof -i:$PORT > /dev/null 2>&1; then
    echo "❌ FAILED (port not listening)"
    ((FAILED++))
    continue
  fi
  
  # Test HTTP response
  HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL" 2>/dev/null)
  
  if [ "$HTTP_CODE" = "200" ] || [ "$HTTP_CODE" = "201" ]; then
    echo "✅ PASSED (HTTP $HTTP_CODE)"
    ((PASSED++))
  else
    echo "❌ FAILED (HTTP $HTTP_CODE)"
    ((FAILED++))
  fi
done

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "Test Results: $PASSED passed, $FAILED failed"
echo "═══════════════════════════════════════════════════════════"
echo ""

if [ $FAILED -eq 0 ]; then
  echo "✅ All mock servers are running correctly!"
  exit 0
else
  echo "❌ Some mock servers failed. Please check the logs."
  exit 1
fi

