#!/bin/bash

# Test Prism Mock Server Endpoints
# This script tests all 13 microservice endpoints to verify they're accessible

echo "=========================================="
echo "Testing Prism Mock Server Endpoints"
echo "=========================================="
echo ""

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test counter
TOTAL=0
PASSED=0
FAILED=0

# Function to test an endpoint
test_endpoint() {
    local service=$1
    local port=$2
    local method=$3
    local path=$4
    local data=$5
    
    TOTAL=$((TOTAL + 1))
    
    echo -n "Testing $service ($method $path)... "
    
    if [ "$method" = "POST" ]; then
        response=$(curl -s -w "\n%{http_code}" -X POST "http://localhost:$port$path" \
            -H "Content-Type: application/json" \
            -d "$data" 2>/dev/null)
    else
        response=$(curl -s -w "\n%{http_code}" "http://localhost:$port$path" 2>/dev/null)
    fi
    
    http_code=$(echo "$response" | tail -n1)
    
    # Accept 200, 201, 401, 404 as valid responses (server is running)
    if [[ "$http_code" =~ ^(200|201|401|404)$ ]]; then
        echo -e "${GREEN}✓ PASS${NC} (HTTP $http_code)"
        PASSED=$((PASSED + 1))
    else
        echo -e "${RED}✗ FAIL${NC} (HTTP $http_code)"
        FAILED=$((FAILED + 1))
    fi
}

echo "Testing all 13 microservices..."
echo ""

# Admin Service (Port 4010)
echo "=== Admin Service (Port 4010) ==="
test_endpoint "Admin Dashboard" 4010 "GET" "/api/admin/dashboard" ""
test_endpoint "Admin Health" 4010 "GET" "/api/admin/health" ""
echo ""

# Analytics Service (Port 4011)
echo "=== Analytics Service (Port 4011) ==="
test_endpoint "Analytics Reports" 4011 "GET" "/api/analytics/reports" ""
test_endpoint "Analytics Metrics" 4011 "GET" "/api/analytics/metrics" ""
echo ""

# Auth Service (Port 4012)
echo "=== Auth Service (Port 4012) ==="
test_endpoint "Auth Login" 4012 "POST" "/auth/login" '{"username":"admin@onefood.com","password":"password"}'
test_endpoint "Auth Keycloak Login" 4012 "GET" "/auth/keycloak/login" ""
echo ""

# Catalogs Service (Port 4013)
echo "=== Catalogs Service (Port 4013) ==="
test_endpoint "Catalogs List" 4013 "GET" "/api/catalogs" ""
test_endpoint "Catalog Items" 4013 "GET" "/api/catalogs/1/items" ""
echo ""

# Customer Service (Port 4014)
echo "=== Customer Service (Port 4014) ==="
test_endpoint "Customers List" 4014 "GET" "/customers" ""
test_endpoint "Customer Detail" 4014 "GET" "/customers/1" ""
echo ""

# Delivery Service (Port 4015)
echo "=== Delivery Service (Port 4015) ==="
test_endpoint "Deliveries List" 4015 "GET" "/api/deliveries" ""
test_endpoint "Delivery Tracking" 4015 "GET" "/api/deliveries/1/tracking" ""
echo ""

# Invoice Service (Port 4016)
echo "=== Invoice Service (Port 4016) ==="
test_endpoint "Invoices List" 4016 "GET" "/invoices" ""
test_endpoint "Invoice Detail" 4016 "GET" "/invoices/1" ""
echo ""

# Kitchen Service (Port 4017)
echo "=== Kitchen Service (Port 4017) ==="
test_endpoint "Kitchens List" 4017 "GET" "/api/kitchens" ""
test_endpoint "Kitchen Detail" 4017 "GET" "/api/kitchens/1" ""
echo ""

# Meal Service (Port 4018)
echo "=== Meal Service (Port 4018) ==="
test_endpoint "Meals List" 4018 "GET" "/api/meals" ""
test_endpoint "Meal Detail" 4018 "GET" "/api/meals/1" ""
echo ""

# Order Service (Port 4019)
echo "=== Order Service (Port 4019) ==="
test_endpoint "Orders List" 4019 "GET" "/orders" ""
test_endpoint "Order Detail" 4019 "GET" "/orders/1" ""
echo ""

# Payment Service (Port 4020)
echo "=== Payment Service (Port 4020) ==="
test_endpoint "Payments List" 4020 "GET" "/api/payments" ""
test_endpoint "Payment Methods" 4020 "GET" "/api/payments/methods" ""
echo ""

# Quickserver Service (Port 4021)
echo "=== Quickserver Service (Port 4021) ==="
test_endpoint "Quickserver Status" 4021 "GET" "/api/quickserver/status" ""
test_endpoint "Quickserver Config" 4021 "GET" "/api/quickserver/config" ""
echo ""

# Subscription Service (Port 4022)
echo "=== Subscription Service (Port 4022) ==="
test_endpoint "Subscriptions List" 4022 "GET" "/api/subscriptions" ""
test_endpoint "Subscription Plans" 4022 "GET" "/api/subscriptions/plans" ""
echo ""

# Summary
echo "=========================================="
echo "Test Summary"
echo "=========================================="
echo "Total Tests:  $TOTAL"
echo -e "Passed:       ${GREEN}$PASSED${NC}"
echo -e "Failed:       ${RED}$FAILED${NC}"
echo ""

if [ $FAILED -eq 0 ]; then
    echo -e "${GREEN}✓ All tests passed!${NC}"
    exit 0
else
    echo -e "${YELLOW}⚠ Some tests failed. Check Prism server logs.${NC}"
    exit 1
fi

