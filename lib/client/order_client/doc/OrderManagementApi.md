# openapi.api.OrderManagementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/order-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ordersGet**](OrderManagementApi.md#ordersget) | **GET** /orders | List orders
[**ordersOrderIdDelete**](OrderManagementApi.md#ordersorderiddelete) | **DELETE** /orders/{orderId} | Cancel order
[**ordersOrderIdGet**](OrderManagementApi.md#ordersorderidget) | **GET** /orders/{orderId} | Get order by ID
[**ordersOrderIdPut**](OrderManagementApi.md#ordersorderidput) | **PUT** /orders/{orderId} | Update order
[**ordersPost**](OrderManagementApi.md#orderspost) | **POST** /orders | Create new order


# **ordersGet**
> OrdersResponse ordersGet(page, limit, search, status, customerId, restaurantId, paymentStatus, deliveryType, dateFrom, dateTo, priority)

List orders

Retrieve paginated list of orders with filtering and search

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderManagementApi();
final int page = 56; // int | Page number for pagination
final int limit = 56; // int | Number of items per page
final String search = search_example; // String | Search query string
final String status = status_example; // String | Filter by order status
final String customerId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by customer ID
final String restaurantId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Filter by restaurant ID
final String paymentStatus = paymentStatus_example; // String | Filter by payment status
final String deliveryType = deliveryType_example; // String | Filter by delivery type
final Date dateFrom = 2013-10-20; // Date | Filter orders from this date
final Date dateTo = 2013-10-20; // Date | Filter orders to this date
final String priority = priority_example; // String | Filter by order priority

try {
    final response = api.ordersGet(page, limit, search, status, customerId, restaurantId, paymentStatus, deliveryType, dateFrom, dateTo, priority);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderManagementApi->ordersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number for pagination | [optional] [default to 1]
 **limit** | **int**| Number of items per page | [optional] [default to 20]
 **search** | **String**| Search query string | [optional] 
 **status** | **String**| Filter by order status | [optional] 
 **customerId** | **String**| Filter by customer ID | [optional] 
 **restaurantId** | **String**| Filter by restaurant ID | [optional] 
 **paymentStatus** | **String**| Filter by payment status | [optional] 
 **deliveryType** | **String**| Filter by delivery type | [optional] 
 **dateFrom** | **Date**| Filter orders from this date | [optional] 
 **dateTo** | **Date**| Filter orders to this date | [optional] 
 **priority** | **String**| Filter by order priority | [optional] 

### Return type

[**OrdersResponse**](OrdersResponse.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOrderIdDelete**
> ordersOrderIdDelete(orderId, ordersOrderIdDeleteRequest)

Cancel order

Cancel an order (soft delete with reason)

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderManagementApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order
final OrdersOrderIdDeleteRequest ordersOrderIdDeleteRequest = ; // OrdersOrderIdDeleteRequest | 

try {
    api.ordersOrderIdDelete(orderId, ordersOrderIdDeleteRequest);
} catch on DioException (e) {
    print('Exception when calling OrderManagementApi->ordersOrderIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 
 **ordersOrderIdDeleteRequest** | [**OrdersOrderIdDeleteRequest**](OrdersOrderIdDeleteRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOrderIdGet**
> Order ordersOrderIdGet(orderId)

Get order by ID

Retrieve detailed information about a specific order

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderManagementApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order

try {
    final response = api.ordersOrderIdGet(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderManagementApi->ordersOrderIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 

### Return type

[**Order**](Order.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersOrderIdPut**
> Order ordersOrderIdPut(orderId, body)

Update order

Update order details (limited fields based on status)

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderManagementApi();
final String orderId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the order
final UpdateOrderRequest body = ; // UpdateOrderRequest | 

try {
    final response = api.ordersOrderIdPut(orderId, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderManagementApi->ordersOrderIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **String**| Unique identifier for the order | 
 **body** | **UpdateOrderRequest**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ordersPost**
> Order ordersPost(body)

Create new order

Create a new order with items and delivery details

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getOrderManagementApi();
final CreateOrderRequest body = ; // CreateOrderRequest | 

try {
    final response = api.ordersPost(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling OrderManagementApi->ordersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **CreateOrderRequest**|  | 

### Return type

[**Order**](Order.md)

### Authorization

[restaurantAuth](../README.md#restaurantAuth), [customerAuth](../README.md#customerAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

