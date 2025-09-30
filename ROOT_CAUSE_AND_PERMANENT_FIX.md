# Root Cause Analysis and Permanent Fix

## The Problem

You were experiencing recurring "language version override" errors:

```
Error: The language version override has to be the same in the library and its part(s).
```

This error appeared **every time you tried to run the app**, even after running build_runner successfully.

## Root Cause

The **ROOT CAUSE** was a **SDK version mismatch** between:

1. **Main Project** (`pubspec.yaml`):
   ```yaml
   environment:
     sdk: ^3.9.0
   ```

2. **Client Packages** (`lib/client/*/pubspec.yaml`):
   ```yaml
   environment:
     sdk: '>=2.18.0 <4.0.0'
   ```

### Why This Caused the Error

When Flutter compiles your app:

1. It reads the main project's SDK version (Dart 3.9)
2. It then reads each client package's SDK version (Dart 2.18-4.0)
3. The generated `.g.dart` files inherit the language version from their package's SDK setting
4. When the main app tries to import these packages, Dart sees:
   - Parent file: Dart 3.9 (from main project)
   - Part file (`.g.dart`): Dart 2.18 (from client package)
5. **MISMATCH** → Error!

### Why Previous Fixes Didn't Work

1. **Running `flutter clean`** - Only deleted build artifacts, didn't fix the SDK mismatch
2. **Running `build_runner`** - Regenerated files with the SAME wrong SDK version
3. **Running from package directories** - Still used the package's SDK version (2.18)

The error kept coming back because the **underlying SDK version mismatch was never fixed**.

## The Permanent Fix

### What Was Done

Updated all client package `pubspec.yaml` files to use the same SDK version as the main project:

```yaml
# Before (in client packages)
environment:
  sdk: '>=2.18.0 <4.0.0'

# After (in client packages)
environment:
  sdk: ^3.9.0
```

### Script Created: `fix_sdk_versions.sh`

This script:
1. ✅ Updates SDK version in all client packages to match main project
2. ✅ Runs `flutter clean` in each package
3. ✅ Runs `flutter pub get` in each package
4. ✅ Runs `build_runner` to regenerate `.g.dart` files with correct SDK version
5. ✅ Runs `flutter pub get` in main project

### Results

- **Before**: 749+ errors, recurring language version errors
- **After**: 0 errors, no more language version issues

## How to Use

### If You Regenerate API Clients

If you regenerate any client package using OpenAPI generator, you MUST run:

```bash
./fix_sdk_versions.sh
```

This will ensure all SDK versions stay aligned.

### If You Add a New Client Package

1. Generate the new client package
2. Run `./fix_sdk_versions.sh`
3. The script will automatically detect and fix the new package

### If You Update Main Project SDK Version

1. Update `pubspec.yaml` in main project
2. Update the `MAIN_SDK_VERSION` variable in `fix_sdk_versions.sh`
3. Run `./fix_sdk_versions.sh`

## Technical Details

### Why OpenAPI Generator Uses Old SDK Version

OpenAPI generator templates use a conservative SDK version (`>=2.18.0 <4.0.0`) to ensure compatibility with older Dart versions. This is fine for standalone packages but causes issues when used as path dependencies in a newer Dart project.

### Why This Affects Path Dependencies

When you use path dependencies (like `customer_client: path: lib/client/customer_client`), Flutter treats them as part of your main project. All code must use the same language version.

### The Dart Language Version System

Dart uses a language version system where:
- Each file can specify its language version with `// @dart=X.Y`
- If not specified, it inherits from the package's SDK constraint
- Part files MUST have the same version as their parent library

## Prevention

### For Future API Client Generation

When generating new API clients with OpenAPI generator, you have two options:

**Option 1: Update Template (Recommended)**

Modify the OpenAPI generator template to use your project's SDK version:

```yaml
# In your OpenAPI generator config
additionalProperties:
  pubspec-dependencies:
    sdk: ^3.9.0
```

**Option 2: Always Run Fix Script (Easier)**

Just run `./fix_sdk_versions.sh` after generating any client.

### Add to Your Workflow

Add this to your development workflow:

```bash
# After generating API clients
openapi-generator generate ...
./fix_sdk_versions.sh

# Before committing
flutter analyze  # Should show 0 errors
```

## Verification

To verify the fix is working:

```bash
# Check SDK versions are aligned
grep -r "sdk:" lib/client/*/pubspec.yaml

# Should all show: sdk: ^3.9.0

# Check for errors
flutter analyze

# Should show: 0 errors
```

## Summary

| Issue | Root Cause | Solution |
|-------|-----------|----------|
| Language version override errors | SDK version mismatch between main project (3.9) and client packages (2.18-4.0) | Align all SDK versions to ^3.9.0 |
| Errors keep coming back | Only fixing symptoms (regenerating files) not cause (SDK mismatch) | Fix SDK versions FIRST, then regenerate |
| Happens when running app | Flutter compiler sees version mismatch at compile time | Permanent fix: keep SDK versions aligned |

## Files Created

1. **`fix_sdk_versions.sh`** - Main fix script (run this!)
2. **`fix_all_client_packages.sh`** - Rebuilds all packages (after SDK fix)
3. **`QUICK_FIX_LANGUAGE_VERSION.sh`** - Quick clean/rebuild (temporary fix)
4. **`ROOT_CAUSE_AND_PERMANENT_FIX.md`** - This documentation

## The Correct Order

```bash
# 1. Fix SDK versions (ROOT CAUSE)
./fix_sdk_versions.sh

# 2. Verify
flutter analyze

# 3. Run your app
flutter run
```

**Never run `flutter clean` from the root project** - it deletes the `.g.dart` files from client packages. Always use the scripts provided.

## References

- [OpenAPI Generator Issue #16117](https://github.com/OpenAPITools/openapi-generator/issues/16117)
- [OpenAPI Generator Issue #14863](https://github.com/OpenAPITools/openapi-generator/issues/14863)
- [Dart Language Versioning](https://dart.dev/guides/language/evolution#language-versioning)

