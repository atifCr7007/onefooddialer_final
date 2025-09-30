import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/navigation_provider.dart';

class AdminBodyContent extends ConsumerWidget {
  final Widget child;
  
  const AdminBodyContent({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationProvider);
    final microservices = ref.watch(microservicesConfigProvider);

    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Breadcrumb Navigation
          _buildBreadcrumb(context, navigationState, microservices),
          
          const SizedBox(height: 24),
          
          // Main Content Area
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBreadcrumb(
    BuildContext context,
    NavigationState navigationState,
    List<MicroserviceConfig> microservices,
  ) {
    final breadcrumbItems = <Widget>[];
    
    // Home
    breadcrumbItems.add(
      _buildBreadcrumbItem(
        context: context,
        icon: Icons.home,
        text: 'Home',
        isLast: false,
      ),
    );

    // Current service and feature
    if (navigationState.selectedService.isNotEmpty) {
      final service = microservices.firstWhere(
        (s) => s.id == navigationState.selectedService,
        orElse: () => microservices.first,
      );
      
      breadcrumbItems.add(
        _buildBreadcrumbItem(
          context: context,
          icon: service.icon,
          text: service.name,
          isLast: navigationState.selectedFeature.isEmpty,
        ),
      );

      if (navigationState.selectedFeature.isNotEmpty) {
        final feature = service.features.firstWhere(
          (f) => f.id == navigationState.selectedFeature,
          orElse: () => service.features.first,
        );
        
        breadcrumbItems.add(
          _buildBreadcrumbItem(
            context: context,
            icon: feature.icon,
            text: feature.name,
            isLast: true,
          ),
        );
      }
    } else {
      // Determine current page from route
      final route = navigationState.selectedRoute;
      String pageName = 'Dashboard';
      IconData pageIcon = Icons.dashboard;
      
      if (route.startsWith('/features/')) {
        final parts = route.split('/');
        if (parts.length > 2) {
          pageName = _formatPageName(parts[2]);
          pageIcon = _getPageIcon(parts[2]);
        }
      } else if (route == '/settings') {
        pageName = 'Settings';
        pageIcon = Icons.settings;
      } else if (route == '/help') {
        pageName = 'Help & Support';
        pageIcon = Icons.help_outline;
      }
      
      if (pageName != 'Dashboard') {
        breadcrumbItems.add(
          _buildBreadcrumbItem(
            context: context,
            icon: pageIcon,
            text: pageName,
            isLast: true,
          ),
        );
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: breadcrumbItems,
      ),
    );
  }

  Widget _buildBreadcrumbItem({
    required BuildContext context,
    required IconData icon,
    required String text,
    required bool isLast,
  }) {
    final color = isLast 
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.onSurfaceVariant;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 16,
          color: color,
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color,
            fontWeight: isLast ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        if (!isLast) ...[
          const SizedBox(width: 8),
          Icon(
            Icons.chevron_right,
            size: 16,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 8),
        ],
      ],
    );
  }

  String _formatPageName(String routeName) {
    switch (routeName) {
      case 'invoices':
        return 'Invoices';
      case 'statistics':
        return 'Statistics';
      case 'health':
        return 'Health Check';
      case 'customers':
        return 'Customers';
      case 'deliveries':
        return 'Deliveries';
      default:
        return routeName.split('_').map((word) => 
          word[0].toUpperCase() + word.substring(1)
        ).join(' ');
    }
  }

  IconData _getPageIcon(String routeName) {
    switch (routeName) {
      case 'invoices':
        return Icons.description;
      case 'statistics':
        return Icons.analytics;
      case 'health':
        return Icons.health_and_safety;
      case 'customers':
        return Icons.people;
      case 'deliveries':
        return Icons.local_shipping;
      default:
        return Icons.pages;
    }
  }
}

/// Loading widget for content area
class AdminContentLoading extends StatelessWidget {
  final String? message;
  
  const AdminContentLoading({
    super.key,
    this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          if (message != null) ...[
            const SizedBox(height: 16),
            Text(
              message!,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// Error widget for content area
class AdminContentError extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  
  const AdminContentError({
    super.key,
    required this.message,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: 16),
          Text(
            'Error',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          if (onRetry != null) ...[
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ],
      ),
    );
  }
}
