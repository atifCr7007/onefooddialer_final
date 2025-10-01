#!/bin/bash

# Script to kill all running mock servers
# Run with: bash lib/mock_server/kill_all_mocks.sh

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "🛑 Stopping All OneFoodDialer Mock Servers"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Array of ports used by mock servers
PORTS=(8001 8002 8003 8004 8005 8006 8007 8008 8009 8010 8011 8012)

for PORT in "${PORTS[@]}"; do
  # Find process using the port
  PID=$(lsof -ti:$PORT)
  
  if [ -n "$PID" ]; then
    echo "Killing process on port $PORT (PID: $PID)..."
    kill -9 $PID 2>/dev/null
    if [ $? -eq 0 ]; then
      echo "✅ Successfully killed process on port $PORT"
    else
      echo "❌ Failed to kill process on port $PORT"
    fi
  else
    echo "⚪ No process running on port $PORT"
  fi
done

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "✅ All mock servers stopped!"
echo "═══════════════════════════════════════════════════════════"
echo ""

