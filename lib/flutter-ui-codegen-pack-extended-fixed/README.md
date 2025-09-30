# Flutter UI Codegen Pack — OneFoodDialer Admin (Extended, Fixed)

Generates a Flutter (Material 3) **Admin Dashboard** with Auth, Profile, Nav, Lists, Forms, and action buttons.

## What's fixed
- The generator **no longer mutates** `lib/ui/router.dart` (which caused a syntax issue in some shells).
- It now emits `lib/ui/feature_routes.g.dart` with `generatedFeatureRoutes()` you can spread into your router.

## Quick start
```bash
flutter pub add dio retrofit flutter_riverpod riverpod go_router intl shared_preferences
flutter pub add flutter_form_builder form_builder_validators
dart run bin/generate.dart --spec ../openapi.yaml --out ../onefooddialer_admin/lib/features
```

In `lib/ui/router.dart`:
```dart
import 'feature_routes.g.dart';
// ...
routes: [
  ShellRoute(
    builder: (ctx, st, child) => AdminShell(child: child),
    routes: [
      GoRoute(path: '/dashboard', builder: (ctx, st) => const _Dashboard()),
      GoRoute(path: '/profile', builder: (ctx, st) => const ProfilePage()),
      ...generatedFeatureRoutes(), // <<— add this
    ],
  ),
],
```
