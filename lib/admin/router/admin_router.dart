import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/admin_shell.dart';
import '../../ui/feature_routes.g.dart';
import '../../services/auth_service.dart';
import '../../config/app_config.dart';

// Import auth pages
import '../../auth/login_page.dart';
import '../../auth/forgot_password_page.dart';
import '../../auth/reset_password_page.dart';

// Import admin pages
import '../../features/admin/dashboard_page.dart';
import '../../features/admin/health_page.dart';
import '../../features/admin/users_page.dart';
import '../../features/admin/roles_page.dart';
import '../../features/admin/system_page.dart';

// Import customer pages
import '../../features/customer/customers_page.dart';

// Import delivery pages
import '../../features/delivery/deliveries_page.dart';

// Import invoice pages
import '../../features/invoices/list_page.dart' as invoice_list;
import '../../features/statistics/list_page.dart' as statistics_list;
import '../../features/health/list_page.dart' as health_list;

// Import kitchen pages
import '../../features/kitchens/list_page.dart' as kitchen_list;
import '../../features/kitchen masters/list_page.dart' as kitchen_masters_list;
import '../../features/recipes/list_page.dart' as recipes_list;

// Import payment pages
import '../../features/payments/list_page.dart' as payment_list;
import '../../features/payment methods/list_page.dart' as payment_methods_list;

// Import meal pages
import '../../features/meals/list_page.dart' as meal_list;

// Import catalog pages
import '../../features/catalogs/list_page.dart' as catalogs_list;

// Import order pages
import '../../features/order management/list_page.dart' as order_management_list;
import '../../features/order tracking/list_page.dart' as order_tracking_list;
import '../../features/order items/list_page.dart' as order_items_list;

// Import subscription pages
import '../../features/subscription plans/list_page.dart' as subscription_plans_list;

// Import quickserver pages
import '../../features/backorders/list_page.dart' as backorders_list;
import '../../features/orders/list_page.dart' as orders_list;
import '../../features/timeslots/list_page.dart' as timeslots_list;
// import '../../features/locations/list_page.dart' as locations_list;  // TODO: Create this page
import '../../features/config/list_page.dart' as config_list;

// Import analytics pages
import '../../features/sales analytics/list_page.dart' as sales_analytics_list;
import '../../features/food analytics/list_page.dart' as food_analytics_list;
import '../../features/customer analytics/list_page.dart' as customer_analytics_list;

/// Auth state notifier for GoRouter
class AuthNotifierForRouter extends ChangeNotifier {
  final Ref _ref;

  AuthNotifierForRouter(this._ref) {
    // Listen to auth state changes
    _ref.listen(authProvider, (previous, next) {
      print('🔄 Auth state changed in router: isAuthenticated=${next.isAuthenticated}');
      notifyListeners();
    });
  }

  bool get isAuthenticated => _ref.read(authProvider).isAuthenticated;
}

/// Provider for the admin router
final adminRouterProvider = Provider<GoRouter>((ref) {
  print('🚀 Creating admin router provider');
  final authNotifier = AuthNotifierForRouter(ref);
  print('🚀 Auth notifier created, isAuthenticated=${authNotifier.isAuthenticated}');

  return GoRouter(
    initialLocation: '/auth/login',
    refreshListenable: authNotifier,
    redirect: (context, state) {
      final isAuthenticated = authNotifier.isAuthenticated;
      final isAuthRoute = state.matchedLocation.startsWith('/auth');

      print('🔀 Router redirect: path=${state.matchedLocation}, isAuth=$isAuthenticated, isAuthRoute=$isAuthRoute');

      // Print config on first navigation
      if (state.matchedLocation == '/auth/login') {
        AppConfig.printConfig();
      }

      // If not authenticated and trying to access protected route, redirect to login
      if (!isAuthenticated && !isAuthRoute) {
        print('🔀 Redirecting to login (not authenticated)');
        return '/auth/login';
      }

      // If authenticated and trying to access auth route, redirect to dashboard
      if (isAuthenticated && isAuthRoute) {
        print('🔀 Redirecting to dashboard (already authenticated)');
        return '/dashboard';
      }

      print('🔀 No redirect needed');
      return null; // No redirect needed
    },
  routes: [
    // Auth routes (public - no shell)
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

    // Shell route that wraps all admin pages (protected)
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

        // Invoice Service Routes
        GoRoute(
          path: '/features/invoices',
          builder: (context, state) => const invoice_list.InvoicesListPage(),
        ),
        GoRoute(
          path: '/features/statistics',
          builder: (context, state) => const statistics_list.StatisticsListPage(),
        ),
        GoRoute(
          path: '/features/health',
          builder: (context, state) => const health_list.HealthListPage(),
        ),

        // Kitchen Service Routes
        GoRoute(
          path: '/features/kitchens',
          builder: (context, state) => const kitchen_list.KitchensListPage(),
        ),
        GoRoute(
          path: '/features/kitchen-masters',
          builder: (context, state) => const kitchen_masters_list.KitchenMastersListPage(),
        ),
        GoRoute(
          path: '/features/recipes',
          builder: (context, state) => const recipes_list.RecipesListPage(),
        ),

        // Payment Service Routes
        GoRoute(
          path: '/features/payments',
          builder: (context, state) => const payment_list.PaymentsListPage(),
        ),
        GoRoute(
          path: '/features/payment-methods',
          builder: (context, state) => const payment_methods_list.PaymentMethodsListPage(),
        ),

        // Meal Service Routes
        GoRoute(
          path: '/features/meals',
          builder: (context, state) => const meal_list.MealsListPage(),
        ),

        // Catalog Service Routes
        GoRoute(
          path: '/features/products',
          builder: (context, state) => const catalogs_list.CatalogsListPage(),
        ),

        // Order Service Routes
        GoRoute(
          path: '/features/order-management',
          builder: (context, state) => const order_management_list.OrderManagementListPage(),
        ),
        GoRoute(
          path: '/features/order-tracking',
          builder: (context, state) => const order_tracking_list.OrderTrackingListPage(),
        ),
        GoRoute(
          path: '/features/order-items',
          builder: (context, state) => const order_items_list.OrderItemsListPage(),
        ),

        // Subscription Service Routes
        GoRoute(
          path: '/features/subscription-plans',
          builder: (context, state) => const subscription_plans_list.SubscriptionPlansListPage(),
        ),

        // QuickServer Service Routes
        GoRoute(
          path: '/features/backorders',
          builder: (context, state) => const backorders_list.BackordersListPage(),
        ),
        GoRoute(
          path: '/features/orders',
          builder: (context, state) => const orders_list.OrdersListPage(),
        ),
        GoRoute(
          path: '/features/timeslots',
          builder: (context, state) => const timeslots_list.TimeslotsListPage(),
        ),
        GoRoute(
          path: '/features/locations',
          builder: (context, state) => const PlaceholderPage(
            title: 'Locations',
            description: 'Location mappings page coming soon!',
          ),
        ),
        GoRoute(
          path: '/features/config',
          builder: (context, state) => const config_list.ConfigListPage(),
        ),

        // Analytics Service Routes
        GoRoute(
          path: '/features/sales-analytics',
          builder: (context, state) => const sales_analytics_list.SalesAnalyticsListPage(),
        ),
        GoRoute(
          path: '/features/food-analytics',
          builder: (context, state) => const food_analytics_list.FoodAnalyticsListPage(),
        ),
        GoRoute(
          path: '/features/customer-analytics',
          builder: (context, state) => const customer_analytics_list.CustomerAnalyticsListPage(),
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
          builder: (context, state) => const DeliveriesPage(),
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
});

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
