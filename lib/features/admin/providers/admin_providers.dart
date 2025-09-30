import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_one/flutter-ui-codegen-pack-extended-fixed/lib/shared/admin_resource_clients.dart';

/// Dashboard Providers
final dashboardClientProvider = Provider<DashboardResourceClient>((ref) {
  return createDashboardClient();
});

final dashboardDataProvider = FutureProvider.family<dynamic, String>((ref, timeRange) async {
  final client = ref.watch(dashboardClientProvider);
  return await client.getDashboard(timeRange: timeRange);
});

final dashboardOverviewProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(dashboardClientProvider);
  return await client.getOverview();
});

final dashboardQuickStatsProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(dashboardClientProvider);
  return await client.getQuickStats();
});

final dashboardSystemHealthProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(dashboardClientProvider);
  return await client.getSystemHealth();
});

/// Health Providers
final healthClientProvider = Provider<HealthResourceClient>((ref) {
  return createHealthClient();
});

final healthStatusProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(healthClientProvider);
  return await client.getHealth();
});

final detailedHealthProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(healthClientProvider);
  return await client.getDetailedHealth();
});

/// User Management Providers
final userManagementClientProvider = Provider<UserManagementResourceClient>((ref) {
  return createUserManagementClient();
});

class UserListParams {
  final int page;
  final int limit;
  final String? search;
  final String? role;
  final String? status;

  const UserListParams({
    this.page = 1,
    this.limit = 20,
    this.search,
    this.role,
    this.status,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserListParams &&
          runtimeType == other.runtimeType &&
          page == other.page &&
          limit == other.limit &&
          search == other.search &&
          role == other.role &&
          status == other.status;

  @override
  int get hashCode =>
      page.hashCode ^
      limit.hashCode ^
      search.hashCode ^
      role.hashCode ^
      status.hashCode;
}

final usersListProvider = FutureProvider.family<dynamic, UserListParams>((ref, params) async {
  final client = ref.watch(userManagementClientProvider);
  return await client.list(
    page: params.page,
    limit: params.limit,
    search: params.search,
    role: params.role,
    status: params.status,
  );
});

final userDetailProvider = FutureProvider.family<dynamic, String>((ref, userId) async {
  final client = ref.watch(userManagementClientProvider);
  return await client.get(userId);
});

/// User Management Actions
final userManagementActionsProvider = Provider<UserManagementActions>((ref) {
  final client = ref.watch(userManagementClientProvider);
  return UserManagementActions(client, ref);
});

class UserManagementActions {
  final UserManagementResourceClient _client;
  final Ref _ref;

  UserManagementActions(this._client, this._ref);

  Future<dynamic> createUser(Map<String, dynamic> userData) async {
    final result = await _client.create(userData);
    // Invalidate the users list to refresh data
    _ref.invalidate(usersListProvider);
    return result;
  }

  Future<dynamic> updateUser(String id, Map<String, dynamic> userData) async {
    final result = await _client.update(id, userData);
    // Invalidate both list and detail providers
    _ref.invalidate(usersListProvider);
    _ref.invalidate(userDetailProvider(id));
    return result;
  }

  Future<dynamic> deleteUser(String id) async {
    final result = await _client.remove(id);
    // Invalidate the users list to refresh data
    _ref.invalidate(usersListProvider);
    return result;
  }

  Future<dynamic> suspendUser(String id, Map<String, dynamic> suspendData) async {
    final result = await _client.suspend(id, suspendData);
    // Invalidate both list and detail providers
    _ref.invalidate(usersListProvider);
    _ref.invalidate(userDetailProvider(id));
    return result;
  }

  Future<dynamic> activateUser(String id) async {
    final result = await _client.activate(id);
    // Invalidate both list and detail providers
    _ref.invalidate(usersListProvider);
    _ref.invalidate(userDetailProvider(id));
    return result;
  }
}

/// Role Management Providers
final roleManagementClientProvider = Provider<RoleManagementResourceClient>((ref) {
  return createRoleManagementClient();
});

final rolesListProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(roleManagementClientProvider);
  return await client.list();
});

final roleDetailProvider = FutureProvider.family<dynamic, int>((ref, roleId) async {
  final client = ref.watch(roleManagementClientProvider);
  return await client.get(roleId);
});

final permissionsListProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(roleManagementClientProvider);
  return await client.getPermissions();
});

/// Role Management Actions
final roleManagementActionsProvider = Provider<RoleManagementActions>((ref) {
  final client = ref.watch(roleManagementClientProvider);
  return RoleManagementActions(client, ref);
});

class RoleManagementActions {
  final RoleManagementResourceClient _client;
  final Ref _ref;

  RoleManagementActions(this._client, this._ref);

  Future<dynamic> createRole(Map<String, dynamic> roleData) async {
    final result = await _client.create(roleData);
    // Invalidate the roles list to refresh data
    _ref.invalidate(rolesListProvider);
    return result;
  }

  Future<dynamic> updateRole(int id, Map<String, dynamic> roleData) async {
    final result = await _client.update(id, roleData);
    // Invalidate both list and detail providers
    _ref.invalidate(rolesListProvider);
    _ref.invalidate(roleDetailProvider(id));
    return result;
  }

  Future<dynamic> deleteRole(int id) async {
    final result = await _client.remove(id);
    // Invalidate the roles list to refresh data
    _ref.invalidate(rolesListProvider);
    return result;
  }
}

/// System Settings Providers
final systemSettingsClientProvider = Provider<SystemSettingsResourceClient>((ref) {
  return createSystemSettingsClient();
});

final systemSettingsProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(systemSettingsClientProvider);
  return await client.getSettings();
});

/// System Settings Actions
final systemSettingsActionsProvider = Provider<SystemSettingsActions>((ref) {
  final client = ref.watch(systemSettingsClientProvider);
  return SystemSettingsActions(client, ref);
});

class SystemSettingsActions {
  final SystemSettingsResourceClient _client;
  final Ref _ref;

  SystemSettingsActions(this._client, this._ref);

  Future<dynamic> updateSettings(Map<String, dynamic> settings) async {
    final result = await _client.updateSettings(settings);
    // Invalidate the settings provider to refresh data
    _ref.invalidate(systemSettingsProvider);
    return result;
  }
}
