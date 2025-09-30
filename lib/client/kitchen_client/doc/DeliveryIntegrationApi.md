# openapi.api.DeliveryIntegrationApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**estimateDeliveryTime**](DeliveryIntegrationApi.md#estimatedeliverytime) | **GET** /integration/delivery/orders/{orderId}/estimate-delivery-time | Estimate delivery time for an order
[**getOrderPreparationStatusForDelivery**](DeliveryIntegrationApi.md#getorderpreparationstatusfordelivery) | **GET** /integration/delivery/orders/{orderId}/preparation-status | Get preparation status for an order (Delivery)
[**notifyDeliveryStatusUpdate**](DeliveryIntegrationApi.md#notifydeliverystatusupdate) | **POST** /integration/delivery/status-update | Notify delivery status update


# **estimateDeliveryTime**
> EstimateDeliveryTime200Response estimateDeliveryTime(orderId, date, menu)

Estimate delivery time for an order

Returns estimated delivery time for an order

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDeliveryIntegrationApi();
final String orderId = orderId_example; // String | Order ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.estimateDeliveryTime(orderId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryIntegrationApi->estimateDeliveryTime: $e\n');
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

# **getOrderPreparationStatusForDelivery**
> GetOrderPreparationStatusForDelivery200Response getOrderPreparationStatusForDelivery(orderId, date, menu)

Get preparation status for an order (Delivery)

Returns preparation status for an order for the Delivery service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDeliveryIntegrationApi();
final String orderId = orderId_example; // String | Order ID
final Date date = 2013-10-20; // Date | Date (YYYY-MM-DD)
final String menu = menu_example; // String | Menu (e.g., lunch, dinner)

try {
    final response = api.getOrderPreparationStatusForDelivery(orderId, date, menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryIntegrationApi->getOrderPreparationStatusForDelivery: $e\n');
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

# **notifyDeliveryStatusUpdate**
> NotifyDeliveryStatusUpdate200Response notifyDeliveryStatusUpdate(notifyDeliveryStatusUpdateRequest)

Notify delivery status update

Notifies the kitchen about a delivery status update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDeliveryIntegrationApi();
final NotifyDeliveryStatusUpdateRequest notifyDeliveryStatusUpdateRequest = ; // NotifyDeliveryStatusUpdateRequest | 

try {
    final response = api.notifyDeliveryStatusUpdate(notifyDeliveryStatusUpdateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryIntegrationApi->notifyDeliveryStatusUpdate: $e\n');
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

