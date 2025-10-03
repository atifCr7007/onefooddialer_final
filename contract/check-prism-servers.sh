#!/bin/bash

# Prism Mock Servers Health Check Script
# This script checks the status of all Prism mock servers

echo "=========================================="
echo "OneFoodDialer Prism Mock Servers Status"
echo "=========================================="
echo ""

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Service names and ports
SERVICE_NAMES=(
    "Admin"
    "Analytics"
    "Auth"
    "Catalogs"
    "Customer"
    "Delivery"
    "Invoice"
    "Kitchen"
    "Meal"
    "Order"
    "Payment"
    "Quickserver"
    "Subscription"
)

PORTS=(
    4010
    4011
    4012
    4013
    4014
    4015
    4016
    4017
    4018
    4019
    4020
    4021
    4022
)

# Function to check if a port is listening
check_port() {
    local port=$1
    if command -v nc &> /dev/null; then
        nc -z localhost "$port" 2>/dev/null
        return $?
    elif command -v lsof &> /dev/null; then
        lsof -i ":$port" -sTCP:LISTEN -t >/dev/null 2>&1
        return $?
    else
        # Fallback: try to connect with curl
        curl -s -o /dev/null -w "%{http_code}" "http://localhost:$port" >/dev/null 2>&1
        return $?
    fi
}

# Function to get response from server
test_endpoint() {
    local port=$1
    curl -s -o /dev/null -w "%{http_code}" "http://localhost:$port" 2>/dev/null
}

echo -e "${BLUE}Checking server status...${NC}"
echo ""

success_count=0
failed_count=0

printf "%-15s %-10s %-15s %-30s\n" "Service" "Port" "Status" "Response"
echo "------------------------------------------------------------------------"

for i in "${!SERVICE_NAMES[@]}"; do
    service="${SERVICE_NAMES[$i]}"
    port="${PORTS[$i]}"

    if check_port "$port"; then
        response=$(test_endpoint "$port")
        printf "%-15s %-10s ${GREEN}%-15s${NC} %-30s\n" "$service" "$port" "✓ Running" "HTTP $response"
        ((success_count++))
    else
        printf "%-15s %-10s ${RED}%-15s${NC} %-30s\n" "$service" "$port" "✗ Not Running" "N/A"
        ((failed_count++))
    fi
done

echo ""
echo "=========================================="
echo -e "${GREEN}Running: $success_count${NC} | ${RED}Failed: $failed_count${NC}"
echo "=========================================="

# Show recent errors from logs if any failures
if [ $failed_count -gt 0 ] && [ -d "logs" ]; then
    echo ""
    echo -e "${YELLOW}Recent errors from logs:${NC}"
    echo ""
    
    for i in "${!SERVICE_NAMES[@]}"; do
        service="${SERVICE_NAMES[$i]}"
        port="${PORTS[$i]}"
        service_lower=$(echo "$service" | tr '[:upper:]' '[:lower:]')
        log_file="logs/${service_lower}_prism.log"

        if ! check_port "$port" && [ -f "$log_file" ]; then
            echo -e "${RED}=== $service ===${NC}"
            tail -n 5 "$log_file" 2>/dev/null || echo "No log file found"
            echo ""
        fi
    done
fi

# Exit with error code if any servers are down
if [ $failed_count -gt 0 ]; then
    exit 1
fi

exit 0

