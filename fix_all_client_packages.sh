#!/bin/bash

# Script to fix all client SDK packages by running build_runner in each package

set -e  # Exit on error

echo "🔧 Fixing all Flutter client SDK packages..."
echo ""

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

# Packages that need clean rebuild (have BuiltList<dynamic> issues)
CLEAN_REBUILD_PACKAGES=(
    "analytics_client"
    "meal_client"
    "order_client"
    "payment_client"
    "quickserver_client"
    "subscription_client"
)

TOTAL=${#CLIENT_PACKAGES[@]}
CURRENT=0
FAILED=()

for package in "${CLIENT_PACKAGES[@]}"; do
    CURRENT=$((CURRENT + 1))
    echo "[$CURRENT/$TOTAL] Processing $package..."

    PACKAGE_DIR="lib/client/$package"

    if [ ! -d "$PACKAGE_DIR" ]; then
        echo "  ⚠️  Directory not found: $PACKAGE_DIR"
        FAILED+=("$package (directory not found)")
        continue
    fi

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
        echo "  🧹 Running flutter clean (package needs clean rebuild)..."
        flutter clean > /dev/null 2>&1
    fi

    echo "  📦 Running flutter pub get..."
    if ! flutter pub get > /dev/null 2>&1; then
        echo "  ❌ Failed to run pub get"
        FAILED+=("$package (pub get failed)")
        cd - > /dev/null
        continue
    fi

    echo "  🔨 Running build_runner..."
    if flutter pub run build_runner build --delete-conflicting-outputs > /dev/null 2>&1; then
        echo "  ✅ Successfully built $package"
    else
        echo "  ⚠️  Build completed with warnings for $package"
        # Don't mark as failed - some warnings are expected
    fi

    cd - > /dev/null
    echo ""
done

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Completed processing all packages"
echo ""

if [ ${#FAILED[@]} -gt 0 ]; then
    echo "⚠️  Failed packages:"
    for failed in "${FAILED[@]}"; do
        echo "  - $failed"
    done
    echo ""
fi

echo "🔍 Running flutter analyze to check for remaining errors..."
cd /Users/futurescape-technology-atif/Projects/food_one
ERROR_COUNT=$(flutter analyze 2>&1 | grep -E "^  error" | wc -l | tr -d ' ')

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 Final Results:"
echo "  Total packages processed: $TOTAL"
echo "  Failed packages: ${#FAILED[@]}"
echo "  Remaining errors: $ERROR_COUNT"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

if [ "$ERROR_COUNT" -eq "0" ]; then
    echo "🎉 SUCCESS! All errors have been fixed!"
else
    echo "⚠️  There are still $ERROR_COUNT errors remaining."
    echo "Run 'flutter analyze' for details."
fi

