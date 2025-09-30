# openapi.api.SystemSettingsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/admin-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2AdminConfigGet**](SystemSettingsApi.md#v2adminconfigget) | **GET** /v2/admin/config | Get all configuration values
[**v2AdminConfigGroupGroupGet**](SystemSettingsApi.md#v2adminconfiggroupgroupget) | **GET** /v2/admin/config/group/{group} | Get settings by group
[**v2AdminConfigKeyDelete**](SystemSettingsApi.md#v2adminconfigkeydelete) | **DELETE** /v2/admin/config/{key} | Delete a configuration value
[**v2AdminConfigKeyGet**](SystemSettingsApi.md#v2adminconfigkeyget) | **GET** /v2/admin/config/{key} | Get a specific configuration value
[**v2AdminConfigKeyPut**](SystemSettingsApi.md#v2adminconfigkeyput) | **PUT** /v2/admin/config/{key} | Update a configuration value
[**v2AdminSetupWizardCompanyProfilePost**](SystemSettingsApi.md#v2adminsetupwizardcompanyprofilepost) | **POST** /v2/admin/setup-wizard/company-profile | Setup company profile
[**v2AdminSetupWizardCompletePost**](SystemSettingsApi.md#v2adminsetupwizardcompletepost) | **POST** /v2/admin/setup-wizard/complete | Complete setup wizard
[**v2AdminSetupWizardStatusGet**](SystemSettingsApi.md#v2adminsetupwizardstatusget) | **GET** /v2/admin/setup-wizard/status | Get setup wizard status
[**v2AdminSetupWizardStatusPut**](SystemSettingsApi.md#v2adminsetupwizardstatusput) | **PUT** /v2/admin/setup-wizard/status | Update setup wizard status
[**v2AdminSetupWizardSystemSettingsPost**](SystemSettingsApi.md#v2adminsetupwizardsystemsettingspost) | **POST** /v2/admin/setup-wizard/system-settings | Setup system settings


# **v2AdminConfigGet**
> V2AdminConfigGet200Response v2AdminConfigGet(companyId, unitId)

Get all configuration values

Returns all configuration values

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final int companyId = 56; // int | Company ID
final int unitId = 56; // int | Unit ID

try {
    final response = api.v2AdminConfigGet(companyId, unitId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminConfigGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Company ID | [optional] 
 **unitId** | **int**| Unit ID | [optional] 

### Return type

[**V2AdminConfigGet200Response**](V2AdminConfigGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminConfigGroupGroupGet**
> V2AdminConfigGroupGroupGet200Response v2AdminConfigGroupGroupGet(group, companyId, unitId)

Get settings by group

Returns configuration values for a specific group

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final String group = group_example; // String | Setting group
final int companyId = 56; // int | Company ID
final int unitId = 56; // int | Unit ID

try {
    final response = api.v2AdminConfigGroupGroupGet(group, companyId, unitId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminConfigGroupGroupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| Setting group | 
 **companyId** | **int**| Company ID | [optional] 
 **unitId** | **int**| Unit ID | [optional] 

### Return type

[**V2AdminConfigGroupGroupGet200Response**](V2AdminConfigGroupGroupGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminConfigKeyDelete**
> V2AdminConfigKeyDelete200Response v2AdminConfigKeyDelete(key, companyId, unitId)

Delete a configuration value

Deletes a specific configuration value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final String key = key_example; // String | Configuration key
final int companyId = 56; // int | Company ID
final int unitId = 56; // int | Unit ID

try {
    final response = api.v2AdminConfigKeyDelete(key, companyId, unitId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminConfigKeyDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Configuration key | 
 **companyId** | **int**| Company ID | [optional] 
 **unitId** | **int**| Unit ID | [optional] 

### Return type

[**V2AdminConfigKeyDelete200Response**](V2AdminConfigKeyDelete200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminConfigKeyGet**
> V2AdminConfigKeyGet200Response v2AdminConfigKeyGet(key, companyId, unitId)

Get a specific configuration value

Returns a specific configuration value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final String key = key_example; // String | Configuration key
final int companyId = 56; // int | Company ID
final int unitId = 56; // int | Unit ID

try {
    final response = api.v2AdminConfigKeyGet(key, companyId, unitId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminConfigKeyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Configuration key | 
 **companyId** | **int**| Company ID | [optional] 
 **unitId** | **int**| Unit ID | [optional] 

### Return type

[**V2AdminConfigKeyGet200Response**](V2AdminConfigKeyGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminConfigKeyPut**
> V2AdminConfigKeyPut200Response v2AdminConfigKeyPut(key, v2AdminConfigKeyPutRequest)

Update a configuration value

Updates a specific configuration value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final String key = key_example; // String | Configuration key
final V2AdminConfigKeyPutRequest v2AdminConfigKeyPutRequest = ; // V2AdminConfigKeyPutRequest | 

try {
    final response = api.v2AdminConfigKeyPut(key, v2AdminConfigKeyPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminConfigKeyPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Configuration key | 
 **v2AdminConfigKeyPutRequest** | [**V2AdminConfigKeyPutRequest**](V2AdminConfigKeyPutRequest.md)|  | 

### Return type

[**V2AdminConfigKeyPut200Response**](V2AdminConfigKeyPut200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminSetupWizardCompanyProfilePost**
> V2AdminSetupWizardCompanyProfilePost200Response v2AdminSetupWizardCompanyProfilePost(v2AdminSetupWizardCompanyProfilePostRequest)

Setup company profile

Sets up the company profile

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final V2AdminSetupWizardCompanyProfilePostRequest v2AdminSetupWizardCompanyProfilePostRequest = ; // V2AdminSetupWizardCompanyProfilePostRequest | 

try {
    final response = api.v2AdminSetupWizardCompanyProfilePost(v2AdminSetupWizardCompanyProfilePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminSetupWizardCompanyProfilePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2AdminSetupWizardCompanyProfilePostRequest** | [**V2AdminSetupWizardCompanyProfilePostRequest**](V2AdminSetupWizardCompanyProfilePostRequest.md)|  | 

### Return type

[**V2AdminSetupWizardCompanyProfilePost200Response**](V2AdminSetupWizardCompanyProfilePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminSetupWizardCompletePost**
> V2AdminSetupWizardCompletePost200Response v2AdminSetupWizardCompletePost(companyId, unitId)

Complete setup wizard

Completes the setup wizard

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final int companyId = 56; // int | Company ID
final int unitId = 56; // int | Unit ID

try {
    final response = api.v2AdminSetupWizardCompletePost(companyId, unitId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminSetupWizardCompletePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Company ID | [optional] 
 **unitId** | **int**| Unit ID | [optional] 

### Return type

[**V2AdminSetupWizardCompletePost200Response**](V2AdminSetupWizardCompletePost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminSetupWizardStatusGet**
> V2AdminSetupWizardStatusGet200Response v2AdminSetupWizardStatusGet()

Get setup wizard status

Returns the current status of the setup wizard

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();

try {
    final response = api.v2AdminSetupWizardStatusGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminSetupWizardStatusGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V2AdminSetupWizardStatusGet200Response**](V2AdminSetupWizardStatusGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminSetupWizardStatusPut**
> V2AdminSetupWizardStatusPut200Response v2AdminSetupWizardStatusPut(v2AdminSetupWizardStatusPutRequest)

Update setup wizard status

Updates the status of the setup wizard

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final V2AdminSetupWizardStatusPutRequest v2AdminSetupWizardStatusPutRequest = ; // V2AdminSetupWizardStatusPutRequest | 

try {
    final response = api.v2AdminSetupWizardStatusPut(v2AdminSetupWizardStatusPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminSetupWizardStatusPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2AdminSetupWizardStatusPutRequest** | [**V2AdminSetupWizardStatusPutRequest**](V2AdminSetupWizardStatusPutRequest.md)|  | 

### Return type

[**V2AdminSetupWizardStatusPut200Response**](V2AdminSetupWizardStatusPut200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminSetupWizardSystemSettingsPost**
> V2AdminSetupWizardSystemSettingsPost200Response v2AdminSetupWizardSystemSettingsPost(v2AdminSetupWizardSystemSettingsPostRequest)

Setup system settings

Sets up the system settings

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSystemSettingsApi();
final V2AdminSetupWizardSystemSettingsPostRequest v2AdminSetupWizardSystemSettingsPostRequest = ; // V2AdminSetupWizardSystemSettingsPostRequest | 

try {
    final response = api.v2AdminSetupWizardSystemSettingsPost(v2AdminSetupWizardSystemSettingsPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SystemSettingsApi->v2AdminSetupWizardSystemSettingsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2AdminSetupWizardSystemSettingsPostRequest** | [**V2AdminSetupWizardSystemSettingsPostRequest**](V2AdminSetupWizardSystemSettingsPostRequest.md)|  | 

### Return type

[**V2AdminSetupWizardSystemSettingsPost200Response**](V2AdminSetupWizardSystemSettingsPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

