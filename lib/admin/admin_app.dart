import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'providers/theme_provider.dart';
import 'providers/locale_provider.dart';
import 'router/admin_router.dart';

/// Main admin application widget
class AdminApp extends ConsumerWidget {
  const AdminApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final locale = ref.watch(localeProvider);
    final appTheme = ref.watch(appThemeProvider);
    final router = ref.watch(adminRouterProvider);

    return MaterialApp.router(
      title: 'OneFoodDialer Admin',
      debugShowCheckedModeBanner: false,

      // Theme configuration
      theme: appTheme.lightTheme,
      darkTheme: appTheme.darkTheme,
      themeMode: themeMode,

      // Localization configuration
      locale: locale,
      supportedLocales: supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // Router configuration
      routerConfig: router,
      
      // Builder for additional configuration
      builder: (context, child) {
        return MediaQuery(
          // Ensure text scaling doesn't break the layout
          data: MediaQuery.of(context).copyWith(
            textScaler: MediaQuery.of(context).textScaler.clamp(
              minScaleFactor: 0.8,
              maxScaleFactor: 1.2,
            ),
          ),
          child: child!,
        );
      },
    );
  }
}

/// Admin app initialization
class AdminAppInitializer extends ConsumerWidget {
  const AdminAppInitializer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: _initializeApp(ref),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Text('Initializing OneFoodDialer Admin...'),
                  ],
                ),
              ),
            ),
          );
        }

        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 64,
                      color: Colors.red,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Failed to initialize app',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      snapshot.error.toString(),
                      style: const TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        // Restart the app
                        // In a real app, you might want to implement proper restart logic
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return const AdminApp();
      },
    );
  }

  Future<void> _initializeApp(WidgetRef ref) async {
    // Initialize theme and locale providers
    // These will load saved preferences
    await Future.wait([
      Future.delayed(const Duration(milliseconds: 500)), // Simulate loading
      // Add any other initialization logic here
    ]);
  }
}

/// Error boundary widget for the admin app
class AdminErrorBoundary extends StatefulWidget {
  final Widget child;
  
  const AdminErrorBoundary({
    super.key,
    required this.child,
  });

  @override
  State<AdminErrorBoundary> createState() => _AdminErrorBoundaryState();
}

class _AdminErrorBoundaryState extends State<AdminErrorBoundary> {
  Object? error;
  StackTrace? stackTrace;

  @override
  Widget build(BuildContext context) {
    if (error != null) {
      return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 64,
                    color: Colors.red,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Something went wrong',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    error.toString(),
                    style: const TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        error = null;
                        stackTrace = null;
                      });
                    },
                    child: const Text('Try Again'),
                  ),
                  const SizedBox(height: 16),
                  if (stackTrace != null)
                    ExpansionTile(
                      title: const Text('Error Details'),
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            stackTrace.toString(),
                            style: const TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return widget.child;
  }

  @override
  void initState() {
    super.initState();

    // Catch errors in the widget tree
    FlutterError.onError = (FlutterErrorDetails details) {
      if (mounted) {
        setState(() {
          error = details.exception;
          stackTrace = details.stack;
        });
      }
    };
  }
}

/// Main entry point for the admin application
class OneFoodDialerAdmin extends StatelessWidget {
  const OneFoodDialerAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: AdminAppInitializer(),
    );
  }
}
