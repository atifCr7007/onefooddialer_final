# openapi.api.OrderTrackingApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/order-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersOrderIdStatusPut**](OrderTrackingApi.md#ordersorderidstatusput) | **PUT** /orders/{orderId}/status | Update order status
[**ordersOrderIdTrackingGet**](OrderTrackingApi.md#ordersorderidtrackingget) | **GET** /orders/{orderId}/tracking | Get order tracking information


# **ordersOrderIdStatusPut**
> OrderStatusResponse ordersOrderIdStatusPut(orderId, body)

Update order status

Update the status of an order in the lifecycle

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderTrackingApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order
final UpdateOrderStatusRequest body = ; // UpdateOrderStatusRequest | 

try {
    final response = api.ordersOrderIdStatusPut(orderId, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderTrackingApi->ordersOrderIdStatusPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 
 **body** | **UpdateOrderStatusRequest**|  | 

### Return type

[**OrderStatusResponse**](OrderStatusResponse.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOrderIdTrackingGet**
> OrderTracking ordersOrderIdTrackingGet(orderId)

Get order tracking information

Get real-time tracking information for an order

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderTrackingApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order

try {
    final response = api.ordersOrderIdTrackingGet(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderTrackingApi->ordersOrderIdTrackingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 

### Return type

[**OrderTracking**](OrderTracking.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

