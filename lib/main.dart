import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_one/features/health/list_page.dart';
import 'package:food_one/features/invoices/list_page.dart';
import 'package:food_one/features/statistics/list_page.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'OneFoodDialer - Invoice Management',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
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


