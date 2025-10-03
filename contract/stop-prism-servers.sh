#!/bin/bash

# Prism Mock Servers Stop Script
# This script stops all running Prism mock servers

echo "=========================================="
echo "Stopping OneFoodDialer Prism Mock Servers"
echo "=========================================="
echo ""

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Stop all prism processes
echo -e "${YELLOW}Stopping all Prism servers...${NC}"

# Kill by PID files if they exist
if [ -d "logs" ]; then
    for pid_file in logs/*_prism.pid; do
        if [ -f "$pid_file" ]; then
            pid=$(cat "$pid_file")
            service_name=$(basename "$pid_file" _prism.pid)
            
            if ps -p "$pid" > /dev/null 2>&1; then
                kill "$pid"
                echo -e "${GREEN}✓ Stopped ${service_name} (PID: ${pid})${NC}"
            else
                echo -e "${YELLOW}⚠ ${service_name} was not running${NC}"
            fi
            
            rm "$pid_file"
        fi
    done
fi

# Fallback: kill all prism mock processes
pkill -f "prism mock" && echo -e "${GREEN}✓ All Prism processes terminated${NC}" || echo -e "${YELLOW}⚠ No Prism processes found${NC}"

echo ""
echo -e "${GREEN}All Prism servers stopped!${NC}"

