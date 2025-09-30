import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserManagementApi
void main() {
  final instance = Openapi().getUserManagementApi();

  group(UserManagementApi, () {
    // List admin users
    //
    // Retrieve paginated list of admin users with filtering and search
    //
    //Future<UsersResponse> usersGet({ int page, int limit, String search, String role, String status }) async
    test('test usersGet', () async {
      // TODO
    });

    // Create new admin user
    //
    // Create a new admin user with specified role and permissions
    //
    //Future<AdminUser> usersPost(CreateUserRequest createUserRequest) async
    test('test usersPost', () async {
      // TODO
    });

    // Activate admin user
    //
    // Activate a suspended or inactive admin user
    //
    //Future usersUserIdActivatePost(String userId) async
    test('test usersUserIdActivatePost', () async {
      // TODO
    });

    // Delete admin user
    //
    // Permanently delete an admin user account
    //
    //Future usersUserIdDelete(String userId) async
    test('test usersUserIdDelete', () async {
      // TODO
    });

    // Get admin user by ID
    //
    // Retrieve detailed information about a specific admin user
    //
    //Future<AdminUser> usersUserIdGet(String userId) async
    test('test usersUserIdGet', () async {
      // TODO
    });

    // Update admin user
    //
    // Update admin user information, role, or permissions
    //
    //Future<AdminUser> usersUserIdPut(String userId, UpdateUserRequest updateUserRequest) async
    test('test usersUserIdPut', () async {
      // TODO
    });

    // Suspend admin user
    //
    // Temporarily suspend an admin user account
    //
    //Future usersUserIdSuspendPost(String userId, UsersUserIdSuspendPostRequest usersUserIdSuspendPostRequest) async
    test('test usersUserIdSuspendPost', () async {
      // TODO
    });

    // Get current user information
    //
    // Returns information about the authenticated user
    //
    //Future<V2AdminUserGet200Response> v2AdminUserGet() async
    test('test v2AdminUserGet', () async {
      // TODO
    });

  });
}
