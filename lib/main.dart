import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_one/features/health/list_page.dart';
import 'package:food_one/features/invoices/list_page.dart';
import 'package:food_one/features/statistics/list_page.dart';
import 'package:food_one/auth/login_page.dart';
import 'package:food_one/auth/forgot_password_page.dart';
import 'package:food_one/auth/reset_password_page.dart';
import 'package:food_one/services/auth_service.dart';
import 'package:food_one/config/app_config.dart';
import 'package:food_one/admin/router/admin_router.dart' as admin;
import 'package:go_router/go_router.dart';


void main() {
  // Print configuration on startup
  AppConfig.printConfig();
  AppConfig.validate();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'OneFoodDialer - Admin Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _createRouter(ref),
    );
  }
}

GoRouter _createRouter(WidgetRef ref) {
  return GoRouter(
    initialLocation: '/auth/login',
    redirect: (context, state) {
      final isAuthenticated = ref.read(isAuthenticatedProvider);
      final isAuthRoute = state.matchedLocation.startsWith('/auth');

      // If not authenticated and trying to access protected route, redirect to login
      if (!isAuthenticated && !isAuthRoute) {
        return '/auth/login';
      }

      // If authenticated and trying to access auth route, redirect to admin
      if (isAuthenticated && isAuthRoute) {
        return '/admin';
      }

      return null; // No redirect needed
    },
    routes: [
      // Auth routes (public)
      GoRoute(
        path: '/auth/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/auth/forgot-password',
        builder: (context, state) => const ForgotPasswordPage(),
      ),
      GoRoute(
        path: '/auth/reset-password',
        builder: (context, state) {
          final email = state.uri.queryParameters['email'] ?? '';
          final token = state.uri.queryParameters['token'] ?? '';
          return ResetPasswordPage(email: email, token: token);
        },
      ),

      // Admin routes (protected) - redirect to admin router
      GoRoute(
        path: '/admin',
        redirect: (context, state) => '/dashboard',
      ),

      // Legacy routes for backward compatibility
      GoRoute(
        path: '/',
        redirect: (context, state) => '/admin',
      ),
      GoRoute(
        path: '/invoices',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Invoices')),
          body: const InvoicesListPage(),
        ),
      ),
      GoRoute(
        path: '/health',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Health')),
          body: const HealthListPage(),
        ),
      ),
      GoRoute(
        path: '/statistics',
        builder: (context, state) => Scaffold(
          appBar: AppBar(title: const Text('Statistics')),
          body: const StatisticsListPage(),
        ),
      ),
    ],
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OneFoodDialer - Invoice Management'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to OneFoodDialer Invoice Management',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => context.go('/invoices'),
              child: const Text('Manage Invoices'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/health'),
              child: const Text('Health Check'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/statistics'),
              child: const Text('View Statistics'),
            ),
          ],
        ),
      ),
    );
  }
}


