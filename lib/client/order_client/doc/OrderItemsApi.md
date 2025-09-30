# openapi.api.OrderItemsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/order-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersOrderIdItemsGet**](OrderItemsApi.md#ordersorderiditemsget) | **GET** /orders/{orderId}/items | Get order items
[**ordersOrderIdItemsItemIdDelete**](OrderItemsApi.md#ordersorderiditemsitemiddelete) | **DELETE** /orders/{orderId}/items/{itemId} | Remove item from order
[**ordersOrderIdItemsItemIdPut**](OrderItemsApi.md#ordersorderiditemsitemidput) | **PUT** /orders/{orderId}/items/{itemId} | Update order item
[**ordersOrderIdItemsPost**](OrderItemsApi.md#ordersorderiditemspost) | **POST** /orders/{orderId}/items | Add item to order


# **ordersOrderIdItemsGet**
> OrdersOrderIdItemsGet200Response ordersOrderIdItemsGet(orderId)

Get order items

Retrieve all items in an order

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderItemsApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order

try {
    final response = api.ordersOrderIdItemsGet(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderItemsApi->ordersOrderIdItemsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 

### Return type

[**OrdersOrderIdItemsGet200Response**](OrdersOrderIdItemsGet200Response.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOrderIdItemsItemIdDelete**
> ordersOrderIdItemsItemIdDelete(orderId, itemId)

Remove item from order

Remove an item from an order (if status allows)

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderItemsApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order
final String itemId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order item

try {
    api.ordersOrderIdItemsItemIdDelete(orderId, itemId);
} catch on DioException (e) {
    print('Exception when calling OrderItemsApi->ordersOrderIdItemsItemIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 
 **itemId** | **String**| Unique identifier for the order item | 

### Return type

void (empty response body)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOrderIdItemsItemIdPut**
> OrderItem ordersOrderIdItemsItemIdPut(orderId, itemId, body)

Update order item

Update quantity or customizations of an order item

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderItemsApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order
final String itemId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order item
final UpdateOrderItemRequest body = ; // UpdateOrderItemRequest | 

try {
    final response = api.ordersOrderIdItemsItemIdPut(orderId, itemId, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderItemsApi->ordersOrderIdItemsItemIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 
 **itemId** | **String**| Unique identifier for the order item | 
 **body** | **UpdateOrderItemRequest**|  | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOrderIdItemsPost**
> OrderItem ordersOrderIdItemsPost(orderId, body)

Add item to order

Add a new item to an existing order (if status allows)

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderItemsApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order
final AddOrderItemRequest body = ; // AddOrderItemRequest | 

try {
    final response = api.ordersOrderIdItemsPost(orderId, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderItemsApi->ordersOrderIdItemsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 
 **body** | **AddOrderItemRequest**|  | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

