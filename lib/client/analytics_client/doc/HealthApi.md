# openapi.api.HealthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/analytics-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHealthStatus**](HealthApi.md#gethealthstatus) | **GET** /health | Health check endpoint


# **getHealthStatus**
> HealthCheck getHealthStatus()

Health check endpoint

Returns the health status of the service. This endpoint is used by Kong API Gateway for health monitoring and by operations teams to verify service availability.  The endpoint checks: - Database connectivity - Cache availability - RabbitMQ connection - Overall service health  No authentication is required for this endpoint to allow for monitoring by external systems. 

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getHealthApi();

try {
    final response = api.getHealthStatus();
    print(response);
} catch on DioException (e) {
    print('Exception when calling HealthApi->getHealthStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthCheck**](HealthCheck.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

