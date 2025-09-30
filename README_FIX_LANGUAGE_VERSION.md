# How to Fix "Language Version Override" Errors - PERMANENTLY

## The Problem

When you run your Flutter app, you get errors like:

```
Error: The language version override has to be the same in the library and its part(s).
part 'serializers.g.dart';
     ^
```

These errors appear in multiple client packages (customer_client, delivery_client, kitchen_client, etc.)

## Root Cause

The **ROOT CAUSE** is:

1. **Main project** uses Dart SDK `^3.9.0`
2. **Client packages** were generated with Dart SDK `>=2.18.0 <4.0.0`
3. The `.g.dart` files were generated with the OLD SDK version
4. When Flutter compiles, it sees a version mismatch and fails

## Why Previous Fixes Didn't Work

❌ **Running `flutter clean`** - Only deletes build cache, doesn't fix SDK mismatch  
❌ **Running `build_runner`** - Regenerates with SAME wrong SDK version  
❌ **Running from package directories** - Still uses package's old SDK version  

The error keeps coming back because **the .g.dart files have the wrong SDK version baked in**.

## The COMPLETE Fix

### One Command to Fix Everything

```bash
./COMPLETE_FIX.sh
```

This script does EVERYTHING in the correct order:

1. ✅ Updates SDK version in all client packages to match main project
2. ✅ Deletes ALL old `.g.dart` files (they have wrong SDK version)
3. ✅ Regenerates ALL `.g.dart` files with correct SDK version
4. ✅ Updates main project dependencies
5. ✅ Verifies the fix worked

### What It Does

```
STEP 1: Fix SDK Versions (ROOT CAUSE)
  - Updates all client package pubspec.yaml files
  - Changes sdk: '>=2.18.0 <4.0.0' → sdk: ^3.9.0

STEP 2: Delete All Old .g.dart Files
  - Removes all .g.dart files that were generated with wrong SDK version

STEP 3: Regenerate All Client Packages
  - Runs flutter pub get in each package
  - Runs build_runner to generate NEW .g.dart files with correct SDK version

STEP 4: Update Main Project Dependencies
  - Runs flutter pub get in main project

STEP 5: Verify Fix
  - Checks that there are 0 compilation errors
```

## After Running the Fix

You should see:

```
╔════════════════════════════════════════════════════════════════╗
║  ✅ SUCCESS! ALL ERRORS FIXED!                                 ║
║                                                                ║
║  You can now run your app:                                    ║
║  flutter run                                                  ║
╚════════════════════════════════════════════════════════════════╝
```

## When to Run This Script

### ⚠️ ALWAYS run this script when:

1. **You regenerate API clients** using OpenAPI generator
2. **You see language version override errors** when running the app
3. **You update the main project's Dart SDK version**
4. **You add a new client package** to the project

### Why?

OpenAPI generator creates client packages with SDK version `>=2.18.0 <4.0.0` by default. This ALWAYS causes language version mismatch with your main project (Dart 3.9).

## Manual Fix (If Script Fails)

If for some reason the script doesn't work, here's the manual process:

### Step 1: Fix SDK Versions

For each client package in `lib/client/*/pubspec.yaml`:

```yaml
# Change this:
environment:
  sdk: '>=2.18.0 <4.0.0'

# To this:
environment:
  sdk: ^3.9.0
```

### Step 2: Delete Old .g.dart Files

```bash
find lib/client -name "*.g.dart" -type f -delete
```

### Step 3: Regenerate Each Package

```bash
cd lib/client/customer_client
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
cd ../../..

cd lib/client/delivery_client
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
cd ../../..

# Repeat for all 13 packages...
```

### Step 4: Update Main Project

```bash
flutter pub get
```

### Step 5: Verify

```bash
flutter analyze
# Should show: 0 errors
```

## Understanding the Error

### What Dart Sees

```
Main Project (pubspec.yaml)
  sdk: ^3.9.0
  └─> imports customer_client
        └─> customer_client/pubspec.yaml
              sdk: '>=2.18.0 <4.0.0'  ← MISMATCH!
              └─> address.dart (uses Dart 3.9)
                    └─> part 'address.g.dart' (generated with Dart 2.18)
                          ❌ ERROR: Version mismatch!
```

### Why It Happens

1. OpenAPI generator creates packages with conservative SDK version
2. The `.g.dart` files inherit the SDK version from their package
3. When main project (Dart 3.9) imports these packages, it expects Dart 3.9
4. But the `.g.dart` files were generated with Dart 2.18
5. Dart compiler sees mismatch and fails

## Prevention

### For Future API Client Generation

After generating any API client with OpenAPI generator:

```bash
# Generate the client
openapi-generator generate -i api.yaml -g dart-dio -o lib/client/new_client

# IMMEDIATELY run the fix
./COMPLETE_FIX.sh
```

### Add to Your Workflow

```bash
# Your workflow should be:
1. Generate API client
2. Run ./COMPLETE_FIX.sh
3. Commit changes
4. Run app
```

## Files in This Project

| File | Purpose |
|------|---------|
| `COMPLETE_FIX.sh` | **USE THIS!** Complete fix for language version errors |
| `fix_sdk_versions.sh` | Only fixes SDK versions (step 1) |
| `fix_all_client_packages.sh` | Only regenerates packages (step 3) |
| `QUICK_FIX_LANGUAGE_VERSION.sh` | ❌ DON'T USE - temporary fix that doesn't work |

## Troubleshooting

### Error: "Still have X errors"

If the script reports errors:

```bash
# See what the errors are
flutter analyze

# If they're still language version errors, run again:
./COMPLETE_FIX.sh
```

### Error: "Package not found"

Make sure you're running the script from the project root:

```bash
cd /Users/futurescape-technology-atif/Projects/food_one
./COMPLETE_FIX.sh
```

### Error: "Permission denied"

Make the script executable:

```bash
chmod +x COMPLETE_FIX.sh
./COMPLETE_FIX.sh
```

## Summary

| Problem | Root Cause | Solution |
|---------|-----------|----------|
| Language version override errors | SDK version mismatch between main project (3.9) and client packages (2.18) | Run `./COMPLETE_FIX.sh` |
| Errors keep coming back | Old `.g.dart` files have wrong SDK version | Delete `.g.dart` files and regenerate |
| Happens when running app | Flutter compiler sees version mismatch at compile time | Fix SDK versions FIRST, then regenerate |

## The Golden Rule

**NEVER run `flutter clean` from the root project directory!**

It deletes the `.g.dart` files from client packages, and running `build_runner` from root doesn't regenerate them properly.

**ALWAYS use `./COMPLETE_FIX.sh` instead!**

---

## Quick Reference

```bash
# When you see language version errors:
./COMPLETE_FIX.sh

# After generating new API clients:
./COMPLETE_FIX.sh

# Before running your app:
flutter analyze  # Should show 0 errors

# Then run your app:
flutter run
```

---

**Last Updated**: After fixing the recurring language version override errors  
**Status**: ✅ Working - 0 errors

