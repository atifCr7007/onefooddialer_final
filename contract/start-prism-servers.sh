#!/bin/bash

# Prism Mock Servers Startup Script
# This script starts all Prism mock servers for OneFoodDialer microservices

set -e

echo "=========================================="
echo "OneFoodDialer Prism Mock Servers Launcher"
echo "=========================================="
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if prism-cli is installed
if ! command -v prism &> /dev/null; then
    echo -e "${RED}Error: Prism CLI is not installed.${NC}"
    echo -e "${YELLOW}Installing Prism CLI globally...${NC}"
    npm install -g @stoplight/prism-cli
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}Failed to install Prism CLI. Please install manually:${NC}"
        echo "npm install -g @stoplight/prism-cli"
        exit 1
    fi
    echo -e "${GREEN}Prism CLI installed successfully!${NC}"
fi

# Create logs directory
mkdir -p logs

# Arrays for services and ports
SERVICES=(
    "admin_openapi.yaml"
    "analytics_openapi.yaml"
    "auth_openapi.yaml"
    "catalogs_openapi.yaml"
    "customer_openapi.yaml"
    "delivery_openapi.yaml"
    "invoice_openapi.yaml"
    "kitchen_openapi.yaml"
    "meal_openapi.yaml"
    "order_openapi.yaml"
    "payment_openapi.yaml"
    "quickserver_openapi.yaml"
    "subscription_openapi.yaml"
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

# Kill existing prism processes
echo -e "${YELLOW}Stopping any existing Prism servers...${NC}"
pkill -f "prism mock" || true
sleep 2

# Start each mock server
echo -e "${BLUE}Starting Prism mock servers...${NC}"
echo ""

for i in "${!SERVICES[@]}"; do
    service="${SERVICES[$i]}"
    port="${PORTS[$i]}"
    service_name=$(basename "$service" _openapi.yaml)
    log_file="logs/${service_name}_prism.log"

    echo -e "${BLUE}Starting ${service_name} on port ${port}...${NC}"

    # Start prism in background and redirect output to log file
    nohup prism mock "$service" -p "$port" -d -h 0.0.0.0 > "$log_file" 2>&1 &
    pid=$!

    # Store PID
    echo $pid > "logs/${service_name}_prism.pid"

    # Wait a moment for server to start
    sleep 1

    # Check if process is still running
    if ps -p $pid > /dev/null 2>&1; then
        echo -e "${GREEN}✓ ${service_name} started successfully on port ${port}${NC}"
    else
        echo -e "${RED}✗ ${service_name} failed to start. Check logs/${service_name}_prism.log${NC}"
    fi
done

echo ""
echo -e "${GREEN}=========================================="
echo "All Prism servers started!"
echo "==========================================${NC}"
echo ""
echo "Port Mapping:"
echo "  Admin:        http://localhost:4010"
echo "  Analytics:    http://localhost:4011"
echo "  Auth:         http://localhost:4012"
echo "  Catalogs:     http://localhost:4013"
echo "  Customer:     http://localhost:4014"
echo "  Delivery:     http://localhost:4015"
echo "  Invoice:      http://localhost:4016"
echo "  Kitchen:      http://localhost:4017"
echo "  Meal:         http://localhost:4018"
echo "  Order:        http://localhost:4019"
echo "  Payment:      http://localhost:4020"
echo "  Quickserver:  http://localhost:4021"
echo "  Subscription: http://localhost:4022"
echo ""
echo -e "${YELLOW}Logs are available in the 'logs' directory${NC}"
echo -e "${YELLOW}To stop all servers, run: ./stop-prism-servers.sh${NC}"
echo -e "${YELLOW}To check server status, run: ./check-prism-servers.sh${NC}"

