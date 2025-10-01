import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';
import 'dart:convert';
import 'package:shimmer/shimmer.dart';

class ConfigDetailsPage extends ConsumerWidget {
  final Object id;
  const ConfigDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(configGetProvider(id));
    return asyncData.when(
      loading: () => _buildLoadingSkeleton(context),
      error: (e, st) => _buildErrorState(context, e.toString()),
      data: (data) => SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with actions
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Config Details',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit),
                  tooltip: 'Edit',
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  tooltip: 'Delete',
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Data display
            if (data is Map) ..._buildDataFields(context, data)
            else Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SelectableText(
                  const JsonEncoder.withIndent('  ').convert(data),
                  style: const TextStyle(fontFamily: 'monospace'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDataFields(BuildContext context, Map data) {
    final widgets = <Widget>[];
    data.forEach((key, value) {
      widgets.add(
        Card(
          child: ListTile(
            title: Text(
              _formatKey(key.toString()),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                value?.toString() ?? 'N/A',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      );
      widgets.add(const SizedBox(height: 8));
    });
    return widgets;
  }

  String _formatKey(String key) {
    return key
        .replaceAll('_', ' ')
        .split(' ')
        .map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }

  Widget _buildLoadingSkeleton(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 32,
              width: 200,
              color: Colors.white,
            ),
            const SizedBox(height: 24),
            ...List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 12,
                          width: 100,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 16,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red[300],
          ),
          const SizedBox(height: 16),
          Text(
            'Failed to load details',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Unable to retrieve the information',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
            label: const Text('Try Again'),
          ),
        ],
      ),
    );
  }
}
