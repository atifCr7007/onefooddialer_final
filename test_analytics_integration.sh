#!/bin/bash

# Analytics Integration Test Script
# This script tests all analytics endpoints to verify the integration

echo "🧪 Testing Analytics Service Integration"
echo "========================================"
echo ""

BASE_URL="http://localhost:8009/v2/analytics-service-v12"

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test function
test_endpoint() {
    local endpoint=$1
    local description=$2
    
    echo -n "Testing: $description ... "
    
    response=$(curl -s -w "\n%{http_code}" "$BASE_URL$endpoint")
    http_code=$(echo "$response" | tail -n1)
    body=$(echo "$response" | sed '$d')
    
    if [ "$http_code" -eq 200 ]; then
        echo -e "${GREEN}✅ PASS${NC} (HTTP $http_code)"
        return 0
    else
        echo -e "${RED}❌ FAIL${NC} (HTTP $http_code)"
        return 1
    fi
}

# Health Check
echo "📊 Health Endpoints"
echo "-------------------"
test_endpoint "/health" "Health Status"
echo ""

# Sales Analytics
echo "💰 Sales Analytics Endpoints"
echo "----------------------------"
test_endpoint "/sales" "Sales Dashboard"
test_endpoint "/sales/years" "Sales Years"
test_endpoint "/sales/months/2025" "Sales Months for 2025"
test_endpoint "/sales/payment-methods" "Payment Methods"
test_endpoint "/sales/revenue/2025/1" "Revenue for Jan 2025"
test_endpoint "/sales/comparison/2025/monthly" "Sales Comparison"
test_endpoint "/sales/avg-meal/2025/1" "Average Meal per Customer"
echo ""

# Food Analytics
echo "🍔 Food Analytics Endpoints"
echo "---------------------------"
test_endpoint "/food" "Food Dashboard"
test_endpoint "/food/popular/2025/1" "Popular Meals"
test_endpoint "/food/performance/2025/1/best" "Best Performing Meals"
test_endpoint "/food/performance/2025/1/worst" "Worst Performing Meals"
test_endpoint "/food/extras" "Common Extras"
echo ""

# Customer Analytics
echo "👥 Customer Analytics Endpoints"
echo "-------------------------------"
test_endpoint "/customer" "Customer Dashboard"
test_endpoint "/customer/loyal" "Loyal Customers"
test_endpoint "/customer/spending/CUST001" "Customer Spending"
test_endpoint "/customer/preferences/CUST001" "Customer Preferences"
echo ""

echo "========================================"
echo "✅ Analytics Integration Test Complete!"
echo ""
echo "Next Steps:"
echo "1. Run: flutter analyze (should show 0 errors)"
echo "2. Run: flutter run -d chrome"
echo "3. Navigate to Analytics Service in sidebar"
echo "4. Test all three analytics features"
echo ""

