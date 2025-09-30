import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_one/flutter-ui-codegen-pack-extended-fixed/lib/shared/customer_resource_clients.dart';
import 'package:shimmer/shimmer.dart';
import 'package:food_one/widgets/confirm_dialog.dart';
import 'providers/customer_providers.dart';

class CustomersPage extends ConsumerStatefulWidget {
  const CustomersPage({super.key});

  @override
  ConsumerState<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends ConsumerState<CustomersPage> {
  int page = 1;
  int perPage = 10;
  String search = '';
  bool? statusFilter;
  final searchController = TextEditingController();
  final selected = <int>{};

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final params = CustomerListParams(
      page: page,
      perPage: perPage,
      search: search.isEmpty ? null : search,
      status: statusFilter,
    );
    final asyncData = ref.watch(customerListProvider(params));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Enhanced search and filter bar
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search customers by name, email, or phone...',
                        suffixIcon: search.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  searchController.clear();
                                  setState(() => search = '');
                                },
                              )
                            : null,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (v) => setState(() => search = v),
                    ),
                  ),
                  const SizedBox(width: 12),
                  FilledButton.icon(
                    onPressed: () => _showCreateDialog(),
                    icon: const Icon(Icons.add),
                    label: const Text('New Customer'),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Filter chips
              Row(
                children: [
                  FilterChip(
                    label: const Text('All'),
                    selected: statusFilter == null,
                    onSelected: (selected) {
                      if (selected) setState(() => statusFilter = null);
                    },
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Active'),
                    selected: statusFilter == true,
                    onSelected: (selected) {
                      setState(() => statusFilter = selected ? true : null);
                    },
                  ),
                  const SizedBox(width: 8),
                  FilterChip(
                    label: const Text('Inactive'),
                    selected: statusFilter == false,
                    onSelected: (selected) {
                      setState(() => statusFilter = selected ? false : null);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        // Content area
        Expanded(
          child: asyncData.when(
            loading: () => _buildLoadingSkeleton(),
            error: (e, st) => _buildErrorState(e.toString()),
            data: (response) {
              final rows = CustomerPaginator.items(response);
              if (rows.isEmpty) {
                return _buildEmptyState();
              }
              return Column(
                children: [
                  // Results count and bulk actions
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          '${CustomerPaginator.total(response)} customers',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        if (selected.isNotEmpty) ...[
                          const Spacer(),
                          Text(
                            '${selected.length} selected',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(width: 8),
                          TextButton.icon(
                            onPressed: () => setState(() => selected.clear()),
                            icon: const Icon(Icons.clear_all, size: 16),
                            label: const Text('Clear'),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  // Customer list
                  Expanded(
                    child: ListView.separated(
                      itemCount: rows.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, i) {
                        final customer = rows[i] as Map;
                        final id = customer['id'] as int? ?? customer['pk_customer_code'] as int? ?? 0;
                        final name = customer['name']?.toString() ?? customer['customer_name']?.toString() ?? 'Unknown';
                        final email = customer['email']?.toString() ?? customer['email_address']?.toString() ?? '';
                        final phone = customer['phone']?.toString() ?? '';
                        final status = customer['status'] ?? true;

                        return ListTile(
                          leading: Checkbox(
                            value: selected.contains(id),
                            onChanged: (v) => setState(() {
                              v == true ? selected.add(id) : selected.remove(id);
                            }),
                          ),
                          title: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  name,
                                  style: const TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              _buildStatusChip(status),
                            ],
                          ),
                          subtitle: Text(
                            [email, phone].where((s) => s.isNotEmpty).join(' • '),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Wrap(
                            spacing: 4,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.visibility),
                                tooltip: 'View details',
                                onPressed: () => _showDetailsDialog(id),
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit),
                                tooltip: 'Edit',
                                onPressed: () => _showEditDialog(id, customer),
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                tooltip: 'Delete',
                                onPressed: () => _confirmDelete(id, name),
                              ),
                            ],
                          ),
                          onTap: () => _showDetailsDialog(id),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        // Enhanced pagination
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            border: Border(
              top: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: page > 1 ? () => setState(() => page--) : null,
                icon: const Icon(Icons.chevron_left),
                tooltip: 'Previous page',
              ),
              Text('Page $page'),
              IconButton(
                onPressed: () => setState(() => page++),
                icon: const Icon(Icons.chevron_right),
                tooltip: 'Next page',
              ),
              const Spacer(),
              DropdownButton<int>(
                value: perPage,
                items: [10, 25, 50, 100].map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text('$value per page'),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      perPage = value;
                      page = 1;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatusChip(bool status) {
    return Chip(
      label: Text(
        status ? 'Active' : 'Inactive',
        style: TextStyle(
          color: status ? Colors.green[700] : Colors.grey[700],
          fontSize: 12,
        ),
      ),
      backgroundColor: status ? Colors.green[50] : Colors.grey[200],
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  Widget _buildLoadingSkeleton() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            title: Container(height: 16, color: Colors.white),
            subtitle: Container(
              height: 12,
              color: Colors.white,
              margin: const EdgeInsets.only(top: 4),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.people_outline, size: 64, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text('No customers found', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            search.isEmpty
                ? 'Get started by creating your first customer'
                : 'No results match your search',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () => _showCreateDialog(),
            icon: const Icon(Icons.add),
            label: const Text('Create Customer'),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
          const SizedBox(height: 16),
          Text('Oops! Something went wrong', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 8),
          Text(
            'Unable to load customers. Please try again.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.refresh),
            label: const Text('Try Again'),
          ),
        ],
      ),
    );
  }

  void _showCreateDialog() {
    // TODO: Implement create dialog
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Create customer dialog - Coming soon')),
    );
  }

  void _showDetailsDialog(int id) {
    // TODO: Implement details dialog
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('View customer details: $id')),
    );
  }

  void _showEditDialog(int id, Map customer) {
    // TODO: Implement edit dialog
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Edit customer: $id')),
    );
  }

  void _confirmDelete(int id, String name) {
    showConfirmDialog(
      context,
      'Delete Customer',
      'Are you sure you want to delete "$name"? This action cannot be undone.',
      onConfirm: () async {
        try {
          final deleteAction = ref.read(customerDeleteProvider);
          await deleteAction(id);
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.white),
                    SizedBox(width: 12),
                    Text('Customer deleted successfully'),
                  ],
                ),
                backgroundColor: Colors.green,
              ),
            );
          }
        } catch (e) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    const Icon(Icons.error, color: Colors.white),
                    const SizedBox(width: 12),
                    Expanded(child: Text('Failed to delete: $e')),
                  ],
                ),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      },
    );
  }
}

