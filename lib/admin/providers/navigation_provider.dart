import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Navigation state provider for managing sidebar and content area
final navigationProvider = StateNotifierProvider<NavigationNotifier, NavigationState>((ref) {
  return NavigationNotifier();
});

class NavigationState {
  final String selectedRoute;
  final String selectedService;
  final String selectedFeature;
  final bool isSidebarExpanded;
  final Map<String, bool> expandedServices;

  const NavigationState({
    this.selectedRoute = '/dashboard',
    this.selectedService = '',
    this.selectedFeature = '',
    this.isSidebarExpanded = true,
    this.expandedServices = const {},
  });

  NavigationState copyWith({
    String? selectedRoute,
    String? selectedService,
    String? selectedFeature,
    bool? isSidebarExpanded,
    Map<String, bool>? expandedServices,
  }) {
    return NavigationState(
      selectedRoute: selectedRoute ?? this.selectedRoute,
      selectedService: selectedService ?? this.selectedService,
      selectedFeature: selectedFeature ?? this.selectedFeature,
      isSidebarExpanded: isSidebarExpanded ?? this.isSidebarExpanded,
      expandedServices: expandedServices ?? this.expandedServices,
    );
  }
}

class NavigationNotifier extends StateNotifier<NavigationState> {
  NavigationNotifier() : super(const NavigationState());

  void selectRoute(String route, {String? service, String? feature}) {
    state = state.copyWith(
      selectedRoute: route,
      selectedService: service ?? '',
      selectedFeature: feature ?? '',
    );
  }

  void toggleSidebar() {
    state = state.copyWith(isSidebarExpanded: !state.isSidebarExpanded);
  }

  void toggleServiceExpansion(String service) {
    final newExpanded = Map<String, bool>.from(state.expandedServices);
    newExpanded[service] = !(newExpanded[service] ?? false);
    state = state.copyWith(expandedServices: newExpanded);
  }

  bool isServiceExpanded(String service) {
    return state.expandedServices[service] ?? false;
  }
}

/// Microservice configuration
class MicroserviceConfig {
  final String id;
  final String name;
  final IconData icon;
  final List<FeatureConfig> features;
  final String? clientPath;

  const MicroserviceConfig({
    required this.id,
    required this.name,
    required this.icon,
    required this.features,
    this.clientPath,
  });
}

class FeatureConfig {
  final String id;
  final String name;
  final IconData icon;
  final String route;
  final String? description;

  const FeatureConfig({
    required this.id,
    required this.name,
    required this.icon,
    required this.route,
    this.description,
  });
}

/// Microservices configuration provider
final microservicesConfigProvider = Provider<List<MicroserviceConfig>>((ref) {
  return [
    MicroserviceConfig(
      id: 'invoice',
      name: 'Invoice Service',
      icon: Icons.receipt_long,
      clientPath: 'lib/client/invoice_client',
      features: [
        FeatureConfig(
          id: 'invoices',
          name: 'Invoices',
          icon: Icons.description,
          route: '/features/invoices',
          description: 'Manage invoices and billing',
        ),
        FeatureConfig(
          id: 'statistics',
          name: 'Statistics',
          icon: Icons.analytics,
          route: '/features/statistics',
          description: 'Invoice analytics and reports',
        ),
        FeatureConfig(
          id: 'health',
          name: 'Health Check',
          icon: Icons.health_and_safety,
          route: '/features/health',
          description: 'Service health monitoring',
        ),
      ],
    ),
    MicroserviceConfig(
      id: 'kitchen',
      name: 'Kitchen Service',
      icon: Icons.kitchen,
      clientPath: 'lib/client/kitchen_client',
      features: [
        FeatureConfig(
          id: 'kitchens',
          name: 'Kitchens',
          icon: Icons.restaurant,
          route: '/features/kitchens',
          description: 'Manage kitchens and preparation status',
        ),
        FeatureConfig(
          id: 'kitchen-masters',
          name: 'Kitchen Masters',
          icon: Icons.admin_panel_settings,
          route: '/features/kitchen-masters',
          description: 'Kitchen master configuration',
        ),
        FeatureConfig(
          id: 'recipes',
          name: 'Recipes',
          icon: Icons.menu_book,
          route: '/features/recipes',
          description: 'Recipe management',
        ),
      ],
    ),
    MicroserviceConfig(
      id: 'payment',
      name: 'Payment Service',
      icon: Icons.payment,
      clientPath: 'lib/client/payment_client',
      features: [
        FeatureConfig(
          id: 'transactions',
          name: 'Transactions',
          icon: Icons.account_balance,
          route: '/features/payment/transactions',
          description: 'Payment transactions',
        ),
        FeatureConfig(
          id: 'refunds',
          name: 'Refunds',
          icon: Icons.money_off,
          route: '/features/payment/refunds',
          description: 'Refund management',
        ),
      ],
    ),
    MicroserviceConfig(
      id: 'customer',
      name: 'Customer Service',
      icon: Icons.people,
      clientPath: 'lib/client/customer_client',
      features: [
        FeatureConfig(
          id: 'customers',
          name: 'Customers',
          icon: Icons.person,
          route: '/features/customers',
          description: 'Customer management',
        ),
        FeatureConfig(
          id: 'support',
          name: 'Support',
          icon: Icons.support_agent,
          route: '/features/customer/support',
          description: 'Customer support',
        ),
      ],
    ),
    MicroserviceConfig(
      id: 'delivery',
      name: 'Delivery Service',
      icon: Icons.delivery_dining,
      clientPath: 'lib/client/delivery_client',
      features: [
        FeatureConfig(
          id: 'deliveries',
          name: 'Deliveries',
          icon: Icons.local_shipping,
          route: '/features/deliveries',
          description: 'Delivery management',
        ),
        FeatureConfig(
          id: 'drivers',
          name: 'Drivers',
          icon: Icons.person_pin_circle,
          route: '/features/delivery/drivers',
          description: 'Driver management',
        ),
      ],
    ),

    // Order Section
    MicroserviceConfig(
      id: 'order',
      name: 'Order Service',
      icon: Icons.shopping_cart,
      clientPath: 'lib/client/order_client',
      features: [
        FeatureConfig(
          id: 'order-management',
          name: 'Order Management',
          icon: Icons.receipt_long,
          route: '/features/order-management',
          description: 'Create, update, and manage orders with full lifecycle control',
        ),
        FeatureConfig(
          id: 'order-tracking',
          name: 'Order Tracking',
          icon: Icons.track_changes,
          route: '/features/order-tracking',
          description: 'Real-time order tracking and status updates',
        ),
        FeatureConfig(
          id: 'order-items',
          name: 'Order Items',
          icon: Icons.list_alt,
          route: '/features/order-items',
          description: 'Manage order items, quantities, and customizations',
        ),
      ],
    ),

    // Analytics Section
    MicroserviceConfig(
      id: 'analytics',
      name: 'Analytics Service',
      icon: Icons.analytics,
      clientPath: 'lib/client/analytics_client',
      features: [
        FeatureConfig(
          id: 'sales-analytics',
          name: 'Sales Analytics',
          icon: Icons.trending_up,
          route: '/features/sales-analytics',
          description: 'Sales analytics, revenue tracking, and payment insights',
        ),
        FeatureConfig(
          id: 'food-analytics',
          name: 'Food Analytics',
          icon: Icons.restaurant_menu,
          route: '/features/food-analytics',
          description: 'Popular meals, performance tracking, and menu insights',
        ),
        FeatureConfig(
          id: 'customer-analytics',
          name: 'Customer Analytics',
          icon: Icons.people_alt,
          route: '/features/customer-analytics',
          description: 'Customer behavior, loyalty, and spending patterns',
        ),
      ],
    ),

    // Administration Section
    MicroserviceConfig(
      id: 'administration',
      name: 'Administration',
      icon: Icons.admin_panel_settings,
      clientPath: 'lib/client/admin_client',
      features: [
        FeatureConfig(
          id: 'dashboard',
          name: 'Dashboard',
          icon: Icons.dashboard,
          route: '/admin/dashboard',
          description: 'Admin dashboard overview and statistics',
        ),
        FeatureConfig(
          id: 'health',
          name: 'Health',
          icon: Icons.health_and_safety,
          route: '/admin/health',
          description: 'System health monitoring and status checks',
        ),
        FeatureConfig(
          id: 'users',
          name: 'Users',
          icon: Icons.people,
          route: '/admin/users',
          description: 'User account management (CRUD operations)',
        ),
        FeatureConfig(
          id: 'roles',
          name: 'Roles',
          icon: Icons.security,
          route: '/admin/roles',
          description: 'User role management (create, read, update, delete roles)',
        ),
        FeatureConfig(
          id: 'system',
          name: 'System',
          icon: Icons.settings,
          route: '/admin/system',
          description: 'System configuration and settings management',
        ),
      ],
    ),
  ];
});
