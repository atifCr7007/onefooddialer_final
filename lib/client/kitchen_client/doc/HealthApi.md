# openapi.api.HealthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthCheck**](HealthApi.md#healthcheck) | **GET** /health | Check service health


# **healthCheck**
> HealthCheck200Response healthCheck()

Check service health

Returns the health status of the service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHealthApi();

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

