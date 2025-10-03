import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:admin_client/openapi.dart';

class Paginator {
  static List items(dynamic payload) {
    if (payload is Map) return (payload['data'] ?? payload['items'] ?? []) as List;
    if (payload is List) return payload;
    return [];
  }

  static int total(dynamic payload) {
    if (payload is Map) return (payload['meta']?['total'] ?? payload['total'] ?? 0) as int;
    return 0;
  }
}

/// Dashboard Resource Client
class DashboardResourceClient {
  final Dio http;
  final DashboardApi api;

  DashboardResourceClient(this.http, this.api);

  Future<dynamic> getDashboard({String timeRange = '7d'}) async {
    try {
      final response = await api.dashboardGet(timeRange: timeRange);
      return response.data;
    } catch (e) {
      print('Error in getDashboard: $e');
      rethrow;
    }
  }

  Future<dynamic> getOverview() async {
    try {
      final response = await api.dashboardOverviewGet();
      return response.data;
    } catch (e) {
      print('Error in getOverview: $e');
      rethrow;
    }
  }

  Future<dynamic> getQuickStats() async {
    try {
      final response = await api.dashboardQuickStatsGet();
      return response.data;
    } catch (e) {
      print('Error in getQuickStats: $e');
      rethrow;
    }
  }

  Future<dynamic> getSystemHealth() async {
    try {
      final response = await api.dashboardSystemHealthGet();
      return response.data;
    } catch (e) {
      print('Error in getSystemHealth: $e');
      rethrow;
    }
  }
}

/// Health Resource Client
class HealthResourceClient {
  final Dio http;
  final HealthApi api;

  HealthResourceClient(this.http, this.api);

  Future<dynamic> getHealth() async {
    try {
      final response = await api.v2AdminHealthGet();
      return response.data;
    } catch (e) {
      print('Error in getHealth: $e');
      rethrow;
    }
  }

  Future<dynamic> getDetailedHealth() async {
    try {
      final response = await api.v2AdminHealthGet();
      return response.data;
    } catch (e) {
      print('Error in getDetailedHealth: $e');
      rethrow;
    }
  }
}

/// User Management Resource Client
class UserManagementResourceClient {
  final Dio http;
  final UserManagementApi api;

  UserManagementResourceClient(this.http, this.api);

  Future<dynamic> list({
    int page = 1,
    int limit = 20,
    String? search,
    String? role,
    String? status,
  }) async {
    try {
      final response = await api.usersGet(
        page: page,
        limit: limit,
        search: search,
        role: role,
        status: status,
      );
      return response.data;
    } catch (e) {
      print('Error in list users: $e');
      rethrow;
    }
  }

  Future<dynamic> get(String id) async {
    try {
      final response = await api.usersUserIdGet(userId: id);
      return response.data;
    } catch (e) {
      print('Error in get user: $e');
      rethrow;
    }
  }

  Future<dynamic> create(Map<String, dynamic> userData) async {
    try {
      final request = CreateUserRequest((b) => b
        ..email = userData['email']
        ..name = userData['name'] ?? '${userData['firstName']} ${userData['lastName']}'
        ..roleId = userData['roleId'] ?? userData['role']
        ..password = userData['password']
      );
      final response = await api.usersPost(createUserRequest: request);
      return response.data;
    } catch (e) {
      print('Error in create user: $e');
      rethrow;
    }
  }

  Future<dynamic> update(String id, Map<String, dynamic> userData) async {
    try {
      final request = UpdateUserRequest((b) => b
        ..email = userData['email']
        ..name = userData['name'] ?? '${userData['firstName']} ${userData['lastName']}'
        ..roleId = userData['roleId'] ?? userData['role']
      );
      final response = await api.usersUserIdPut(userId: id, updateUserRequest: request);
      return response.data;
    } catch (e) {
      print('Error in update user: $e');
      rethrow;
    }
  }

  Future<dynamic> remove(String id) async {
    try {
      final response = await api.usersUserIdDelete(userId: id);
      return response.data;
    } catch (e) {
      print('Error in remove user: $e');
      rethrow;
    }
  }

  Future<dynamic> suspend(String id, Map<String, dynamic> suspendData) async {
    try {
      final request = UsersUserIdSuspendPostRequest((b) => b
        ..reason = suspendData['reason']
        ..duration = suspendData['duration']
      );
      final response = await api.usersUserIdSuspendPost(userId: id, usersUserIdSuspendPostRequest: request);
      return response.data;
    } catch (e) {
      print('Error in suspend user: $e');
      rethrow;
    }
  }

  Future<dynamic> activate(String id) async {
    try {
      final response = await api.usersUserIdActivatePost(userId: id);
      return response.data;
    } catch (e) {
      print('Error in activate user: $e');
      rethrow;
    }
  }
}

/// Role Management Resource Client
class RoleManagementResourceClient {
  final Dio http;
  final RoleManagementApi api;

  RoleManagementResourceClient(this.http, this.api);

  Future<dynamic> list() async {
    try {
      final response = await api.v2AdminRolesGet();
      return response.data;
    } catch (e) {
      print('Error in list roles: $e');
      rethrow;
    }
  }

  Future<dynamic> get(int id) async {
    try {
      final response = await api.v2AdminRolesIdGet(id: id);
      return response.data;
    } catch (e) {
      print('Error in get role: $e');
      rethrow;
    }
  }

  Future<dynamic> create(Map<String, dynamic> roleData) async {
    try {
      final request = V2AdminRolesPostRequest((b) => b
        ..name = roleData['name']
        ..description = roleData['description']
        // Note: permissions might need different handling based on actual API structure
      );
      final response = await api.v2AdminRolesPost(v2AdminRolesPostRequest: request);
      return response.data;
    } catch (e) {
      print('Error in create role: $e');
      rethrow;
    }
  }

  Future<dynamic> update(int id, Map<String, dynamic> roleData) async {
    try {
      final request = V2AdminRolesIdPutRequest((b) => b
        ..name = roleData['name']
        ..description = roleData['description']
        // Note: permissions might need different handling based on actual API structure
      );
      final response = await api.v2AdminRolesIdPut(id: id, v2AdminRolesIdPutRequest: request);
      return response.data;
    } catch (e) {
      print('Error in update role: $e');
      rethrow;
    }
  }

  Future<dynamic> remove(int id) async {
    try {
      final response = await api.v2AdminRolesIdDelete(id: id);
      return response.data;
    } catch (e) {
      print('Error in remove role: $e');
      rethrow;
    }
  }

  Future<dynamic> getPermissions() async {
    try {
      final response = await api.v2AdminPermissionsGet();
      return response.data;
    } catch (e) {
      print('Error in get permissions: $e');
      rethrow;
    }
  }
}

/// System Settings Resource Client
class SystemSettingsResourceClient {
  final Dio http;
  final SystemSettingsApi api;

  SystemSettingsResourceClient(this.http, this.api);

  Future<dynamic> getSettings() async {
    try {
      final response = await api.v2AdminConfigGet();
      return response.data;
    } catch (e) {
      print('Error in getSettings: $e');
      rethrow;
    }
  }

  Future<dynamic> updateSettings(Map<String, dynamic> settings) async {
    try {
      // This would need the proper request model based on the API
      print('Update settings called with: $settings');
      return {'success': true, 'message': 'Settings update to be implemented'};
    } catch (e) {
      print('Error in updateSettings: $e');
      rethrow;
    }
  }
}

/// Factory functions to create admin resource clients
DashboardResourceClient createDashboardClient() {
  final dio = _createDio();
  final api = DashboardApi(dio, standardSerializers);
  return DashboardResourceClient(dio, api);
}

HealthResourceClient createHealthClient() {
  final dio = _createDio();
  final api = HealthApi(dio, standardSerializers);
  return HealthResourceClient(dio, api);
}

UserManagementResourceClient createUserManagementClient() {
  final dio = _createDio();
  final api = UserManagementApi(dio, standardSerializers);
  return UserManagementResourceClient(dio, api);
}

RoleManagementResourceClient createRoleManagementClient() {
  final dio = _createDio();
  final api = RoleManagementApi(dio, standardSerializers);
  return RoleManagementResourceClient(dio, api);
}

SystemSettingsResourceClient createSystemSettingsClient() {
  final dio = _createDio();
  final api = SystemSettingsApi(dio, standardSerializers);
  return SystemSettingsResourceClient(dio, api);
}

Dio _createDio() {
  // Use Prism mock server URL for development (port 4010), production URL from environment
  final bool useMockServers = const bool.fromEnvironment('USE_MOCK_SERVERS', defaultValue: true);
  final String baseUrl = useMockServers
      ? 'http://localhost:4010'  // Prism mock server for Admin service
      : const String.fromEnvironment('PROD_ADMIN_URL', defaultValue: 'https://api.onefood.com/v2/admin-service-v12');

  final dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ));

  // Add interceptors for auth
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      final token = const String.fromEnvironment('JWT_TOKEN', defaultValue: '');
      if (token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
      return handler.next(options);
    },
  ));

  return dio;
}
