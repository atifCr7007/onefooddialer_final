import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/navigation_provider.dart';

class AdminSidebar extends ConsumerWidget {
  const AdminSidebar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationProvider);
    final navigationNotifier = ref.read(navigationProvider.notifier);
    final microservices = ref.watch(microservicesConfigProvider);

    return NavigationDrawer(
      selectedIndex: null, // We'll handle selection manually
      children: [
        // Header
        Container(
          height: 120,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.restaurant,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  if (navigationState.isSidebarExpanded) ...[
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'OneFoodDialer',
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Admin Dashboard',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),

        const Divider(),

        // Dashboard
        _buildNavigationTile(
          context: context,
          ref: ref,
          icon: Icons.dashboard,
          title: 'Dashboard',
          route: '/dashboard',
          isSelected: navigationState.selectedRoute == '/dashboard',
          isExpanded: navigationState.isSidebarExpanded,
        ),

        const Divider(),

        // Microservices Section
        if (navigationState.isSidebarExpanded)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'MICROSERVICES',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

        // Microservices List
        ...microservices.map((service) => _buildServiceSection(
          context: context,
          ref: ref,
          service: service,
          navigationState: navigationState,
          navigationNotifier: navigationNotifier,
        )),

        const Divider(),

        // System Section
        if (navigationState.isSidebarExpanded)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'SYSTEM',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

        _buildNavigationTile(
          context: context,
          ref: ref,
          icon: Icons.settings,
          title: 'Settings',
          route: '/settings',
          isSelected: navigationState.selectedRoute == '/settings',
          isExpanded: navigationState.isSidebarExpanded,
        ),

        _buildNavigationTile(
          context: context,
          ref: ref,
          icon: Icons.help_outline,
          title: 'Help & Support',
          route: '/help',
          isSelected: navigationState.selectedRoute == '/help',
          isExpanded: navigationState.isSidebarExpanded,
        ),

        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildServiceSection({
    required BuildContext context,
    required WidgetRef ref,
    required MicroserviceConfig service,
    required NavigationState navigationState,
    required NavigationNotifier navigationNotifier,
  }) {
    final isExpanded = navigationNotifier.isServiceExpanded(service.id);
    final isServiceSelected = navigationState.selectedService == service.id;

    return Column(
      children: [
        // Service Header
        ListTile(
          leading: Icon(service.icon),
          title: navigationState.isSidebarExpanded 
              ? Text(service.name)
              : null,
          trailing: navigationState.isSidebarExpanded
              ? IconButton(
                  icon: Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                  ),
                  onPressed: () {
                    navigationNotifier.toggleServiceExpansion(service.id);
                  },
                )
              : null,
          selected: isServiceSelected,
          onTap: () {
            if (navigationState.isSidebarExpanded) {
              navigationNotifier.toggleServiceExpansion(service.id);
            } else {
              // If sidebar is collapsed, expand it when service is tapped
              navigationNotifier.toggleSidebar();
            }
          },
        ),

        // Service Features (only show if expanded and sidebar is expanded)
        if (isExpanded && navigationState.isSidebarExpanded)
          ...service.features.map((feature) => Padding(
            padding: const EdgeInsets.only(left: 16),
            child: _buildNavigationTile(
              context: context,
              ref: ref,
              icon: feature.icon,
              title: feature.name,
              route: feature.route,
              isSelected: navigationState.selectedRoute == feature.route,
              isExpanded: true,
              isSubItem: true,
            ),
          )),
      ],
    );
  }

  Widget _buildNavigationTile({
    required BuildContext context,
    required WidgetRef ref,
    required IconData icon,
    required String title,
    required String route,
    required bool isSelected,
    required bool isExpanded,
    bool isSubItem = false,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: isSubItem ? 20 : 24,
      ),
      title: isExpanded ? Text(
        title,
        style: isSubItem 
            ? Theme.of(context).textTheme.bodyMedium
            : null,
      ) : null,
      selected: isSelected,
      onTap: () {
        ref.read(navigationProvider.notifier).selectRoute(route);
        context.go(route);
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: isSubItem ? 32 : 16,
        vertical: 4,
      ),
    );
  }
}
