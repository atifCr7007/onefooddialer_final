import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for KitchensApi
void main() {
  final instance = Openapi().getKitchensApi();

  group(KitchensApi, () {
    // Get a kitchen by ID
    //
    // Returns a kitchen by ID
    //
    //Future<Kitchen> getKitchenById(int id) async
    test('test getKitchenById', () async {
      // TODO
    });

    // Get all kitchens
    //
    // Returns a list of all kitchens with optional filtering
    //
    //Future<GetKitchens200Response> getKitchens({ Date date, String menu, int kitchenId }) async
    test('test getKitchens', () async {
      // TODO
    });

    // Update all prepared count
    //
    // Updates all prepared count for a kitchen
    //
    //Future<Kitchen> updateAllPrepared(int id, UpdatePreparedRequest updatePreparedRequest) async
    test('test updateAllPrepared', () async {
      // TODO
    });

    // Update prepared count
    //
    // Updates the prepared count for a kitchen
    //
    //Future<Kitchen> updatePrepared(int id, UpdatePreparedRequest updatePreparedRequest) async
    test('test updatePrepared', () async {
      // TODO
    });

  });
}
