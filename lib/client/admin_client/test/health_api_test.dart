import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthApi
void main() {
  final instance = Openapi().getHealthApi();

  group(HealthApi, () {
    // Health check endpoint
    //
    // Returns the health status of the service
    //
    //Future<V2AdminHealthGet200Response> v2AdminHealthGet() async
    test('test v2AdminHealthGet', () async {
      // TODO
    });

  });
}
