#!/bin/bash

# Quick Fix Script for "Language Version Override" Error
# This script fixes the common Dart/Flutter error:
# "The language version override has to be the same in the library and its part(s)."

echo "🔧 Fixing Language Version Override Error..."
echo ""

echo "Step 1: Cleaning build cache..."
flutter clean
echo "✅ Build cache cleaned"
echo ""

echo "Step 2: Fetching dependencies..."
flutter pub get
echo "✅ Dependencies fetched"
echo ""

echo "Step 3: Regenerating build files..."
flutter pub run build_runner build --delete-conflicting-outputs
echo "✅ Build files regenerated"
echo ""

echo "Step 4: Verifying fix..."
ERRORS=$(flutter analyze 2>&1 | grep -i "language version" | wc -l | tr -d ' ')

if [ "$ERRORS" -eq "0" ]; then
    echo "✅ SUCCESS! Language version errors are fixed."
    echo ""
    echo "Note: You may still have other build errors unrelated to language versions."
    echo "Run 'flutter analyze' to see remaining issues."
else
    echo "⚠️  WARNING: Still found $ERRORS language version errors."
    echo "Please check the output of 'flutter analyze' for details."
fi

echo ""
echo "Done!"

