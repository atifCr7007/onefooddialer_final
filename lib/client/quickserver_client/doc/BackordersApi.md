# quickserver_client.api.BackordersApi

## Load the API package
```dart
import 'package:quickserver_client/api.dart';
```

All URIs are relative to */api/v2/quickserve*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelBackorder**](BackordersApi.md#cancelbackorder) | **PUT** /backorders/{id}/cancel | Cancel a backorder
[**completeBackorder**](BackordersApi.md#completebackorder) | **PUT** /backorders/{id}/complete | Complete a backorder
[**createBackorder**](BackordersApi.md#createbackorder) | **POST** /backorders | Create a new backorder
[**createBackorderFromOrder**](BackordersApi.md#createbackorderfromorder) | **POST** /backorders/from-order | Create a backorder from an order
[**deleteBackorder**](BackordersApi.md#deletebackorder) | **DELETE** /backorders/{id} | Delete backorder
[**getBackorderById**](BackordersApi.md#getbackorderbyid) | **GET** /backorders/{id} | Get backorder by ID
[**getBackorders**](BackordersApi.md#getbackorders) | **GET** /backorders | Get all backorders
[**updateBackorder**](BackordersApi.md#updatebackorder) | **PUT** /backorders/{id} | Update backorder


# **cancelBackorder**
> CancelBackorder200Response cancelBackorder(id)

Cancel a backorder

Marks a backorder as cancelled

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getBackordersApi();
final int id = 56; // int | Backorder ID

try {
    final response = api.cancelBackorder(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BackordersApi->cancelBackorder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Backorder ID | 

### Return type

[**CancelBackorder200Response**](CancelBackorder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completeBackorder**
> CompleteBackorder200Response completeBackorder(id)

Complete a backorder

Marks a backorder as completed

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getBackordersApi();
final int id = 56; // int | Backorder ID

try {
    final response = api.completeBackorder(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BackordersApi->completeBackorder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Backorder ID | 

### Return type

[**CompleteBackorder200Response**](CompleteBackorder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBackorder**
> CreateBackorder200Response createBackorder(backorderCreate)

Create a new backorder

Creates a new backorder with the provided data

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getBackordersApi();
final BackorderCreate backorderCreate = ; // BackorderCreate | 

try {
    final response = api.createBackorder(backorderCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BackordersApi->createBackorder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backorderCreate** | [**BackorderCreate**](BackorderCreate.md)|  | 

### Return type

[**CreateBackorder200Response**](CreateBackorder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBackorderFromOrder**
> CreateBackorderFromOrder200Response createBackorderFromOrder(createBackorderFromOrderRequest)

Create a backorder from an order

Creates a new backorder from an existing order

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getBackordersApi();
final CreateBackorderFromOrderRequest createBackorderFromOrderRequest = ; // CreateBackorderFromOrderRequest | 

try {
    final response = api.createBackorderFromOrder(createBackorderFromOrderRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BackordersApi->createBackorderFromOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createBackorderFromOrderRequest** | [**CreateBackorderFromOrderRequest**](CreateBackorderFromOrderRequest.md)|  | 

### Return type

[**CreateBackorderFromOrder200Response**](CreateBackorderFromOrder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBackorder**
> DeleteBackorder200Response deleteBackorder(id)

Delete backorder

Deletes an existing backorder

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getBackordersApi();
final int id = 56; // int | Backorder ID

try {
    final response = api.deleteBackorder(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BackordersApi->deleteBackorder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Backorder ID | 

### Return type

[**DeleteBackorder200Response**](DeleteBackorder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBackorderById**
> GetBackorderById200Response getBackorderById(id)

Get backorder by ID

Returns a single backorder by ID

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getBackordersApi();
final int id = 56; // int | Backorder ID

try {
    final response = api.getBackorderById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BackordersApi->getBackorderById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Backorder ID | 

### Return type

[**GetBackorderById200Response**](GetBackorderById200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBackorders**
> GetBackorders200Response getBackorders(customerId, orderId, productId, status, orderDate, startDate, endDate)

Get all backorders

Returns a list of all backorders with optional filtering

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getBackordersApi();
final int customerId = 56; // int | Filter by customer ID
final int orderId = 56; // int | Filter by order ID
final int productId = 56; // int | Filter by product ID
final String status = status_example; // String | Filter by status
final Date orderDate = 2013-10-20; // Date | Filter by order date
final Date startDate = 2013-10-20; // Date | Filter by start date
final Date endDate = 2013-10-20; // Date | Filter by end date

try {
    final response = api.getBackorders(customerId, orderId, productId, status, orderDate, startDate, endDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BackordersApi->getBackorders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Filter by customer ID | [optional] 
 **orderId** | **int**| Filter by order ID | [optional] 
 **productId** | **int**| Filter by product ID | [optional] 
 **status** | **String**| Filter by status | [optional] 
 **orderDate** | **Date**| Filter by order date | [optional] 
 **startDate** | **Date**| Filter by start date | [optional] 
 **endDate** | **Date**| Filter by end date | [optional] 

### Return type

[**GetBackorders200Response**](GetBackorders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateBackorder**
> UpdateBackorder200Response updateBackorder(id, backorderUpdate)

Update backorder

Updates an existing backorder

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getBackordersApi();
final int id = 56; // int | Backorder ID
final BackorderUpdate backorderUpdate = ; // BackorderUpdate | 

try {
    final response = api.updateBackorder(id, backorderUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BackordersApi->updateBackorder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Backorder ID | 
 **backorderUpdate** | [**BackorderUpdate**](BackorderUpdate.md)|  | 

### Return type

[**UpdateBackorder200Response**](UpdateBackorder200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

