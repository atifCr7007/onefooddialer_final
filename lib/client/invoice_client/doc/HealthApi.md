# openapi.api.HealthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/invoice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](HealthApi.md#healthget) | **GET** /health | Health check


# **healthGet**
> HealthGet200Response healthGet()

Health check

Check if the invoice service is healthy

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHealthApi();

try {
    final response = api.healthGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthGet200Response**](HealthGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

