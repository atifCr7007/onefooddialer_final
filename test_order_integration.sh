#!/bin/bash

# Order Integration Test Script
# This script tests all order endpoints to verify the integration

echo "🧪 Testing Order Service Integration"
echo "===================================="
echo ""

BASE_URL="http://localhost:8010/v2/order-service-v12"

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test function
test_endpoint() {
    local endpoint=$1
    local description=$2
    local method=${3:-GET}
    
    echo -n "Testing: $description ... "
    
    if [ "$method" == "GET" ]; then
        response=$(curl -s -w "\n%{http_code}" "$BASE_URL$endpoint")
    elif [ "$method" == "POST" ]; then
        response=$(curl -s -w "\n%{http_code}" -X POST -H "Content-Type: application/json" -d '{}' "$BASE_URL$endpoint")
    elif [ "$method" == "PUT" ]; then
        response=$(curl -s -w "\n%{http_code}" -X PUT -H "Content-Type: application/json" -d '{}' "$BASE_URL$endpoint")
    elif [ "$method" == "DELETE" ]; then
        response=$(curl -s -w "\n%{http_code}" -X DELETE "$BASE_URL$endpoint")
    fi
    
    http_code=$(echo "$response" | tail -n1)
    body=$(echo "$response" | sed '$d')
    
    if [ "$http_code" -eq 200 ] || [ "$http_code" -eq 201 ] || [ "$http_code" -eq 204 ]; then
        echo -e "${GREEN}✅ PASS${NC} (HTTP $http_code)"
        return 0
    else
        echo -e "${RED}❌ FAIL${NC} (HTTP $http_code)"
        return 1
    fi
}

# Order Management Endpoints
echo "📦 Order Management Endpoints"
echo "-----------------------------"
test_endpoint "/orders" "List Orders" "GET"
test_endpoint "/orders" "Create Order" "POST"
test_endpoint "/orders/ORD001" "Get Order by ID" "GET"
test_endpoint "/orders/ORD001" "Update Order" "PUT"
test_endpoint "/orders/ORD001" "Cancel Order" "DELETE"
echo ""

# Order Items Endpoints
echo "🍕 Order Items Endpoints"
echo "------------------------"
test_endpoint "/orders/ORD001/items" "Get Order Items" "GET"
test_endpoint "/orders/ORD001/items" "Add Order Item" "POST"
test_endpoint "/orders/ORD001/items/ITEM001" "Update Order Item" "PUT"
test_endpoint "/orders/ORD001/items/ITEM001" "Remove Order Item" "DELETE"
echo ""

# Order Tracking Endpoints
echo "📍 Order Tracking Endpoints"
echo "---------------------------"
test_endpoint "/orders/ORD001/tracking" "Get Order Tracking" "GET"
test_endpoint "/orders/ORD001/status" "Update Order Status" "PUT"
echo ""

echo "===================================="
echo "✅ Order Integration Test Complete!"
echo ""
echo "Next Steps:"
echo "1. Run: flutter analyze (should show 0 errors)"
echo "2. Run: flutter run -d chrome"
echo "3. Navigate to Order Service in sidebar"
echo "4. Test all three order features"
echo ""

