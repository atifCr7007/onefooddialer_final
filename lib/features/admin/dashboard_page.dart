import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/admin_providers.dart';

class AdminDashboardPage extends ConsumerStatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  ConsumerState<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends ConsumerState<AdminDashboardPage> {
  String selectedTimeRange = '7d';

  @override
  Widget build(BuildContext context) {
    final dashboardData = ref.watch(dashboardDataProvider(selectedTimeRange));
    final quickStats = ref.watch(dashboardQuickStatsProvider);
    final systemHealth = ref.watch(dashboardSystemHealthProvider);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with time range selector
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Admin Dashboard',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildTimeRangeSelector(),
            ],
          ),
          const SizedBox(height: 24),

          // Quick Stats Cards
          _buildQuickStatsSection(quickStats),
          const SizedBox(height: 24),

          // System Health Section
          _buildSystemHealthSection(systemHealth),
          const SizedBox(height: 24),

          // Main Dashboard Content
          Expanded(
            child: _buildDashboardContent(dashboardData),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeRangeSelector() {
    return SegmentedButton<String>(
      segments: const [
        ButtonSegment(value: '24h', label: Text('24h')),
        ButtonSegment(value: '7d', label: Text('7d')),
        ButtonSegment(value: '30d', label: Text('30d')),
        ButtonSegment(value: '90d', label: Text('90d')),
      ],
      selected: {selectedTimeRange},
      onSelectionChanged: (Set<String> newSelection) {
        setState(() {
          selectedTimeRange = newSelection.first;
        });
      },
    );
  }

  Widget _buildQuickStatsSection(AsyncValue<dynamic> quickStats) {
    return quickStats.when(
      data: (data) => _buildQuickStatsCards(data),
      loading: () => _buildQuickStatsLoading(),
      error: (error, stack) => _buildQuickStatsError(error),
    );
  }

  Widget _buildQuickStatsCards(dynamic data) {
    // Extract stats from the response data
    final stats = data is Map ? data : {};
    
    return Row(
      children: [
        Expanded(
          child: _buildStatCard(
            'Total Users',
            '${stats['totalUsers'] ?? 0}',
            Icons.people,
            Colors.blue,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildStatCard(
            'Active Sessions',
            '${stats['activeSessions'] ?? 0}',
            Icons.online_prediction,
            Colors.green,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildStatCard(
            'System Load',
            '${stats['systemLoad'] ?? 0}%',
            Icons.memory,
            Colors.orange,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildStatCard(
            'Errors Today',
            '${stats['errorsToday'] ?? 0}',
            Icons.error_outline,
            Colors.red,
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, color: color, size: 24),
                Text(
                  value,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickStatsLoading() {
    return Row(
      children: List.generate(4, (index) => 
        Expanded(
          child: Card(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(16),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
      ).expand((widget) => [widget, if (widget != null) const SizedBox(width: 16)]).toList()..removeLast(),
    );
  }

  Widget _buildQuickStatsError(Object error) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.error_outline, color: Colors.red),
            const SizedBox(width: 8),
            Text('Failed to load quick stats: $error'),
          ],
        ),
      ),
    );
  }

  Widget _buildSystemHealthSection(AsyncValue<dynamic> systemHealth) {
    return systemHealth.when(
      data: (data) => _buildSystemHealthCard(data),
      loading: () => _buildSystemHealthLoading(),
      error: (error, stack) => _buildSystemHealthError(error),
    );
  }

  Widget _buildSystemHealthCard(dynamic data) {
    final health = data is Map ? data : {};
    final status = health['status'] ?? 'unknown';
    final isHealthy = status == 'healthy';
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  isHealthy ? Icons.check_circle : Icons.warning,
                  color: isHealthy ? Colors.green : Colors.orange,
                ),
                const SizedBox(width: 8),
                Text(
                  'System Health',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                Chip(
                  label: Text(status.toUpperCase()),
                  backgroundColor: isHealthy ? Colors.green.withOpacity(0.1) : Colors.orange.withOpacity(0.1),
                  labelStyle: TextStyle(
                    color: isHealthy ? Colors.green : Colors.orange,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (health['services'] != null) ...[
              Text(
                'Service Status',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              ...((health['services'] as List? ?? []).map((service) => 
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      Icon(
                        service['status'] == 'healthy' ? Icons.check_circle_outline : Icons.error_outline,
                        size: 16,
                        color: service['status'] == 'healthy' ? Colors.green : Colors.red,
                      ),
                      const SizedBox(width: 8),
                      Text(service['name'] ?? 'Unknown Service'),
                      const Spacer(),
                      Text(
                        '${service['responseTime'] ?? 0}ms',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSystemHealthLoading() {
    return Card(
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(16),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildSystemHealthError(Object error) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.error_outline, color: Colors.red),
            const SizedBox(width: 8),
            Text('Failed to load system health: $error'),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardContent(AsyncValue<dynamic> dashboardData) {
    return dashboardData.when(
      data: (data) => _buildDashboardCharts(data),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text('Failed to load dashboard data'),
            const SizedBox(height: 8),
            Text('$error', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ref.invalidate(dashboardDataProvider),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardCharts(dynamic data) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard Overview',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 64,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Dashboard charts and analytics will be displayed here',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Time range: $selectedTimeRange',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
