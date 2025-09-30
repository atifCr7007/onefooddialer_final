import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/admin_providers.dart';

class AdminHealthPage extends ConsumerStatefulWidget {
  const AdminHealthPage({super.key});

  @override
  ConsumerState<AdminHealthPage> createState() => _AdminHealthPageState();
}

class _AdminHealthPageState extends ConsumerState<AdminHealthPage> {
  bool showDetailed = false;

  @override
  Widget build(BuildContext context) {
    final healthStatus = ref.watch(healthStatusProvider);
    final detailedHealth = ref.watch(detailedHealthProvider);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'System Health',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Switch(
                    value: showDetailed,
                    onChanged: (value) {
                      setState(() {
                        showDetailed = value;
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text('Detailed View'),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {
                      ref.invalidate(healthStatusProvider);
                      ref.invalidate(detailedHealthProvider);
                    },
                    icon: const Icon(Icons.refresh),
                    tooltip: 'Refresh Health Status',
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Health Status Content
          Expanded(
            child: showDetailed 
              ? _buildDetailedHealthView(detailedHealth)
              : _buildBasicHealthView(healthStatus),
          ),
        ],
      ),
    );
  }

  Widget _buildBasicHealthView(AsyncValue<dynamic> healthStatus) {
    return healthStatus.when(
      data: (data) => _buildBasicHealthContent(data),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => _buildErrorView(error, () => ref.invalidate(healthStatusProvider)),
    );
  }

  Widget _buildDetailedHealthView(AsyncValue<dynamic> detailedHealth) {
    return detailedHealth.when(
      data: (data) => _buildDetailedHealthContent(data),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => _buildErrorView(error, () => ref.invalidate(detailedHealthProvider)),
    );
  }

  Widget _buildBasicHealthContent(dynamic data) {
    final health = data is Map ? data : {};
    final status = health['status'] ?? 'unknown';
    final isHealthy = status == 'healthy';

    return SingleChildScrollView(
      child: Column(
        children: [
          // Overall Status Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Icon(
                    isHealthy ? Icons.check_circle : Icons.warning,
                    size: 64,
                    color: isHealthy ? Colors.green : Colors.orange,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'System Status: ${status.toUpperCase()}',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: isHealthy ? Colors.green : Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    health['message'] ?? 'System health check completed',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Last checked: ${_formatTimestamp(health['timestamp'])}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Quick Metrics
          if (health['metrics'] != null) ...[
            _buildMetricsGrid(health['metrics']),
            const SizedBox(height: 24),
          ],

          // Services Overview
          if (health['services'] != null) ...[
            _buildServicesOverview(health['services']),
          ],
        ],
      ),
    );
  }

  Widget _buildDetailedHealthContent(dynamic data) {
    final health = data is Map ? data : {};
    
    return SingleChildScrollView(
      child: Column(
        children: [
          // Detailed Services List
          if (health['services'] != null) ...[
            _buildDetailedServicesList(health['services']),
            const SizedBox(height: 24),
          ],

          // System Metrics
          if (health['systemMetrics'] != null) ...[
            _buildSystemMetricsCard(health['systemMetrics']),
            const SizedBox(height: 24),
          ],

          // Performance Metrics
          if (health['performance'] != null) ...[
            _buildPerformanceMetricsCard(health['performance']),
          ],
        ],
      ),
    );
  }

  Widget _buildMetricsGrid(dynamic metrics) {
    final metricsMap = metrics is Map ? metrics : {};
    
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        _buildMetricCard('CPU Usage', '${metricsMap['cpu'] ?? 0}%', Icons.memory),
        _buildMetricCard('Memory Usage', '${metricsMap['memory'] ?? 0}%', Icons.storage),
        _buildMetricCard('Disk Usage', '${metricsMap['disk'] ?? 0}%', Icons.abc),
        _buildMetricCard('Network I/O', '${metricsMap['network'] ?? 0} MB/s', Icons.network_check),
      ],
    );
  }

  Widget _buildMetricCard(String title, String value, IconData icon) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 8),
            Text(
              value,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
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

  Widget _buildServicesOverview(dynamic services) {
    final servicesList = services is List ? services : [];
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Services Status',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            ...servicesList.map((service) => _buildServiceTile(service)),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceTile(dynamic service) {
    final serviceName = service['name'] ?? 'Unknown Service';
    final status = service['status'] ?? 'unknown';
    final isHealthy = status == 'healthy';
    final responseTime = service['responseTime'] ?? 0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(
            isHealthy ? Icons.check_circle : Icons.error,
            color: isHealthy ? Colors.green : Colors.red,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              serviceName,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Chip(
            label: Text(status),
            backgroundColor: isHealthy 
              ? Colors.green.withOpacity(0.1) 
              : Colors.red.withOpacity(0.1),
            labelStyle: TextStyle(
              color: isHealthy ? Colors.green : Colors.red,
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '${responseTime}ms',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailedServicesList(dynamic services) {
    final servicesList = services is List ? services : [];
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detailed Services Health',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            ...servicesList.map((service) => _buildDetailedServiceCard(service)),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailedServiceCard(dynamic service) {
    final serviceName = service['name'] ?? 'Unknown Service';
    final status = service['status'] ?? 'unknown';
    final isHealthy = status == 'healthy';

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        leading: Icon(
          isHealthy ? Icons.check_circle : Icons.error,
          color: isHealthy ? Colors.green : Colors.red,
        ),
        title: Text(serviceName),
        subtitle: Text('Status: $status'),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildServiceDetail('Response Time', '${service['responseTime'] ?? 0}ms'),
                _buildServiceDetail('Last Check', _formatTimestamp(service['lastCheck'])),
                _buildServiceDetail('Uptime', '${service['uptime'] ?? 'N/A'}'),
                if (service['error'] != null)
                  _buildServiceDetail('Error', service['error'], isError: true),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceDetail(String label, String value, {bool isError = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              '$label:',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: isError ? Colors.red : null,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSystemMetricsCard(dynamic metrics) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'System Metrics',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            // Add detailed system metrics here
            const Text('Detailed system metrics will be displayed here'),
          ],
        ),
      ),
    );
  }

  Widget _buildPerformanceMetricsCard(dynamic performance) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Performance Metrics',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            // Add performance metrics here
            const Text('Performance metrics will be displayed here'),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorView(Object error, VoidCallback onRetry) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          const Text('Failed to load health status'),
          const SizedBox(height: 8),
          Text('$error', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  String _formatTimestamp(dynamic timestamp) {
    if (timestamp == null) return 'N/A';
    try {
      final dateTime = DateTime.parse(timestamp.toString());
      return '${dateTime.day}/${dateTime.month}/${dateTime.year} ${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
    } catch (e) {
      return timestamp.toString();
    }
  }
}
