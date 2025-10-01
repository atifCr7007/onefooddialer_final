import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';
import 'package:food_one/widgets/confirm_dialog.dart';
import 'package:shimmer/shimmer.dart';

class PaymentMethodsListPage extends ConsumerStatefulWidget {
  const PaymentMethodsListPage({super.key});

  @override
  ConsumerState<PaymentMethodsListPage> createState() => _PaymentMethodsListPageState();
}

class _PaymentMethodsListPageState extends ConsumerState<PaymentMethodsListPage> {
  int page = 1;
  int perPage = 10;
  String q = '';
  final selected = <int>{};
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Default customer ID - in real app, this would come from auth context
    final asyncData = ref.watch(paymentmethodsListProvider(1));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Enhanced search bar with clear button
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Payment Methods...',
                    suffixIcon: q.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              searchController.clear();
                              setState(() => q = '');
                            },
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onChanged: (v) => setState(() => q = v),
                ),
              ),
              const SizedBox(width: 12),
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('New'),
              ),
            ],
          ),
        ),
        // Content area with enhanced states
        Expanded(
          child: asyncData.when(
            loading: () => _buildLoadingSkeleton(),
            error: (e, st) => _buildErrorState(e.toString()),
            data: (response) {
              // Extract data from response object
              final rows = response?.data?.toList() ?? [];
              if (rows.isEmpty) {
                return _buildEmptyState();
              }
              return Column(
                children: [
                  // Results count
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          '${rows.length} results',
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
                  // List view
                  Expanded(
                    child: ListView.separated(
                      itemCount: rows.length,
                      separatorBuilder: (_, __) => const Divider(height: 1),
                      itemBuilder: (context, i) {
                        final row = rows[i];
                        return ListTile(
                          leading: Checkbox(
                            value: selected.contains(i),
                            onChanged: (v) => setState(() {
                              v == true ? selected.add(i) : selected.remove(i);
                            }),
                          ),
                          title: Text(
                            row.type ?? 'Payment Method #${row.id ?? 'N/A'}',
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            _formatPaymentMethodSubtitle(row),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Wrap(
                            spacing: 4,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.visibility),
                                tooltip: 'View details',
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.edit),
                                tooltip: 'Edit',
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                tooltip: 'Delete',
                                onPressed: () => showConfirmDialog(
                                  context,
                                  'Delete Item',
                                  'Are you sure you want to delete this item?',
                                  onConfirm: () {},
                                ),
                              ),
                            ],
                          ),
                          onTap: () {},
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

  String _formatPaymentMethodSubtitle(row) {
    final parts = <String>[];
    if (row.provider != null) parts.add('Provider: ${row.provider}');
    if (row.lastFour != null) parts.add('****${row.lastFour}');
    if (row.isDefault != null && row.isDefault == true) parts.add('Default');
    return parts.isEmpty ? 'Payment method' : parts.join(' • ');
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
            title: Container(
              height: 16,
              color: Colors.white,
            ),
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
          Icon(
            Icons.inbox_outlined,
            size: 64,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            'No Payment Methods found',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            q.isEmpty
                ? 'Get started by creating your first item'
                : 'No results match your search',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Create New'),
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
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red[300],
          ),
          const SizedBox(height: 16),
          Text(
            'Oops! Something went wrong',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Unable to load data. Please try again.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
            textAlign: TextAlign.center,
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
}
