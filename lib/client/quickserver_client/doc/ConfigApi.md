# quickserver_client.api.ConfigApi

## Load the API package
```dart
import 'package:quickserver_client/api.dart';
```

All URIs are relative to */api/v2/quickserve*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllConfig**](ConfigApi.md#getallconfig) | **GET** /config | Get all configuration values
[**getAllSettings**](ConfigApi.md#getallsettings) | **GET** /config/settings | Get all settings
[**getConfigByKey**](ConfigApi.md#getconfigbykey) | **GET** /config/{key} | Get a specific configuration value
[**updateConfigByKey**](ConfigApi.md#updateconfigbykey) | **PUT** /config/{key} | Update a configuration value


# **getAllConfig**
> GetAllConfig200Response getAllConfig()

Get all configuration values

Returns all configuration values

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getConfigApi();

try {
    final response = api.getAllConfig();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigApi->getAllConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAllConfig200Response**](GetAllConfig200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSettings**
> GetAllSettings200Response getAllSettings()

Get all settings

Returns all settings from the database

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getConfigApi();

try {
    final response = api.getAllSettings();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigApi->getAllSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAllSettings200Response**](GetAllSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfigByKey**
> GetConfigByKey200Response getConfigByKey(key)

Get a specific configuration value

Returns a specific configuration value by key

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getConfigApi();
final String key = key_example; // String | Configuration key

try {
    final response = api.getConfigByKey(key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigApi->getConfigByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Configuration key | 

### Return type

[**GetConfigByKey200Response**](GetConfigByKey200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConfigByKey**
> UpdateConfigByKey200Response updateConfigByKey(key, updateConfigByKeyRequest)

Update a configuration value

Updates a specific configuration value by key

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getConfigApi();
final String key = key_example; // String | Configuration key
final UpdateConfigByKeyRequest updateConfigByKeyRequest = ; // UpdateConfigByKeyRequest | 

try {
    final response = api.updateConfigByKey(key, updateConfigByKeyRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigApi->updateConfigByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Configuration key | 
 **updateConfigByKeyRequest** | [**UpdateConfigByKeyRequest**](UpdateConfigByKeyRequest.md)|  | 

### Return type

[**UpdateConfigByKey200Response**](UpdateConfigByKey200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

