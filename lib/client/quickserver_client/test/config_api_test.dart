import 'package:test/test.dart';
import 'package:quickserver_client/quickserver_client.dart';


/// tests for ConfigApi
void main() {
  final instance = QuickserverClient().getConfigApi();

  group(ConfigApi, () {
    // Get all configuration values
    //
    // Returns all configuration values
    //
    //Future<GetAllConfig200Response> getAllConfig() async
    test('test getAllConfig', () async {
      // TODO
    });

    // Get all settings
    //
    // Returns all settings from the database
    //
    //Future<GetAllSettings200Response> getAllSettings() async
    test('test getAllSettings', () async {
      // TODO
    });

    // Get a specific configuration value
    //
    // Returns a specific configuration value by key
    //
    //Future<GetConfigByKey200Response> getConfigByKey(String key) async
    test('test getConfigByKey', () async {
      // TODO
    });

    // Update a configuration value
    //
    // Updates a specific configuration value by key
    //
    //Future<UpdateConfigByKey200Response> updateConfigByKey(String key, UpdateConfigByKeyRequest updateConfigByKeyRequest) async
    test('test updateConfigByKey', () async {
      // TODO
    });

  });
}
