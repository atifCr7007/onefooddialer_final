# openapi.api.QuickServeIntegrationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOrderPreparationStatus**](QuickServeIntegrationApi.md#getorderpreparationstatus) | **GET** /integration/orders/{orderId}/preparation-status | Get preparation status for an order
[**getPreparationStatus**](QuickServeIntegrationApi.md#getpreparationstatus) | **GET** /integration/preparation-status | Get preparation status for products
[**getPreparationSummary**](QuickServeIntegrationApi.md#getpreparationsummary) | **GET** /integration/preparation-summary | Get preparation summary


# **getOrderPreparationStatus**
> GetOrderPreparationStatus200Response getOrderPreparationStatus(orderId, date, menu)

Get preparation status for an order

Returns preparation status for an order

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuickServeIntegrationApi();
final String orderId = orderId_example; // String | Order ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getOrderPreparationStatus(orderId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuickServeIntegrationApi->getOrderPreparationStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | 
 **date** | **Date**| Date (YYYY-MM-DD) | [optional] 
 **menu** | **String**| Menu (e.g., lunch, dinner) | [optional] 

### Return type

[**GetOrderPreparationStatus200Response**](GetOrderPreparationStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPreparationStatus**
> GetPreparationStatus200Response getPreparationStatus(productIds, kitchenId, date, menu)

Get preparation status for products

Returns preparation status for products

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuickServeIntegrationApi();
final BuiltList<int> productIds = ; // BuiltList<int> | Product IDs
final int kitchenId = 56; // int | Kitchen ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getPreparationStatus(productIds, kitchenId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuickServeIntegrationApi->getPreparationStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productIds** | [**BuiltList&lt;int&gt;**](int.md)| Product IDs | 
 **kitchenId** | **int**| Kitchen ID | [optional] 
 **date** | **Date**| Date (YYYY-MM-DD) | [optional] 
 **menu** | **String**| Menu (e.g., lunch, dinner) | [optional] 

### Return type

[**GetPreparationStatus200Response**](GetPreparationStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPreparationSummary**
> GetPreparationSummary200Response getPreparationSummary(kitchenId, date, menu)

Get preparation summary

Returns preparation summary for a date and menu

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getQuickServeIntegrationApi();
final int kitchenId = 56; // int | Kitchen ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getPreparationSummary(kitchenId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling QuickServeIntegrationApi->getPreparationSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kitchenId** | **int**| Kitchen ID | [optional] 
 **date** | **Date**| Date (YYYY-MM-DD) | [optional] 
 **menu** | **String**| Menu (e.g., lunch, dinner) | [optional] 

### Return type

[**GetPreparationSummary200Response**](GetPreparationSummary200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

