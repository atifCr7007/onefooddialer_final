import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/admin_shell.dart';
import '../../ui/feature_routes.g.dart';

// Import admin pages
import '../../features/admin/dashboard_page.dart';
import '../../features/admin/health_page.dart';
import '../../features/admin/users_page.dart';
import '../../features/admin/roles_page.dart';
import '../../features/admin/system_page.dart';

// Import customer pages
import '../../features/customer/customers_page.dart';



/// Admin router configuration with shell routing
final adminRouter = GoRouter(
  initialLocation: '/dashboard',
  routes: [
    // Shell route that wraps all admin pages
    ShellRoute(
      builder: (context, state, child) {
        return AdminShell(child: child);
      },
      routes: [
        // Dashboard
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardPage(),
        ),

        // Generated feature routes
        ...generatedFeatureRoutes(),

        // Admin routes
        GoRoute(
          path: '/admin/dashboard',
          builder: (context, state) => const AdminDashboardPage(),
        ),

        GoRoute(
          path: '/admin/health',
          builder: (context, state) => const AdminHealthPage(),
        ),

        GoRoute(
          path: '/admin/users',
          builder: (context, state) => const AdminUsersPage(),
        ),

        GoRoute(
          path: '/admin/roles',
          builder: (context, state) => const AdminRolesPage(),
        ),

        GoRoute(
          path: '/admin/system',
          builder: (context, state) => const AdminSystemPage(),
        ),

        // Additional manual routes
        GoRoute(
          path: '/features/kitchen/orders',
          builder: (context, state) => const PlaceholderPage(
            title: 'Kitchen Orders',
            description: 'Kitchen order management will be generated here',
          ),
        ),

        GoRoute(
          path: '/features/kitchen/inventory',
          builder: (context, state) => const PlaceholderPage(
            title: 'Kitchen Inventory',
            description: 'Kitchen inventory management will be generated here',
          ),
        ),

        GoRoute(
          path: '/features/payment/transactions',
          builder: (context, state) => const PlaceholderPage(
            title: 'Payment Transactions',
            description: 'Payment transaction management will be generated here',
          ),
        ),

        GoRoute(
          path: '/features/payment/refunds',
          builder: (context, state) => const PlaceholderPage(
            title: 'Payment Refunds',
            description: 'Payment refund management will be generated here',
          ),
        ),

        GoRoute(
          path: '/features/customers',
          builder: (context, state) => const CustomersPage(),
        ),

        GoRoute(
          path: '/features/customer/support',
          builder: (context, state) => const PlaceholderPage(
            title: 'Customer Support',
            description: 'Customer support management will be generated here',
          ),
        ),

        GoRoute(
          path: '/features/deliveries',
          builder: (context, state) => const PlaceholderPage(
            title: 'Deliveries',
            description: 'Delivery management will be generated here',
          ),
        ),

        GoRoute(
          path: '/features/delivery/drivers',
          builder: (context, state) => const PlaceholderPage(
            title: 'Delivery Drivers',
            description: 'Driver management will be generated here',
          ),
        ),

        // System routes
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsPage(),
        ),

        GoRoute(
          path: '/help',
          builder: (context, state) => const HelpPage(),
        ),
      ],
    ),

    // Auth routes (outside shell)
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),

    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),
  ],
);

/// Placeholder page for features that will be generated
class PlaceholderPage extends StatelessWidget {
  final String title;
  final String description;

  const PlaceholderPage({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Icon(
                    Icons.construction,
                    size: 64,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Coming Soon',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$title feature will be auto-generated from OpenAPI specs'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.auto_awesome),
                    label: const Text('Generate from OpenAPI'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Settings page
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Settings',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Application Settings',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(Icons.palette),
                    title: const Text('Theme'),
                    subtitle: const Text('Customize app appearance'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: const Text('Language'),
                    subtitle: const Text('Change app language'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text('Notifications'),
                    subtitle: const Text('Manage notification preferences'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Help page
class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Help & Support',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Documentation',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: const Icon(Icons.book),
                    title: const Text('User Guide'),
                    subtitle: const Text('Learn how to use the admin dashboard'),
                    trailing: const Icon(Icons.open_in_new),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.code),
                    title: const Text('API Documentation'),
                    subtitle: const Text('Microservices API reference'),
                    trailing: const Icon(Icons.open_in_new),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.support_agent),
                    title: const Text('Contact Support'),
                    subtitle: const Text('Get help from our support team'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Login page (placeholder)
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(32),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.restaurant, size: 64),
                const SizedBox(height: 16),
                const Text('OneFoodDialer Admin', style: TextStyle(fontSize: 24)),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () => context.go('/dashboard'),
                  child: const Text('Login (Demo)'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Profile page (placeholder)
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(
        child: Text('Profile page coming soon'),
      ),
    );
  }
}
