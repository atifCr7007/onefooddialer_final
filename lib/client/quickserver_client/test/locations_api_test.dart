import 'package:test/test.dart';
import 'package:quickserver_client/quickserver_client.dart';


/// tests for LocationsApi
void main() {
  final instance = QuickserverClient().getLocationsApi();

  group(LocationsApi, () {
    // Create a new location mapping
    //
    // Creates a new location mapping with the provided data
    //
    //Future<CreateLocationMapping200Response> createLocationMapping(LocationMappingCreate locationMappingCreate) async
    test('test createLocationMapping', () async {
      // TODO
    });

    // Delete location mapping
    //
    // Deletes an existing location mapping
    //
    //Future<DeleteLocationMapping200Response> deleteLocationMapping(int id) async
    test('test deleteLocationMapping', () async {
      // TODO
    });

    // Get location mapping by ID
    //
    // Returns a single location mapping by ID
    //
    //Future<GetLocationMappingById200Response> getLocationMappingById(int id) async
    test('test getLocationMappingById', () async {
      // TODO
    });

    // Get all location mappings
    //
    // Returns a list of all location mappings with optional filtering
    //
    //Future<GetLocationMappings200Response> getLocationMappings({ String cityCode, String kitchenCode, int status, String search }) async
    test('test getLocationMappings', () async {
      // TODO
    });

    // Get locations by city
    //
    // Returns a list of locations for a specific city
    //
    //Future<GetLocationMappings200Response> getLocationsByCity(String cityCode) async
    test('test getLocationsByCity', () async {
      // TODO
    });

    // Get locations by kitchen
    //
    // Returns a list of locations for a specific kitchen
    //
    //Future<GetLocationMappings200Response> getLocationsByKitchen(String kitchenCode) async
    test('test getLocationsByKitchen', () async {
      // TODO
    });

    // Update location mapping
    //
    // Updates an existing location mapping
    //
    //Future<UpdateLocationMapping200Response> updateLocationMapping(int id, LocationMappingUpdate locationMappingUpdate) async
    test('test updateLocationMapping', () async {
      // TODO
    });

  });
}
