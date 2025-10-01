#!/bin/bash

# OneFoodDialer Development Startup Script
# This script kills old mock servers, starts new ones, and provides instructions for running the Flutter app

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "🚀 OneFoodDialer Development Environment Setup"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Step 1: Kill existing mock servers
echo "Step 1: Killing existing mock servers..."
bash lib/mock_server/kill_all_mocks.sh

echo ""
echo "Step 2: Starting all mock servers..."
echo ""
echo "⚠️  IMPORTANT: Keep this terminal window open!"
echo "⚠️  Mock servers will run in this terminal."
echo "⚠️  Open a NEW terminal to run 'flutter run'"
echo ""
echo "Press Ctrl+C to stop all mock servers when done."
echo ""

# Wait a moment for user to read
sleep 2

# Step 2: Start mock servers
dart run lib/mock_server/start_all_mocks.dart

