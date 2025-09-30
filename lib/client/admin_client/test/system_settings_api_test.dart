import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for SystemSettingsApi
void main() {
  final instance = Openapi().getSystemSettingsApi();

  group(SystemSettingsApi, () {
    // Get all configuration values
    //
    // Returns all configuration values
    //
    //Future<V2AdminConfigGet200Response> v2AdminConfigGet({ int companyId, int unitId }) async
    test('test v2AdminConfigGet', () async {
      // TODO
    });

    // Get settings by group
    //
    // Returns configuration values for a specific group
    //
    //Future<V2AdminConfigGroupGroupGet200Response> v2AdminConfigGroupGroupGet(String group, { int companyId, int unitId }) async
    test('test v2AdminConfigGroupGroupGet', () async {
      // TODO
    });

    // Delete a configuration value
    //
    // Deletes a specific configuration value
    //
    //Future<V2AdminConfigKeyDelete200Response> v2AdminConfigKeyDelete(String key, { int companyId, int unitId }) async
    test('test v2AdminConfigKeyDelete', () async {
      // TODO
    });

    // Get a specific configuration value
    //
    // Returns a specific configuration value
    //
    //Future<V2AdminConfigKeyGet200Response> v2AdminConfigKeyGet(String key, { int companyId, int unitId }) async
    test('test v2AdminConfigKeyGet', () async {
      // TODO
    });

    // Update a configuration value
    //
    // Updates a specific configuration value
    //
    //Future<V2AdminConfigKeyPut200Response> v2AdminConfigKeyPut(String key, V2AdminConfigKeyPutRequest v2AdminConfigKeyPutRequest) async
    test('test v2AdminConfigKeyPut', () async {
      // TODO
    });

    // Setup company profile
    //
    // Sets up the company profile
    //
    //Future<V2AdminSetupWizardCompanyProfilePost200Response> v2AdminSetupWizardCompanyProfilePost(V2AdminSetupWizardCompanyProfilePostRequest v2AdminSetupWizardCompanyProfilePostRequest) async
    test('test v2AdminSetupWizardCompanyProfilePost', () async {
      // TODO
    });

    // Complete setup wizard
    //
    // Completes the setup wizard
    //
    //Future<V2AdminSetupWizardCompletePost200Response> v2AdminSetupWizardCompletePost({ int companyId, int unitId }) async
    test('test v2AdminSetupWizardCompletePost', () async {
      // TODO
    });

    // Get setup wizard status
    //
    // Returns the current status of the setup wizard
    //
    //Future<V2AdminSetupWizardStatusGet200Response> v2AdminSetupWizardStatusGet() async
    test('test v2AdminSetupWizardStatusGet', () async {
      // TODO
    });

    // Update setup wizard status
    //
    // Updates the status of the setup wizard
    //
    //Future<V2AdminSetupWizardStatusPut200Response> v2AdminSetupWizardStatusPut(V2AdminSetupWizardStatusPutRequest v2AdminSetupWizardStatusPutRequest) async
    test('test v2AdminSetupWizardStatusPut', () async {
      // TODO
    });

    // Setup system settings
    //
    // Sets up the system settings
    //
    //Future<V2AdminSetupWizardSystemSettingsPost200Response> v2AdminSetupWizardSystemSettingsPost(V2AdminSetupWizardSystemSettingsPostRequest v2AdminSetupWizardSystemSettingsPostRequest) async
    test('test v2AdminSetupWizardSystemSettingsPost', () async {
      // TODO
    });

  });
}
