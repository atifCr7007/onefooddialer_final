import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_one/client/catalogs_client/lib/src/model/catalogue_products_id_get200_response.dart';
import 'providers.dart';
import 'package:shimmer/shimmer.dart';



class CatalogsDetailsPage extends ConsumerWidget {
  final int id;
  const CatalogsDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(catalogsGetProvider(id));

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
                    'Catalogs Details',
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

            // Display the fields manually
            if (data != null) ..._buildDataFields(context, data),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDataFields(
      BuildContext context, CatalogueProductsIdGet200Response data) {
    final widgets = <Widget>[];

    // Example: replace with your actual model fields
    widgets.add(_buildFieldCard('ID', data.data?.id?.toString()));
    widgets.add(_buildFieldCard('Name', data.data?.name));
    widgets.add(_buildFieldCard('Description', data.data?.description));
    widgets.add(_buildFieldCard('Price', data.data?.unitPrice?.toString()));
    widgets.add(_buildFieldCard('Stock', data.data?.swapCharges?.toString()));

    // Add more fields based on your generated model...

    return widgets;
  }

  Widget _buildFieldCard(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        child: ListTile(
          title: Text(
            _formatKey(label),
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              value ?? 'N/A',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }

  String _formatKey(String key) {
    return key
        .replaceAll('_', ' ')
        .split(' ')
        .map((word) =>
            word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1))
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
            Container(height: 32, width: 200, color: Colors.white),
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
                        Container(height: 12, width: 100, color: Colors.white),
                        const SizedBox(height: 8),
                        Container(height: 16, color: Colors.white),
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
          Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
          const SizedBox(height: 16),
          Text('Failed to load details',
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            'Unable to retrieve the information',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.grey[600]),
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
