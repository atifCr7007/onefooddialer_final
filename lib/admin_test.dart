import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Simple test app to verify admin integration without the full client
void main() {
  runApp(const ProviderScope(child: AdminTestApp()));
}

class AdminTestApp extends StatelessWidget {
  const AdminTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Admin Test',
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AdminTestHome(),
    ),
    GoRoute(
      path: '/admin/dashboard',
      builder: (context, state) => const AdminTestDashboard(),
    ),
    GoRoute(
      path: '/admin/health',
      builder: (context, state) => const AdminTestHealth(),
    ),
    GoRoute(
      path: '/admin/users',
      builder: (context, state) => const AdminTestUsers(),
    ),
    GoRoute(
      path: '/admin/roles',
      builder: (context, state) => const AdminTestRoles(),
    ),
    GoRoute(
      path: '/admin/system',
      builder: (context, state) => const AdminTestSystem(),
    ),
  ],
);

class AdminTestHome extends StatelessWidget {
  const AdminTestHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Test')),
      body: Column(
        children: [
          const Text('Admin Client Integration Test'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => context.go('/admin/dashboard'),
            child: const Text('Dashboard'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/admin/health'),
            child: const Text('Health'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/admin/users'),
            child: const Text('Users'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/admin/roles'),
            child: const Text('Roles'),
          ),
          ElevatedButton(
            onPressed: () => context.go('/admin/system'),
            child: const Text('System'),
          ),
        ],
      ),
    );
  }
}

class AdminTestDashboard extends StatelessWidget {
  const AdminTestDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.dashboard, size: 64),
            SizedBox(height: 16),
            Text('Admin Dashboard Page'),
            Text('This would show dashboard metrics and overview'),
          ],
        ),
      ),
    );
  }
}

class AdminTestHealth extends StatelessWidget {
  const AdminTestHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('System Health')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.health_and_safety, size: 64),
            SizedBox(height: 16),
            Text('System Health Page'),
            Text('This would show system health monitoring'),
          ],
        ),
      ),
    );
  }
}

class AdminTestUsers extends StatelessWidget {
  const AdminTestUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Management')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people, size: 64),
            SizedBox(height: 16),
            Text('User Management Page'),
            Text('This would show user CRUD operations'),
          ],
        ),
      ),
    );
  }
}

class AdminTestRoles extends StatelessWidget {
  const AdminTestRoles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Role Management')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.security, size: 64),
            SizedBox(height: 16),
            Text('Role Management Page'),
            Text('This would show role and permissions management'),
          ],
        ),
      ),
    );
  }
}

class AdminTestSystem extends StatelessWidget {
  const AdminTestSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('System Settings')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.settings, size: 64),
            SizedBox(height: 16),
            Text('System Settings Page'),
            Text('This would show system configuration'),
          ],
        ),
      ),
    );
  }
}
