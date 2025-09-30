import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for HealthApi
void main() {
  final instance = Openapi().getHealthApi();

  group(HealthApi, () {
    // Health check
    //
    // Check if the invoice service is healthy
    //
    //Future<HealthGet200Response> healthGet() async
    test('test healthGet', () async {
      // TODO
    });

  });
}
