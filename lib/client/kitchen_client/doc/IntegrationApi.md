# openapi.api.IntegrationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**estimateDeliveryTime**](IntegrationApi.md#estimatedeliverytime) | **GET** /integration/delivery/orders/{orderId}/estimate-delivery-time | Estimate delivery time for an order
[**getCustomerPreparationSummary**](IntegrationApi.md#getcustomerpreparationsummary) | **GET** /integration/customer/{customerId}/preparation-summary | Get preparation summary for a customer
[**getMultipleOrdersPreparationStatus**](IntegrationApi.md#getmultipleorderspreparationstatus) | **POST** /integration/customer/orders/preparation-status | Get preparation status for multiple orders
[**getOrderPreparationStatus**](IntegrationApi.md#getorderpreparationstatus) | **GET** /integration/orders/{orderId}/preparation-status | Get preparation status for an order
[**getOrderPreparationStatusForCustomer**](IntegrationApi.md#getorderpreparationstatusforcustomer) | **GET** /integration/customer/orders/{orderId}/preparation-status | Get preparation status for an order (Customer)
[**getOrderPreparationStatusForDelivery**](IntegrationApi.md#getorderpreparationstatusfordelivery) | **GET** /integration/delivery/orders/{orderId}/preparation-status | Get preparation status for an order (Delivery)
[**getPreparationStatus**](IntegrationApi.md#getpreparationstatus) | **GET** /integration/preparation-status | Get preparation status for products
[**getPreparationSummary**](IntegrationApi.md#getpreparationsummary) | **GET** /integration/preparation-summary | Get preparation summary
[**notifyDeliveryStatusUpdate**](IntegrationApi.md#notifydeliverystatusupdate) | **POST** /integration/delivery/status-update | Notify delivery status update


# **estimateDeliveryTime**
> EstimateDeliveryTime200Response estimateDeliveryTime(orderId, date, menu)

Estimate delivery time for an order

Returns estimated delivery time for an order

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIntegrationApi();
final String orderId = orderId_example; // String | Order ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.estimateDeliveryTime(orderId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->estimateDeliveryTime: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Order ID | 
 **date** | **Date**| Date (YYYY-MM-DD) | [optional] 
 **menu** | **String**| Menu (e.g., lunch, dinner) | [optional] 

### Return type

[**EstimateDeliveryTime200Response**](EstimateDeliveryTime200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPreparationSummary**
> GetCustomerPreparationSummary200Response getCustomerPreparationSummary(customerId, date, menu)

Get preparation summary for a customer

Returns preparation summary for a customer

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIntegrationApi();
final String customerId = customerId_example; // String | Customer ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getCustomerPreparationSummary(customerId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->getCustomerPreparationSummary: $e\n');
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

final api = Openapi().getIntegrationApi();
final GetMultipleOrdersPreparationStatusRequest getMultipleOrdersPreparationStatusRequest = ; // GetMultipleOrdersPreparationStatusRequest | 

try {
    final response = api.getMultipleOrdersPreparationStatus(getMultipleOrdersPreparationStatusRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->getMultipleOrdersPreparationStatus: $e\n');
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

# **getOrderPreparationStatus**
> GetOrderPreparationStatus200Response getOrderPreparationStatus(orderId, date, menu)

Get preparation status for an order

Returns preparation status for an order

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIntegrationApi();
final String orderId = orderId_example; // String | Order ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getOrderPreparationStatus(orderId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->getOrderPreparationStatus: $e\n');
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

# **getOrderPreparationStatusForCustomer**
> GetOrderPreparationStatusForDelivery200Response getOrderPreparationStatusForCustomer(orderId, date, menu)

Get preparation status for an order (Customer)

Returns preparation status for an order for the Customer service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIntegrationApi();
final String orderId = orderId_example; // String | Order ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getOrderPreparationStatusForCustomer(orderId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->getOrderPreparationStatusForCustomer: $e\n');
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

# **getOrderPreparationStatusForDelivery**
> GetOrderPreparationStatusForDelivery200Response getOrderPreparationStatusForDelivery(orderId, date, menu)

Get preparation status for an order (Delivery)

Returns preparation status for an order for the Delivery service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIntegrationApi();
final String orderId = orderId_example; // String | Order ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getOrderPreparationStatusForDelivery(orderId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->getOrderPreparationStatusForDelivery: $e\n');
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

# **getPreparationStatus**
> GetPreparationStatus200Response getPreparationStatus(productIds, kitchenId, date, menu)

Get preparation status for products

Returns preparation status for products

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIntegrationApi();
final BuiltList<int> productIds = ; // BuiltList<int> | Product IDs
final int kitchenId = 56; // int | Kitchen ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getPreparationStatus(productIds, kitchenId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->getPreparationStatus: $e\n');
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

final api = Openapi().getIntegrationApi();
final int kitchenId = 56; // int | Kitchen ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getPreparationSummary(kitchenId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->getPreparationSummary: $e\n');
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

# **notifyDeliveryStatusUpdate**
> NotifyDeliveryStatusUpdate200Response notifyDeliveryStatusUpdate(notifyDeliveryStatusUpdateRequest)

Notify delivery status update

Notifies the kitchen about a delivery status update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getIntegrationApi();
final NotifyDeliveryStatusUpdateRequest notifyDeliveryStatusUpdateRequest = ; // NotifyDeliveryStatusUpdateRequest | 

try {
    final response = api.notifyDeliveryStatusUpdate(notifyDeliveryStatusUpdateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling IntegrationApi->notifyDeliveryStatusUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notifyDeliveryStatusUpdateRequest** | [**NotifyDeliveryStatusUpdateRequest**](NotifyDeliveryStatusUpdateRequest.md)|  | 

### Return type

[**NotifyDeliveryStatusUpdate200Response**](NotifyDeliveryStatusUpdate200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

