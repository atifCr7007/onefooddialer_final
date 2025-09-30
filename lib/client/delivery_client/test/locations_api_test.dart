import 'package:test/test.dart';
import 'package:delivery_client/openapi.dart';


/// tests for LocationsApi
void main() {
  final instance = Openapi().getLocationsApi();

  group(LocationsApi, () {
    // Get delivery locations
    //
    // Returns a list of delivery locations for the authenticated user
    //
    //Future<GetDeliveryLocations200Response> getDeliveryLocations() async
    test('test getDeliveryLocations', () async {
      // TODO
    });

  });
}
