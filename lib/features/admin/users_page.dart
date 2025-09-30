import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_one/flutter-ui-codegen-pack-extended-fixed/lib/shared/admin_resource_clients.dart';
import 'providers/admin_providers.dart';

class AdminUsersPage extends ConsumerStatefulWidget {
  const AdminUsersPage({super.key});

  @override
  ConsumerState<AdminUsersPage> createState() => _AdminUsersPageState();
}

class _AdminUsersPageState extends ConsumerState<AdminUsersPage> {
  int currentPage = 1;
  int itemsPerPage = 20;
  String? searchQuery;
  String? selectedRole;
  String? selectedStatus;

  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  UserListParams get currentParams => UserListParams(
    page: currentPage,
    limit: itemsPerPage,
    search: searchQuery,
    role: selectedRole,
    status: selectedStatus,
  );

  @override
  Widget build(BuildContext context) {
    final usersData = ref.watch(usersListProvider(currentParams));
    final userActions = ref.watch(userManagementActionsProvider);

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
                'User Management',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => _showCreateUserDialog(context, userActions),
                icon: const Icon(Icons.add),
                label: const Text('Add User'),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Filters and Search
          _buildFiltersSection(),
          const SizedBox(height: 24),

          // Users List
          Expanded(
            child: _buildUsersContent(usersData, userActions),
          ),
        ],
      ),
    );
  }

  Widget _buildFiltersSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                // Search Field
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      labelText: 'Search users...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        searchQuery = value.isEmpty ? null : value;
                        currentPage = 1;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 16),

                // Role Filter
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedRole,
                    decoration: const InputDecoration(
                      labelText: 'Role',
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(value: null, child: Text('All Roles')),
                      DropdownMenuItem(value: 'admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'manager', child: Text('Manager')),
                      DropdownMenuItem(value: 'user', child: Text('User')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedRole = value;
                        currentPage = 1;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 16),

                // Status Filter
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedStatus,
                    decoration: const InputDecoration(
                      labelText: 'Status',
                      border: OutlineInputBorder(),
                    ),
                    items: const [
                      DropdownMenuItem(value: null, child: Text('All Status')),
                      DropdownMenuItem(value: 'active', child: Text('Active')),
                      DropdownMenuItem(value: 'inactive', child: Text('Inactive')),
                      DropdownMenuItem(value: 'suspended', child: Text('Suspended')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedStatus = value;
                        currentPage = 1;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      searchQuery = searchController.text.isEmpty ? null : searchController.text;
                      currentPage = 1;
                    });
                  },
                  child: const Text('Search'),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {
                    setState(() {
                      searchController.clear();
                      searchQuery = null;
                      selectedRole = null;
                      selectedStatus = null;
                      currentPage = 1;
                    });
                  },
                  child: const Text('Clear Filters'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUsersContent(AsyncValue<dynamic> usersData, UserManagementActions userActions) {
    return usersData.when(
      data: (data) => _buildUsersTable(data, userActions),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => _buildErrorView(error),
    );
  }

  Widget _buildUsersTable(dynamic data, UserManagementActions userActions) {
    final users = Paginator.items(data);
    final total = Paginator.total(data);

    if (users.isEmpty) {
      return _buildEmptyState();
    }

    return Column(
      children: [
        // Users Table
        Expanded(
          child: Card(
            child: SingleChildScrollView(
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Email')),
                  DataColumn(label: Text('Role')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Last Login')),
                  DataColumn(label: Text('Actions')),
                ],
                rows: users.map<DataRow>((user) => _buildUserRow(user, userActions)).toList(),
              ),
            ),
          ),
        ),

        // Pagination
        const SizedBox(height: 16),
        _buildPagination(total),
      ],
    );
  }

  DataRow _buildUserRow(dynamic user, UserManagementActions userActions) {
    final userId = user['id'] ?? 0;
    final firstName = user['firstName'] ?? '';
    final lastName = user['lastName'] ?? '';
    final email = user['email'] ?? '';
    final role = user['role'] ?? '';
    final status = user['status'] ?? '';
    final lastLogin = user['lastLogin'];

    return DataRow(
      cells: [
        DataCell(Text('$firstName $lastName')),
        DataCell(Text(email)),
        DataCell(_buildRoleChip(role)),
        DataCell(_buildStatusChip(status)),
        DataCell(Text(_formatDate(lastLogin))),
        DataCell(_buildActionButtons(userId, user, userActions)),
      ],
    );
  }

  Widget _buildRoleChip(String role) {
    Color color;
    switch (role.toLowerCase()) {
      case 'admin':
        color = Colors.red;
        break;
      case 'manager':
        color = Colors.orange;
        break;
      default:
        color = Colors.blue;
    }

    return Chip(
      label: Text(role),
      backgroundColor: color.withOpacity(0.1),
      labelStyle: TextStyle(color: color, fontSize: 12),
    );
  }

  Widget _buildStatusChip(String status) {
    Color color;
    switch (status.toLowerCase()) {
      case 'active':
        color = Colors.green;
        break;
      case 'suspended':
        color = Colors.red;
        break;
      default:
        color = Colors.grey;
    }

    return Chip(
      label: Text(status),
      backgroundColor: color.withOpacity(0.1),
      labelStyle: TextStyle(color: color, fontSize: 12),
    );
  }

  Widget _buildActionButtons(int userId, dynamic user, UserManagementActions userActions) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () => _showUserDetailsDialog(context, userId),
          icon: const Icon(Icons.visibility),
          tooltip: 'View Details',
        ),
        IconButton(
          onPressed: () => _showEditUserDialog(context, user, userActions),
          icon: const Icon(Icons.edit),
          tooltip: 'Edit User',
        ),
        PopupMenuButton(
          itemBuilder: (context) => [
            if (user['status'] == 'active')
              PopupMenuItem(
                onTap: () => _suspendUser(userId, userActions),
                child: const Row(
                  children: [
                    Icon(Icons.block, color: Colors.orange),
                    SizedBox(width: 8),
                    Text('Suspend'),
                  ],
                ),
              ),
            if (user['status'] == 'suspended')
              PopupMenuItem(
                onTap: () => _activateUser(userId, userActions),
                child: const Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8),
                    Text('Activate'),
                  ],
                ),
              ),
            PopupMenuItem(
              onTap: () => _deleteUser(userId, userActions),
              child: const Row(
                children: [
                  Icon(Icons.delete, color: Colors.red),
                  SizedBox(width: 8),
                  Text('Delete'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPagination(int total) {
    final totalPages = (total / itemsPerPage).ceil();
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Showing ${(currentPage - 1) * itemsPerPage + 1}-${(currentPage * itemsPerPage).clamp(0, total)} of $total users'),
        Row(
          children: [
            IconButton(
              onPressed: currentPage > 1 ? () => setState(() => currentPage--) : null,
              icon: const Icon(Icons.chevron_left),
            ),
            Text('Page $currentPage of $totalPages'),
            IconButton(
              onPressed: currentPage < totalPages ? () => setState(() => currentPage++) : null,
              icon: const Icon(Icons.chevron_right),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people_outline,
            size: 64,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            'No users found',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Try adjusting your search criteria or add a new user',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorView(Object error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          const Text('Failed to load users'),
          const SizedBox(height: 8),
          Text('$error', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ref.invalidate(usersListProvider),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  String _formatDate(dynamic date) {
    if (date == null) return 'Never';
    try {
      final dateTime = DateTime.parse(date.toString());
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    } catch (e) {
      return 'Invalid date';
    }
  }

  void _showCreateUserDialog(BuildContext context, UserManagementActions userActions) {
    // Implementation for create user dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add New User'),
        content: const Text('User creation form will be implemented here'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  void _showEditUserDialog(BuildContext context, dynamic user, UserManagementActions userActions) {
    // Implementation for edit user dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit User'),
        content: const Text('User edit form will be implemented here'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showUserDetailsDialog(BuildContext context, int userId) {
    // Implementation for user details dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('User Details'),
        content: const Text('User details will be displayed here'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _suspendUser(int userId, UserManagementActions userActions) {
    // Implementation for suspend user
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('User suspension functionality to be implemented')),
    );
  }

  void _activateUser(int userId, UserManagementActions userActions) {
    // Implementation for activate user
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('User activation functionality to be implemented')),
    );
  }

  void _deleteUser(int userId, UserManagementActions userActions) {
    // Implementation for delete user
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete User'),
        content: const Text('Are you sure you want to delete this user? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('User deletion functionality to be implemented')),
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }
}
