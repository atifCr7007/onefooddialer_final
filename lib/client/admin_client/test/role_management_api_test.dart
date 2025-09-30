import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for RoleManagementApi
void main() {
  final instance = Openapi().getRoleManagementApi();

  group(RoleManagementApi, () {
    // Get all permissions
    //
    // Returns all permissions
    //
    //Future<V2AdminPermissionsGet200Response> v2AdminPermissionsGet() async
    test('test v2AdminPermissionsGet', () async {
      // TODO
    });

    // Get permissions by module
    //
    // Returns permissions for a specific module
    //
    //Future<V2AdminPermissionsGet200Response> v2AdminPermissionsModuleModuleGet(String module) async
    test('test v2AdminPermissionsModuleModuleGet', () async {
      // TODO
    });

    // Get all roles
    //
    // Returns all roles
    //
    //Future<V2AdminRolesGet200Response> v2AdminRolesGet({ int companyId, int unitId }) async
    test('test v2AdminRolesGet', () async {
      // TODO
    });

    // Delete a role
    //
    // Deletes a specific role
    //
    //Future<V2AdminRolesIdDelete200Response> v2AdminRolesIdDelete(int id) async
    test('test v2AdminRolesIdDelete', () async {
      // TODO
    });

    // Get a specific role
    //
    // Returns a specific role
    //
    //Future<V2AdminRolesIdGet200Response> v2AdminRolesIdGet(int id) async
    test('test v2AdminRolesIdGet', () async {
      // TODO
    });

    // Update a role
    //
    // Updates a specific role
    //
    //Future<V2AdminRolesIdPut200Response> v2AdminRolesIdPut(int id, V2AdminRolesIdPutRequest v2AdminRolesIdPutRequest) async
    test('test v2AdminRolesIdPut', () async {
      // TODO
    });

    // Create a new role
    //
    // Creates a new role
    //
    //Future<V2AdminRolesPost201Response> v2AdminRolesPost(V2AdminRolesPostRequest v2AdminRolesPostRequest) async
    test('test v2AdminRolesPost', () async {
      // TODO
    });

  });
}
