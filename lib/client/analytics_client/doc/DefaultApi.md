# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/analytics-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customerLoyalGet**](DefaultApi.md#customerloyalget) | **GET** /customer/loyal | Get loyal customers
[**customerPreferencesCustomerIdGet**](DefaultApi.md#customerpreferencescustomeridget) | **GET** /customer/preferences/{customerId} | Get customer preferences
[**customerSpendingCustomerIdGet**](DefaultApi.md#customerspendingcustomeridget) | **GET** /customer/spending/{customerId} | Get customer spending
[**foodExtrasGet**](DefaultApi.md#foodextrasget) | **GET** /food/extras | Get common extras
[**foodPerformanceYearMonthTypeGet**](DefaultApi.md#foodperformanceyearmonthtypeget) | **GET** /food/performance/{year}/{month}/{type} | Get meal performance
[**foodPopularYearMonthGet**](DefaultApi.md#foodpopularyearmonthget) | **GET** /food/popular/{year}/{month} | Get popular meals
[**salesAvgMealYearMonthGet**](DefaultApi.md#salesavgmealyearmonthget) | **GET** /sales/avg-meal/{year}/{month} | Get average meal per customer
[**salesComparisonYearTypeGet**](DefaultApi.md#salescomparisonyeartypeget) | **GET** /sales/comparison/{year}/{type} | Get sales comparison for a specific year
[**salesPaymentMethodsGet**](DefaultApi.md#salespaymentmethodsget) | **GET** /sales/payment-methods | Get payment methods
[**salesRevenueYearMonthGet**](DefaultApi.md#salesrevenueyearmonthget) | **GET** /sales/revenue/{year}/{month} | Get revenue for a specific year and month


# **customerLoyalGet**
> CustomerLoyalGet200Response customerLoyalGet(limit)

Get loyal customers

Returns loyal customers

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int limit = 10; // int | 

try {
    final response = api.customerLoyalGet(limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->customerLoyalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 

### Return type

[**CustomerLoyalGet200Response**](CustomerLoyalGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerPreferencesCustomerIdGet**
> CustomerPreferencesCustomerIdGet200Response customerPreferencesCustomerIdGet(customerId, limit)

Get customer preferences

Returns customer preferences

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = CUST001; // String | 
final int limit = 10; // int | 

try {
    final response = api.customerPreferencesCustomerIdGet(customerId, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->customerPreferencesCustomerIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 
 **limit** | **int**|  | [optional] 

### Return type

[**CustomerPreferencesCustomerIdGet200Response**](CustomerPreferencesCustomerIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customerSpendingCustomerIdGet**
> CustomerSpendingCustomerIdGet200Response customerSpendingCustomerIdGet(customerId)

Get customer spending

Returns customer spending

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = CUST001; // String | 

try {
    final response = api.customerSpendingCustomerIdGet(customerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->customerSpendingCustomerIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 

### Return type

[**CustomerSpendingCustomerIdGet200Response**](CustomerSpendingCustomerIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **foodExtrasGet**
> FoodExtrasGet200Response foodExtrasGet()

Get common extras

Returns common extras

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.foodExtrasGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->foodExtrasGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FoodExtrasGet200Response**](FoodExtrasGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **foodPerformanceYearMonthTypeGet**
> FoodPopularYearMonthGet200Response foodPerformanceYearMonthTypeGet(year, type, month)

Get meal performance

Returns meal performance

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int year = 2023; // int | 
final String type = best; // String | 
final int month = 1; // int | 

try {
    final response = api.foodPerformanceYearMonthTypeGet(year, type, month);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->foodPerformanceYearMonthTypeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**|  | 
 **type** | **String**|  | 
 **month** | **int**|  | [optional] 

### Return type

[**FoodPopularYearMonthGet200Response**](FoodPopularYearMonthGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **foodPopularYearMonthGet**
> FoodPopularYearMonthGet200Response foodPopularYearMonthGet(year, month)

Get popular meals

Returns popular meals

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int year = 2023; // int | 
final int month = 1; // int | 

try {
    final response = api.foodPopularYearMonthGet(year, month);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->foodPopularYearMonthGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**|  | 
 **month** | **int**|  | [optional] 

### Return type

[**FoodPopularYearMonthGet200Response**](FoodPopularYearMonthGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **salesAvgMealYearMonthGet**
> SalesAvgMealYearMonthGet200Response salesAvgMealYearMonthGet(year, month)

Get average meal per customer

Returns average meal per customer

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int year = 2023; // int | 
final int month = 1; // int | 

try {
    final response = api.salesAvgMealYearMonthGet(year, month);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->salesAvgMealYearMonthGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**|  | 
 **month** | **int**|  | [optional] 

### Return type

[**SalesAvgMealYearMonthGet200Response**](SalesAvgMealYearMonthGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **salesComparisonYearTypeGet**
> SalesComparisonYearTypeGet200Response salesComparisonYearTypeGet(year, type)

Get sales comparison for a specific year

Returns sales comparison for a specific year

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int year = 2023; // int | 
final String type = monthly; // String | 

try {
    final response = api.salesComparisonYearTypeGet(year, type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->salesComparisonYearTypeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**|  | 
 **type** | **String**|  | 

### Return type

[**SalesComparisonYearTypeGet200Response**](SalesComparisonYearTypeGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **salesPaymentMethodsGet**
> SalesPaymentMethodsGet200Response salesPaymentMethodsGet()

Get payment methods

Returns payment methods

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.salesPaymentMethodsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->salesPaymentMethodsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SalesPaymentMethodsGet200Response**](SalesPaymentMethodsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **salesRevenueYearMonthGet**
> SalesRevenueYearMonthGet200Response salesRevenueYearMonthGet(year, month)

Get revenue for a specific year and month

Returns revenue for a specific year and month

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int year = 2023; // int | 
final int month = 1; // int | 

try {
    final response = api.salesRevenueYearMonthGet(year, month);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->salesRevenueYearMonthGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**|  | 
 **month** | **int**|  | [optional] 

### Return type

[**SalesRevenueYearMonthGet200Response**](SalesRevenueYearMonthGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

