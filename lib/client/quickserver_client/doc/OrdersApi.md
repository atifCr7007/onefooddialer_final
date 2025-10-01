# quickserver_client.api.OrdersApi

## Load the API package
```dart
import 'package:quickserver_client/api.dart';
```

All URIs are relative to */api/v2/quickserve*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrder**](OrdersApi.md#createorder) | **POST** /orders | Create a new order
[**deleteOrder**](OrdersApi.md#deleteorder) | **DELETE** /orders/{id} | Delete order
[**getOrderById**](OrdersApi.md#getorderbyid) | **GET** /orders/{id} | Get order by ID
[**getOrders**](OrdersApi.md#getorders) | **GET** /orders | Get all orders
[**updateOrder**](OrdersApi.md#updateorder) | **PUT** /orders/{id} | Update order


# **createOrder**
> CreateOrder200Response createOrder(orderCreate)

Create a new order

Creates a new order with the provided data

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getOrdersApi();
final OrderCreate orderCreate = ; // OrderCreate | 

try {
    final response = api.createOrder(orderCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->createOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCreate** | [**OrderCreate**](OrderCreate.md)|  | 

### Return type

[**CreateOrder200Response**](CreateOrder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrder**
> DeleteOrder200Response deleteOrder(id)

Delete order

Deletes an existing order

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getOrdersApi();
final int id = 56; // int | Order ID

try {
    final response = api.deleteOrder(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->deleteOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Order ID | 

### Return type

[**DeleteOrder200Response**](DeleteOrder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderById**
> GetOrderById200Response getOrderById(id)

Get order by ID

Returns a single order by ID

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getOrdersApi();
final int id = 56; // int | Order ID

try {
    final response = api.getOrderById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->getOrderById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Order ID | 

### Return type

[**GetOrderById200Response**](GetOrderById200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrders**
> GetOrders200Response getOrders(orderStatus, deliveryStatus, orderMenu, fromDate, toDate, perPage, page)

Get all orders

Returns a list of all orders with optional filtering

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getOrdersApi();
final String orderStatus = orderStatus_example; // String | Filter by order status
final String deliveryStatus = deliveryStatus_example; // String | Filter by delivery status
final String orderMenu = orderMenu_example; // String | Filter by order menu
final Date fromDate = 2013-10-20; // Date | Filter by order date (from)
final Date toDate = 2013-10-20; // Date | Filter by order date (to)
final int perPage = 56; // int | Number of items per page
final int page = 56; // int | Page number

try {
    final response = api.getOrders(orderStatus, deliveryStatus, orderMenu, fromDate, toDate, perPage, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->getOrders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderStatus** | **String**| Filter by order status | [optional] 
 **deliveryStatus** | **String**| Filter by delivery status | [optional] 
 **orderMenu** | **String**| Filter by order menu | [optional] 
 **fromDate** | **Date**| Filter by order date (from) | [optional] 
 **toDate** | **Date**| Filter by order date (to) | [optional] 
 **perPage** | **int**| Number of items per page | [optional] [default to 15]
 **page** | **int**| Page number | [optional] [default to 1]

### Return type

[**GetOrders200Response**](GetOrders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrder**
> UpdateOrder200Response updateOrder(id, orderUpdate)

Update order

Updates an existing order

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getOrdersApi();
final int id = 56; // int | Order ID
final OrderUpdate orderUpdate = ; // OrderUpdate | 

try {
    final response = api.updateOrder(id, orderUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrdersApi->updateOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Order ID | 
 **orderUpdate** | [**OrderUpdate**](OrderUpdate.md)|  | 

### Return type

[**UpdateOrder200Response**](UpdateOrder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

