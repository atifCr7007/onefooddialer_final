#!/bin/bash

echo "🧪 Testing Auth Mock Server Connection"
echo "========================================"
echo ""

echo "1. Testing if port 8012 is listening..."
lsof -i :8012 || echo "❌ Port 8012 is not in use"
echo ""

echo "2. Testing HTTP connection to auth server..."
curl -v http://localhost:8012/auth/login \
  -H "Content-Type: application/json" \
  -d '{"username":"admin@onefood.com","password":"admin123"}' \
  2>&1 | head -30
echo ""

echo "3. Testing with explicit OPTIONS request (CORS preflight)..."
curl -v -X OPTIONS http://localhost:8012/auth/login \
  -H "Origin: http://localhost" \
  -H "Access-Control-Request-Method: POST" \
  -H "Access-Control-Request-Headers: Content-Type" \
  2>&1 | grep -i "access-control"
echo ""

echo "✅ Test complete"

