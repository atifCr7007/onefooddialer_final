# openapi.api.FoodAnalyticsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/analytics-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFoodDashboard**](FoodAnalyticsApi.md#getfooddashboard) | **GET** /food | Get food analytics dashboard data


# **getFoodDashboard**
> GetFoodDashboard200Response getFoodDashboard()

Get food analytics dashboard data

Returns data for the food analytics dashboard

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getFoodAnalyticsApi();

try {
    final response = api.getFoodDashboard();
    print(response);
} catch on DioException (e) {
    print('Exception when calling FoodAnalyticsApi->getFoodDashboard: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetFoodDashboard200Response**](GetFoodDashboard200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

