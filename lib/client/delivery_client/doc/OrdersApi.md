# openapi.api.OrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.fooddialer.com/api/v2/delivery*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDeliveryOrders**](OrdersApi.md#getdeliveryorders) | **GET** /orders | Get orders for delivery
[**searchOrders**](OrdersApi.md#searchorders) | **GET** /orders/search | Search orders
[**updateDeliveryStatus**](OrdersApi.md#updatedeliverystatus) | **POST** /orders/{orderId}/delivery-status | Update delivery status


# **getDeliveryOrders**
> GetDeliveryOrders200Response getDeliveryOrders(locationId, date)

Get orders for delivery

Returns a list of orders assigned for delivery

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final int locationId = 56; // int | Filter orders by location ID
final Date date = 2013-10-20; // Date | Filter orders by date (YYYY-MM-DD)

try {
    final response = api.getDeliveryOrders(locationId, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->getDeliveryOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **int**| Filter orders by location ID | [optional] 
 **date** | **Date**| Filter orders by date (YYYY-MM-DD) | [optional] 

### Return type

[**GetDeliveryOrders200Response**](GetDeliveryOrders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchOrders**
> GetDeliveryOrders200Response searchOrders(search, locationId)

Search orders

Search for orders by order number or other criteria

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final String search = search_example; // String | Search term
final int locationId = 56; // int | Filter orders by location ID

try {
    final response = api.searchOrders(search, locationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->searchOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| Search term | 
 **locationId** | **int**| Filter orders by location ID | [optional] 

### Return type

[**GetDeliveryOrders200Response**](GetDeliveryOrders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeliveryStatus**
> UpdateDeliveryStatus200Response updateDeliveryStatus(orderId, updateDeliveryStatusRequest)

Update delivery status

Update the delivery status of an order

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrdersApi();
final int orderId = 56; // int | ID of the order to update
final UpdateDeliveryStatusRequest updateDeliveryStatusRequest = ; // UpdateDeliveryStatusRequest | 

try {
    final response = api.updateDeliveryStatus(orderId, updateDeliveryStatusRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->updateDeliveryStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**| ID of the order to update | 
 **updateDeliveryStatusRequest** | [**UpdateDeliveryStatusRequest**](UpdateDeliveryStatusRequest.md)|  | 

### Return type

[**UpdateDeliveryStatus200Response**](UpdateDeliveryStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

