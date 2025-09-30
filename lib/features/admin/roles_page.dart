import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_one/flutter-ui-codegen-pack-extended-fixed/lib/shared/admin_resource_clients.dart';
import 'providers/admin_providers.dart';

class AdminRolesPage extends ConsumerWidget {
  const AdminRolesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rolesData = ref.watch(rolesListProvider);
    final permissionsData = ref.watch(permissionsListProvider);
    final roleActions = ref.watch(roleManagementActionsProvider);

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
                'Role Management',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => _showCreateRoleDialog(context, roleActions, permissionsData),
                icon: const Icon(Icons.add),
                label: const Text('Add Role'),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Roles Content
          Expanded(
            child: _buildRolesContent(context, rolesData, permissionsData, roleActions),
          ),
        ],
      ),
    );
  }

  Widget _buildRolesContent(
    BuildContext context,
    AsyncValue<dynamic> rolesData,
    AsyncValue<dynamic> permissionsData,
    RoleManagementActions roleActions,
  ) {
    return rolesData.when(
      data: (roles) => _buildRolesList(context, roles, permissionsData, roleActions),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => _buildErrorView(context, error, () => {}),
    );
  }

  Widget _buildRolesList(
    BuildContext context,
    dynamic rolesData,
    AsyncValue<dynamic> permissionsData,
    RoleManagementActions roleActions,
  ) {
    final roles = Paginator.items(rolesData);

    if (roles.isEmpty) {
      return _buildEmptyState(context);
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: roles.length,
      itemBuilder: (context, index) {
        final role = roles[index];
        return _buildRoleCard(context, role, permissionsData, roleActions);
      },
    );
  }

  Widget _buildRoleCard(
    BuildContext context,
    dynamic role,
    AsyncValue<dynamic> permissionsData,
    RoleManagementActions roleActions,
  ) {
    final roleName = role['name'] ?? 'Unknown Role';
    final description = role['description'] ?? '';
    final permissions = role['permissions'] as List? ?? [];
    final userCount = role['userCount'] ?? 0;
    final isSystemRole = role['isSystem'] ?? false;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Role Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        roleName,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (isSystemRole)
                        Chip(
                          label: const Text('System'),
                          backgroundColor: Colors.blue.withOpacity(0.1),
                          labelStyle: const TextStyle(
                            color: Colors.blue,
                            fontSize: 10,
                          ),
                        ),
                    ],
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () => _showRoleDetailsDialog(context, role, permissionsData),
                      child: const Row(
                        children: [
                          Icon(Icons.visibility),
                          SizedBox(width: 8),
                          Text('View Details'),
                        ],
                      ),
                    ),
                    if (!isSystemRole) ...[
                      PopupMenuItem(
                        onTap: () => _showEditRoleDialog(context, role, roleActions, permissionsData),
                        child: const Row(
                          children: [
                            Icon(Icons.edit),
                            SizedBox(width: 8),
                            Text('Edit'),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => _deleteRole(context, role['id'], roleActions),
                        child: const Row(
                          children: [
                            Icon(Icons.delete, color: Colors.red),
                            SizedBox(width: 8),
                            Text('Delete'),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Description
            if (description.isNotEmpty) ...[
              Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
            ],

            // Stats
            Row(
              children: [
                Icon(
                  Icons.people,
                  size: 16,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 4),
                Text(
                  '$userCount users',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Spacer(),
                Icon(
                  Icons.security,
                  size: 16,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 4),
                Text(
                  '${permissions.length} permissions',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Permissions Preview
            if (permissions.isNotEmpty) ...[
              Text(
                'Permissions:',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Wrap(
                spacing: 4,
                runSpacing: 4,
                children: permissions.take(3).map<Widget>((permission) {
                  return Chip(
                    label: Text(permission.toString()),
                    backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                    labelStyle: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontSize: 10,
                    ),
                  );
                }).toList()
                  ..addAll(permissions.length > 3 
                    ? [
                        Chip(
                          label: Text('+${permissions.length - 3} more'),
                          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
                          labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                            fontSize: 10,
                          ),
                        ),
                      ]
                    : []),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.security,
            size: 64,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            'No roles found',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Create your first role to get started',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorView(BuildContext context, Object error, VoidCallback onRetry) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          const Text('Failed to load roles'),
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

  void _showCreateRoleDialog(
    BuildContext context,
    RoleManagementActions roleActions,
    AsyncValue<dynamic> permissionsData,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create New Role'),
        content: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Role Name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              permissionsData.when(
                data: (permissions) => _buildPermissionsSelector(permissions),
                loading: () => const CircularProgressIndicator(),
                error: (error, stack) => Text('Failed to load permissions: $error'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Role creation functionality to be implemented')),
              );
            },
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }

  void _showEditRoleDialog(
    BuildContext context,
    dynamic role,
    RoleManagementActions roleActions,
    AsyncValue<dynamic> permissionsData,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Role: ${role['name']}'),
        content: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Role Name',
                  border: OutlineInputBorder(),
                ),
                controller: TextEditingController(text: role['name']),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                controller: TextEditingController(text: role['description']),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              permissionsData.when(
                data: (permissions) => _buildPermissionsSelector(permissions, selectedPermissions: role['permissions']),
                loading: () => const CircularProgressIndicator(),
                error: (error, stack) => Text('Failed to load permissions: $error'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Role update functionality to be implemented')),
              );
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showRoleDetailsDialog(
    BuildContext context,
    dynamic role,
    AsyncValue<dynamic> permissionsData,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Role Details: ${role['name']}'),
        content: SizedBox(
          width: 400,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailRow('Name', role['name']),
              _buildDetailRow('Description', role['description'] ?? 'No description'),
              _buildDetailRow('Users', '${role['userCount'] ?? 0}'),
              _buildDetailRow('System Role', role['isSystem'] ? 'Yes' : 'No'),
              const SizedBox(height: 16),
              const Text('Permissions:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              if (role['permissions'] != null && (role['permissions'] as List).isNotEmpty)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: (role['permissions'] as List).map<Widget>((permission) {
                    return Chip(
                      label: Text(permission.toString()),
                      backgroundColor: Colors.blue.withOpacity(0.1),
                      labelStyle: const TextStyle(color: Colors.blue, fontSize: 12),
                    );
                  }).toList(),
                )
              else
                const Text('No permissions assigned'),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildPermissionsSelector(dynamic permissions, {List? selectedPermissions}) {
    final permissionsList = Paginator.items(permissions);
    final selected = selectedPermissions ?? [];

    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: ListView.builder(
        itemCount: permissionsList.length,
        itemBuilder: (context, index) {
          final permission = permissionsList[index];
          final permissionName = permission['name'] ?? permission.toString();
          final isSelected = selected.contains(permissionName);

          return CheckboxListTile(
            title: Text(permissionName),
            subtitle: permission is Map ? Text(permission['description'] ?? '') : null,
            value: isSelected,
            onChanged: (value) {
              // Handle permission selection
            },
          );
        },
      ),
    );
  }

  void _deleteRole(BuildContext context, int roleId, RoleManagementActions roleActions) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Role'),
        content: const Text('Are you sure you want to delete this role? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Role deletion functionality to be implemented')),
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
