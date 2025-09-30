#!/bin/bash

# Script to fix SDK version mismatch in all client packages
# This is the ROOT CAUSE of "language version override" errors

set -e

echo "🔧 Fixing SDK version mismatch in client packages..."
echo ""

# Main project SDK version
MAIN_SDK_VERSION="^3.9.0"

# List of all client packages
CLIENT_PACKAGES=(
    "admin_client"
    "analytics_client"
    "auth_client"
    "catalogs_client"
    "customer_client"
    "delivery_client"
    "invoice_client"
    "kitchen_client"
    "meal_client"
    "order_client"
    "payment_client"
    "quickserver_client"
    "subscription_client"
)

echo "📋 Main project SDK version: $MAIN_SDK_VERSION"
echo ""

TOTAL=${#CLIENT_PACKAGES[@]}
CURRENT=0
UPDATED=0

for package in "${CLIENT_PACKAGES[@]}"; do
    CURRENT=$((CURRENT + 1))
    PUBSPEC_FILE="lib/client/$package/pubspec.yaml"
    
    if [ ! -f "$PUBSPEC_FILE" ]; then
        echo "[$CURRENT/$TOTAL] ⚠️  Skipping $package - pubspec.yaml not found"
        continue
    fi
    
    # Check current SDK version
    CURRENT_SDK=$(grep "sdk:" "$PUBSPEC_FILE" | head -1 | sed "s/.*sdk: *//")
    
    echo "[$CURRENT/$TOTAL] $package"
    echo "  Current SDK: $CURRENT_SDK"
    
    if [ "$CURRENT_SDK" != "$MAIN_SDK_VERSION" ]; then
        # Update SDK version using sed
        if [[ "$OSTYPE" == "darwin"* ]]; then
            # macOS
            sed -i '' "s/sdk: .*/sdk: $MAIN_SDK_VERSION/" "$PUBSPEC_FILE"
        else
            # Linux
            sed -i "s/sdk: .*/sdk: $MAIN_SDK_VERSION/" "$PUBSPEC_FILE"
        fi
        
        NEW_SDK=$(grep "sdk:" "$PUBSPEC_FILE" | head -1 | sed "s/.*sdk: *//")
        echo "  ✅ Updated to: $NEW_SDK"
        UPDATED=$((UPDATED + 1))
    else
        echo "  ✓ Already correct"
    fi
    echo ""
done

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 Summary:"
echo "  Total packages: $TOTAL"
echo "  Updated: $UPDATED"
echo "  Already correct: $((TOTAL - UPDATED))"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

if [ $UPDATED -gt 0 ]; then
    echo "🔄 Now running flutter pub get and build_runner for updated packages..."
    echo ""
    
    for package in "${CLIENT_PACKAGES[@]}"; do
        PUBSPEC_FILE="lib/client/$package/pubspec.yaml"
        
        if [ ! -f "$PUBSPEC_FILE" ]; then
            continue
        fi
        
        echo "📦 Processing $package..."
        cd "lib/client/$package"
        
        # Clean, get dependencies, and rebuild
        flutter clean > /dev/null 2>&1
        flutter pub get > /dev/null 2>&1
        flutter pub run build_runner build --delete-conflicting-outputs > /dev/null 2>&1
        
        cd - > /dev/null
        echo "  ✅ Done"
    done
    
    echo ""
    echo "🔍 Running flutter pub get in main project..."
    flutter pub get
    
    echo ""
    echo "✅ All done! SDK versions are now aligned."
    echo ""
    echo "🎯 Next step: Try running your app again."
else
    echo "ℹ️  No updates needed. All packages already have correct SDK version."
fi

