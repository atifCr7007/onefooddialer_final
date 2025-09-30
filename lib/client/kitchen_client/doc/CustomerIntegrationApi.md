# openapi.api.CustomerIntegrationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCustomerPreparationSummary**](CustomerIntegrationApi.md#getcustomerpreparationsummary) | **GET** /integration/customer/{customerId}/preparation-summary | Get preparation summary for a customer
[**getMultipleOrdersPreparationStatus**](CustomerIntegrationApi.md#getmultipleorderspreparationstatus) | **POST** /integration/customer/orders/preparation-status | Get preparation status for multiple orders
[**getOrderPreparationStatusForCustomer**](CustomerIntegrationApi.md#getorderpreparationstatusforcustomer) | **GET** /integration/customer/orders/{orderId}/preparation-status | Get preparation status for an order (Customer)


# **getCustomerPreparationSummary**
> GetCustomerPreparationSummary200Response getCustomerPreparationSummary(customerId, date, menu)

Get preparation summary for a customer

Returns preparation summary for a customer

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomerIntegrationApi();
final String customerId = customerId_example; // String | Customer ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getCustomerPreparationSummary(customerId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomerIntegrationApi->getCustomerPreparationSummary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| Customer ID | 
 **date** | **Date**| Date (YYYY-MM-DD) | [optional] 
 **menu** | **String**| Menu (e.g., lunch, dinner) | [optional] 

### Return type

[**GetCustomerPreparationSummary200Response**](GetCustomerPreparationSummary200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMultipleOrdersPreparationStatus**
> GetMultipleOrdersPreparationStatus200Response getMultipleOrdersPreparationStatus(getMultipleOrdersPreparationStatusRequest)

Get preparation status for multiple orders

Returns preparation status for multiple orders

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomerIntegrationApi();
final GetMultipleOrdersPreparationStatusRequest getMultipleOrdersPreparationStatusRequest = ; // GetMultipleOrdersPreparationStatusRequest | 

try {
    final response = api.getMultipleOrdersPreparationStatus(getMultipleOrdersPreparationStatusRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomerIntegrationApi->getMultipleOrdersPreparationStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **getMultipleOrdersPreparationStatusRequest** | [**GetMultipleOrdersPreparationStatusRequest**](GetMultipleOrdersPreparationStatusRequest.md)|  | 

### Return type

[**GetMultipleOrdersPreparationStatus200Response**](GetMultipleOrdersPreparationStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderPreparationStatusForCustomer**
> GetOrderPreparationStatusForDelivery200Response getOrderPreparationStatusForCustomer(orderId, date, menu)

Get preparation status for an order (Customer)

Returns preparation status for an order for the Customer service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomerIntegrationApi();
final String orderId = orderId_example; // String | Order ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getOrderPreparationStatusForCustomer(orderId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomerIntegrationApi->getOrderPreparationStatusForCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | 
 **date** | **Date**| Date (YYYY-MM-DD) | [optional] 
 **menu** | **String**| Menu (e.g., lunch, dinner) | [optional] 

### Return type

[**GetOrderPreparationStatusForDelivery200Response**](GetOrderPreparationStatusForDelivery200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

