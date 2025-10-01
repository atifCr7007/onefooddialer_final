# quickserver_client.api.HealthApi

## Load the API package
```dart
import 'package:quickserver_client/api.dart';
```

All URIs are relative to */api/v2/quickserve*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthCheck**](HealthApi.md#healthcheck) | **GET** /health | Health check endpoint


# **healthCheck**
> HealthCheck200Response healthCheck()

Health check endpoint

Returns the health status of the QuickServe service

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getHealthApi();

try {
    final response = api.healthCheck();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthCheck: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheck200Response**](HealthCheck200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

