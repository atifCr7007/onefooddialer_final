import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthApi
void main() {
  final instance = Openapi().getHealthApi();

  group(HealthApi, () {
    // Check service health
    //
    // Returns the health status of the service
    //
    //Future<HealthCheck200Response> healthCheck() async
    test('test healthCheck', () async {
      // TODO
    });

  });
}
