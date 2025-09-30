# openapi.api.SalesAnalyticsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/analytics-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSalesDashboard**](SalesAnalyticsApi.md#getsalesdashboard) | **GET** /sales | Get sales analytics dashboard data
[**getSalesMonths**](SalesAnalyticsApi.md#getsalesmonths) | **GET** /sales/months/{year} | Get months with order data for a specific year
[**getSalesYears**](SalesAnalyticsApi.md#getsalesyears) | **GET** /sales/years | Get years with order data


# **getSalesDashboard**
> GetSalesDashboard200Response getSalesDashboard()

Get sales analytics dashboard data

Returns data for the sales analytics dashboard

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSalesAnalyticsApi();

try {
    final response = api.getSalesDashboard();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SalesAnalyticsApi->getSalesDashboard: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetSalesDashboard200Response**](GetSalesDashboard200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSalesMonths**
> GetSalesMonths200Response getSalesMonths(year)

Get months with order data for a specific year

Returns months with order data for a specific year

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSalesAnalyticsApi();
final int year = 2023; // int | 

try {
    final response = api.getSalesMonths(year);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SalesAnalyticsApi->getSalesMonths: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**|  | 

### Return type

[**GetSalesMonths200Response**](GetSalesMonths200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSalesYears**
> GetSalesYears200Response getSalesYears()

Get years with order data

Returns years with order data

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSalesAnalyticsApi();

try {
    final response = api.getSalesYears();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SalesAnalyticsApi->getSalesYears: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetSalesYears200Response**](GetSalesYears200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

