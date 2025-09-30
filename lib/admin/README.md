# OneFoodDialer Admin Dashboard

A comprehensive Flutter admin dashboard shell for managing OneFoodDialer's microservices architecture.

## Features

### 🎨 Theme & Localization
- **Dark/Light Mode**: Automatic theme switching with user preference persistence
- **Multi-language Support**: Built-in support for English, Spanish, French, Arabic, and Hindi
- **Responsive Design**: Adapts to desktop, tablet, and mobile screen sizes

### 🧭 Navigation
- **Hierarchical Sidebar**: Organized by microservices with expandable sub-features
- **Breadcrumb Navigation**: Clear navigation context in the main content area
- **Dynamic Routing**: Content area updates without full page navigation

### 🏗️ Architecture
- **Clean Architecture**: Follows data → domain → presentation separation
- **State Management**: Riverpod for theme, language, and navigation state
- **Modular Design**: Easy integration with generated UI components

## Project Structure

```
lib/admin/
├── admin_app.dart              # Main admin application
├── providers/                  # State management
│   ├── theme_provider.dart     # Theme and dark mode
│   ├── locale_provider.dart    # Language switching
│   └── navigation_provider.dart # Navigation state
├── widgets/                    # UI components
│   ├── admin_shell.dart        # Main shell layout
│   ├── admin_navbar.dart       # Top navigation bar
│   ├── admin_sidebar.dart      # Left sidebar navigation
│   └── admin_bodycontent.dart  # Main content area
├── router/                     # Routing configuration
│   └── admin_router.dart       # GoRouter setup with shell
└── README.md                   # This documentation
```

## Integration with Code Generation

### Automatic Feature Registration

The admin shell automatically integrates with the `flutter-ui-codegen-pack-extended-fixed` system:

1. **Microservice Configuration**: Edit `lib/admin/providers/navigation_provider.dart` to add new microservices:

```dart
MicroserviceConfig(
  id: 'new_service',
  name: 'New Service',
  icon: Icons.new_service_icon,
  clientPath: 'lib/client/new_service_client',
  features: [
    FeatureConfig(
      id: 'feature1',
      name: 'Feature 1',
      icon: Icons.feature_icon,
      route: '/features/new_service/feature1',
    ),
  ],
),
```

2. **Route Registration**: Generated routes are automatically included via `lib/ui/feature_routes.g.dart`

3. **Sidebar Integration**: Features appear automatically in the sidebar navigation

### Code Generation Workflow

1. **Add OpenAPI Spec**: Place your service's OpenAPI specification in `contract/`
2. **Generate Client**: Run the OpenAPI generator to create the client in `lib/client/`
3. **Generate UI**: Run the UI code generator:
   ```bash
   cd lib/flutter-ui-codegen-pack-extended-fixed
   dart bin/generate.dart --spec ../../contract/your_service.yaml --out ../../lib/features
   ```
4. **Update Configuration**: Add the new service to `microservicesConfigProvider`
5. **Test**: The new features will appear in the admin dashboard automatically

### Generated File Structure

```
lib/features/your_service/
├── list_page.dart          # Generated list view
├── details_page.dart       # Generated detail view
├── form_page.dart          # Generated form view
└── providers.dart          # Generated Riverpod providers
```

## Usage

### Running the Admin Dashboard

```bash
# Run the admin dashboard
flutter run -t lib/admin_main.dart

# Run with specific API configuration
flutter run -t lib/admin_main.dart \
  --dart-define=API_URL=https://your-api.com \
  --dart-define=JWT_TOKEN=your-token
```

### Theme Management

```dart
// Toggle theme
ref.read(themeModeProvider.notifier).toggleTheme();

// Set specific theme
ref.read(themeModeProvider.notifier).setTheme(ThemeMode.dark);
```

### Language Management

```dart
// Change language
ref.read(localeProvider.notifier).setLocale(Locale('es', 'ES'));
```

### Navigation

```dart
// Navigate to a feature
ref.read(navigationProvider.notifier).selectRoute('/features/invoices');
context.go('/features/invoices');

// Toggle sidebar
ref.read(navigationProvider.notifier).toggleSidebar();
```

## Customization

### Adding New Themes

Edit `lib/admin/providers/theme_provider.dart`:

```dart
class AppTheme {
  ThemeData get customTheme => ThemeData(
    // Your custom theme configuration
  );
}
```

### Adding New Languages

1. Add locale to `supportedLocales` in `lib/admin/providers/locale_provider.dart`
2. Add language name mapping in `getLanguageName()` method
3. Add Flutter localization files if needed

### Custom Navigation Items

Add static navigation items in `lib/admin/widgets/admin_sidebar.dart`:

```dart
_buildNavigationTile(
  context: context,
  ref: ref,
  icon: Icons.custom_icon,
  title: 'Custom Feature',
  route: '/custom',
  isSelected: navigationState.selectedRoute == '/custom',
  isExpanded: navigationState.isSidebarExpanded,
),
```

## API Integration

### Client Configuration

Each microservice client should be configured in its respective provider:

```dart
final serviceClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/service',
    byIdPath: '/service/{id}',
  );
});
```

### Authentication

JWT tokens are automatically included in API requests when configured via environment variables:

```bash
--dart-define=JWT_TOKEN=your-jwt-token
```

## Development Guidelines

### Adding New Microservices

1. **Create Client**: Generate OpenAPI client in `lib/client/service_name_client/`
2. **Add Configuration**: Update `microservicesConfigProvider` with service details
3. **Generate UI**: Run code generator for the service
4. **Test Integration**: Verify features appear in sidebar and work correctly

### State Management Best Practices

- Use Riverpod providers for all state management
- Keep providers focused on single responsibilities
- Use `StateNotifier` for complex state that changes over time
- Use `Provider` for configuration and dependencies

### UI Component Guidelines

- Follow Material Design 3 principles
- Ensure responsive design for all screen sizes
- Use theme colors and typography consistently
- Implement proper loading and error states

## Troubleshooting

### Common Issues

1. **Generated routes not appearing**: Check that `feature_routes.g.dart` is properly imported
2. **Theme not persisting**: Ensure `shared_preferences` is properly configured
3. **Sidebar not responsive**: Check media query breakpoints in `admin_shell.dart`
4. **API calls failing**: Verify JWT token and API URL configuration

### Debug Mode

Enable debug logging by setting:

```dart
// In main()
debugPrint('Admin dashboard starting...');
```

## Contributing

When adding new features to the admin dashboard:

1. Follow the existing code structure and patterns
2. Add proper documentation for new components
3. Ensure responsive design compatibility
4. Test with multiple themes and languages
5. Update this README with any new configuration options

## License

This admin dashboard is part of the OneFoodDialer project and follows the same licensing terms.
