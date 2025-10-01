import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';
import 'package:shimmer/shimmer.dart';

class OrdersDetailsPage extends ConsumerWidget {
  final int id;
  const OrdersDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(ordersGetProvider(id));
    return asyncData.when(
      loading: () => _buildLoadingSkeleton(context),
      error: (e, st) => _buildErrorState(context, e.toString()),
      data: (response) {
        final data = response?.data;
        return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with actions
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Order #${data?.orderNo ?? data?.id ?? id}',
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
            if (data != null) ..._buildOrderFields(context, data)
            else Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('No data available'),
              ),
            ),
          ],
        ),
        );
      },
    );
  }

  List<Widget> _buildOrderFields(BuildContext context, data) {
    final widgets = <Widget>[];

    // Helper function to add a field
    void addField(String label, String? value) {
      if (value != null && value.isNotEmpty) {
        widgets.add(
          Card(
            child: ListTile(
              title: Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        );
        widgets.add(const SizedBox(height: 8));
      }
    }

    // Add order fields
    addField('ID', data.id?.toString());
    addField('Order No', data.orderNo);
    addField('Order Status', data.orderStatus);
    addField('Delivery Status', data.deliveryStatus);
    addField('Quantity', data.quantity?.toString());
    addField('Amount', data.amount?.toString());
    addField('Tax', data.tax?.toString());
    addField('Delivery Charges', data.deliveryCharges?.toString());
    addField('Net Amount', data.netAmount?.toString());
    addField('Order Date', data.orderDate?.toString());
    addField('Created At', data.createdAt?.toString());
    addField('Updated At', data.updatedAt?.toString());

    return widgets;
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
