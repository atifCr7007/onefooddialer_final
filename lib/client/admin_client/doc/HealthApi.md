# openapi.api.HealthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/admin-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2AdminHealthGet**](HealthApi.md#v2adminhealthget) | **GET** /v2/admin/health | Health check endpoint


# **v2AdminHealthGet**
> V2AdminHealthGet200Response v2AdminHealthGet()

Health check endpoint

Returns the health status of the service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHealthApi();

try {
    final response = api.v2AdminHealthGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->v2AdminHealthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V2AdminHealthGet200Response**](V2AdminHealthGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

