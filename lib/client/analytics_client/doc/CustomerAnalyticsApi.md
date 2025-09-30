# openapi.api.CustomerAnalyticsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/analytics-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCustomerDashboard**](CustomerAnalyticsApi.md#getcustomerdashboard) | **GET** /customer | Get customer analytics dashboard data


# **getCustomerDashboard**
> GetCustomerDashboard200Response getCustomerDashboard()

Get customer analytics dashboard data

Returns data for the customer analytics dashboard

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomerAnalyticsApi();

try {
    final response = api.getCustomerDashboard();
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomerAnalyticsApi->getCustomerDashboard: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetCustomerDashboard200Response**](GetCustomerDashboard200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

