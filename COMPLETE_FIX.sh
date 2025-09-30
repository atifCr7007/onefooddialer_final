#!/bin/bash

# COMPLETE FIX FOR LANGUAGE VERSION OVERRIDE ERRORS
# This script fixes the ROOT CAUSE and regenerates all files correctly

set -e

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║  COMPLETE FIX FOR LANGUAGE VERSION OVERRIDE ERRORS             ║"
echo "║  This fixes the ROOT CAUSE and regenerates everything          ║"
echo "╚════════════════════════════════════════════════════════════════╝"
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

# Packages that need clean rebuild
CLEAN_REBUILD_PACKAGES=(
    "analytics_client"
    "meal_client"
    "order_client"
    "payment_client"
    "quickserver_client"
    "subscription_client"
)

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 1: Fix SDK Versions (ROOT CAUSE)"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

UPDATED=0
for package in "${CLIENT_PACKAGES[@]}"; do
    PUBSPEC_FILE="lib/client/$package/pubspec.yaml"
    
    if [ ! -f "$PUBSPEC_FILE" ]; then
        continue
    fi
    
    CURRENT_SDK=$(grep "sdk:" "$PUBSPEC_FILE" | head -1 | sed "s/.*sdk: *//")
    
    if [ "$CURRENT_SDK" != "$MAIN_SDK_VERSION" ]; then
        if [[ "$OSTYPE" == "darwin"* ]]; then
            sed -i '' "s/sdk: .*/sdk: $MAIN_SDK_VERSION/" "$PUBSPEC_FILE"
        else
            sed -i "s/sdk: .*/sdk: $MAIN_SDK_VERSION/" "$PUBSPEC_FILE"
        fi
        echo "✅ Updated $package SDK version to $MAIN_SDK_VERSION"
        UPDATED=$((UPDATED + 1))
    fi
done

if [ $UPDATED -eq 0 ]; then
    echo "✓ All SDK versions already correct"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 2: Delete All Old .g.dart Files"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

OLD_COUNT=$(find lib/client -name "*.g.dart" -type f | wc -l | tr -d ' ')
echo "Found $OLD_COUNT old .g.dart files"

if [ "$OLD_COUNT" -gt 0 ]; then
    find lib/client -name "*.g.dart" -type f -delete
    echo "✅ Deleted all old .g.dart files"
else
    echo "✓ No old .g.dart files to delete"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 3: Regenerate All Client Packages"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

TOTAL=${#CLIENT_PACKAGES[@]}
CURRENT=0

for package in "${CLIENT_PACKAGES[@]}"; do
    CURRENT=$((CURRENT + 1))
    PACKAGE_DIR="lib/client/$package"
    
    if [ ! -d "$PACKAGE_DIR" ]; then
        echo "[$CURRENT/$TOTAL] ⚠️  Skipping $package - directory not found"
        continue
    fi
    
    echo "[$CURRENT/$TOTAL] Processing $package..."
    cd "$PACKAGE_DIR"
    
    # Check if this package needs a clean rebuild
    NEEDS_CLEAN=false
    for clean_pkg in "${CLEAN_REBUILD_PACKAGES[@]}"; do
        if [ "$package" == "$clean_pkg" ]; then
            NEEDS_CLEAN=true
            break
        fi
    done
    
    if [ "$NEEDS_CLEAN" = true ]; then
        flutter clean > /dev/null 2>&1
    fi
    
    flutter pub get > /dev/null 2>&1
    flutter pub run build_runner build --delete-conflicting-outputs > /dev/null 2>&1
    
    echo "  ✅ Done"
    cd - > /dev/null
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 4: Update Main Project Dependencies"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

flutter pub get

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "STEP 5: Verify Fix"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

ERROR_COUNT=$(flutter analyze 2>&1 | grep -E "^  error" | wc -l | tr -d ' ')
NEW_G_DART_COUNT=$(find lib/client -name "*.g.dart" -type f | wc -l | tr -d ' ')

echo "📊 Results:"
echo "  - Generated .g.dart files: $NEW_G_DART_COUNT"
echo "  - Compilation errors: $ERROR_COUNT"
echo ""

if [ "$ERROR_COUNT" -eq "0" ]; then
    echo "╔════════════════════════════════════════════════════════════════╗"
    echo "║  ✅ SUCCESS! ALL ERRORS FIXED!                                 ║"
    echo "║                                                                ║"
    echo "║  You can now run your app:                                    ║"
    echo "║  flutter run                                                  ║"
    echo "╚════════════════════════════════════════════════════════════════╝"
else
    echo "╔════════════════════════════════════════════════════════════════╗"
    echo "║  ⚠️  WARNING: Still have $ERROR_COUNT errors                   ║"
    echo "║                                                                ║"
    echo "║  Run 'flutter analyze' to see details                         ║"
    echo "╚════════════════════════════════════════════════════════════════╝"
fi

echo ""

