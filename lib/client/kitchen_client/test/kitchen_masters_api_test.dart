import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for KitchenMastersApi
void main() {
  final instance = Openapi().getKitchenMastersApi();

  group(KitchenMastersApi, () {
    // Create a kitchen master
    //
    // Creates a new kitchen master
    //
    //Future<KitchenMaster> createKitchenMaster(KitchenMasterInput kitchenMasterInput) async
    test('test createKitchenMaster', () async {
      // TODO
    });

    // Delete a kitchen master
    //
    // Deletes a kitchen master
    //
    //Future<DeleteKitchenMaster200Response> deleteKitchenMaster(int id) async
    test('test deleteKitchenMaster', () async {
      // TODO
    });

    // Get a kitchen master by ID
    //
    // Returns a kitchen master by ID
    //
    //Future<KitchenMaster> getKitchenMasterById(int id) async
    test('test getKitchenMasterById', () async {
      // TODO
    });

    // Get all kitchen masters
    //
    // Returns a list of all kitchen masters with optional filtering
    //
    //Future<GetKitchenMasters200Response> getKitchenMasters({ bool status, int companyId, int unitId }) async
    test('test getKitchenMasters', () async {
      // TODO
    });

    // Update a kitchen master
    //
    // Updates a kitchen master
    //
    //Future<KitchenMaster> updateKitchenMaster(int id, KitchenMasterInput kitchenMasterInput) async
    test('test updateKitchenMaster', () async {
      // TODO
    });

  });
}
