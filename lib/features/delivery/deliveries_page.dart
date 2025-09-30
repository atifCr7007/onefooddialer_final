import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_one/features/delivery/providers/delivery_providers.dart';
import 'package:food_one/flutter-ui-codegen-pack-extended-fixed/lib/shared/delivery_resource_clients.dart';
import 'package:shimmer/shimmer.dart';

class DeliveriesPage extends ConsumerStatefulWidget {
  const DeliveriesPage({super.key});

  @override
  ConsumerState<DeliveriesPage> createState() => _DeliveriesPageState();
}

class _DeliveriesPageState extends ConsumerState<DeliveriesPage> {
  int? selectedLocationId;
  String searchQuery = '';
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ordersAsync = searchQuery.isNotEmpty
        ? ref.watch(deliveryOrdersSearchProvider((search: searchQuery, locationId: selectedLocationId)))
        : ref.watch(deliveryOrdersListProvider((locationId: selectedLocationId, date: null)));
    
    final locationsAsync = ref.watch(deliveryLocationsListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              ref.invalidate(deliveryOrdersListProvider);
              ref.invalidate(deliveryLocationsListProvider);
            },
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: Column(
        children: [
          // Filters and search
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Location filter
                Expanded(
                  child: locationsAsync.when(
                    data: (locationsData) {
                      final locations = DeliveryPaginator.items(locationsData);
                      return DropdownButtonFormField<int>(
                        value: selectedLocationId,
                        decoration: const InputDecoration(
                          labelText: 'Filter by Location',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                        items: [
                          const DropdownMenuItem<int>(
                            value: null,
                            child: Text('All Locations'),
                          ),
                          ...locations.map((loc) {
                            final location = loc as Map;
                            final id = location['id'] as int? ?? 0;
                            final name = location['name']?.toString() ?? location['location_name']?.toString() ?? 'Unknown';
                            return DropdownMenuItem<int>(
                              value: id,
                              child: Text(name),
                            );
                          }),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedLocationId = value;
                          });
                        },
                      );
                    },
                    loading: () => const LinearProgressIndicator(),
                    error: (error, stack) => Text('Error loading locations: $error'),
                  ),
                ),
                const SizedBox(width: 16),
                // Search
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      labelText: 'Search orders',
                      hintText: 'Order number, customer name...',
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      suffixIcon: searchQuery.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                searchController.clear();
                                setState(() {
                                  searchQuery = '';
                                });
                              },
                            )
                          : const Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          // Orders list
          Expanded(
            child: ordersAsync.when(
              data: (ordersData) {
                final orders = DeliveryPaginator.items(ordersData);
                
                if (orders.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.inbox, size: 64, color: Colors.grey[400]),
                        const SizedBox(height: 16),
                        Text(
                          'No delivery orders found',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          searchQuery.isNotEmpty
                              ? 'Try adjusting your search'
                              : 'Orders will appear here when available',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.separated(
                  itemCount: orders.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final order = orders[index] as Map;
                    final orderId = order['id'] as int? ?? 0;
                    final orderNo = order['order_no']?.toString() ?? order['orderNo']?.toString() ?? 'N/A';
                    final customerName = order['customer_name']?.toString() ?? order['customerName']?.toString() ?? 'Unknown';
                    final customerPhone = order['customer_phone']?.toString() ?? order['customerPhone']?.toString() ?? '';
                    final deliveryStatus = order['delivery_status']?.toString() ?? order['deliveryStatus']?.toString() ?? 'Pending';
                    final shipAddress = order['ship_address']?.toString() ?? order['shipAddress']?.toString() ?? '';
                    final total = order['total']?.toString() ?? '0.00';

                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: _getStatusColor(deliveryStatus),
                        child: Icon(
                          _getStatusIcon(deliveryStatus),
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      title: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Order #$orderNo',
                              style: const TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          _buildStatusChip(deliveryStatus),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Text('Customer: $customerName'),
                          if (customerPhone.isNotEmpty) Text('Phone: $customerPhone'),
                          if (shipAddress.isNotEmpty) Text('Address: $shipAddress'),
                          Text('Total: \$$total', style: const TextStyle(fontWeight: FontWeight.w500)),
                        ],
                      ),
                      trailing: PopupMenuButton(
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'view',
                            child: Row(
                              children: [
                                Icon(Icons.visibility, size: 18),
                                SizedBox(width: 8),
                                Text('View Details'),
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 'update_status',
                            child: Row(
                              children: [
                                Icon(Icons.update, size: 18),
                                SizedBox(width: 8),
                                Text('Update Status'),
                              ],
                            ),
                          ),
                          const PopupMenuItem(
                            value: 'book_delivery',
                            child: Row(
                              children: [
                                Icon(Icons.local_shipping, size: 18),
                                SizedBox(width: 8),
                                Text('Book 3rd Party'),
                              ],
                            ),
                          ),
                        ],
                        onSelected: (value) {
                          switch (value) {
                            case 'view':
                              _showOrderDetails(orderId, order);
                              break;
                            case 'update_status':
                              _showUpdateStatusDialog(orderId);
                              break;
                            case 'book_delivery':
                              _showBookDeliveryDialog(orderId);
                              break;
                          }
                        },
                      ),
                      isThreeLine: true,
                    );
                  },
                );
              },
              loading: () => _buildLoadingSkeleton(),
              error: (error, stack) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 64, color: Colors.red),
                    const SizedBox(height: 16),
                    Text('Error loading orders: $error'),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      onPressed: () => ref.invalidate(deliveryOrdersListProvider),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Retry'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    return Chip(
      label: Text(
        status,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
      ),
      backgroundColor: _getStatusColor(status).withOpacity(0.2),
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'delivered':
        return Colors.green;
      case 'dispatched':
        return Colors.blue;
      case 'failed':
        return Colors.red;
      default:
        return Colors.orange;
    }
  }

  IconData _getStatusIcon(String status) {
    switch (status.toLowerCase()) {
      case 'delivered':
        return Icons.check_circle;
      case 'dispatched':
        return Icons.local_shipping;
      case 'failed':
        return Icons.error;
      default:
        return Icons.pending;
    }
  }

  Widget _buildLoadingSkeleton() {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: ListTile(
            leading: const CircleAvatar(),
            title: Container(height: 16, width: 200, color: Colors.white),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Container(height: 12, width: 150, color: Colors.white),
                const SizedBox(height: 4),
                Container(height: 12, width: 180, color: Colors.white),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showOrderDetails(int orderId, Map order) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('View order details: $orderId - Coming soon')),
    );
  }

  void _showUpdateStatusDialog(int orderId) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Update status for order: $orderId - Coming soon')),
    );
  }

  void _showBookDeliveryDialog(int orderId) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Book 3rd party delivery for order: $orderId - Coming soon')),
    );
  }
}

