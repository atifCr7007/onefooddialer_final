# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**catalogueProductsGet**](DefaultApi.md#catalogueproductsget) | **GET** /catalogue/products | Get all products
[**catalogueProductsIdDelete**](DefaultApi.md#catalogueproductsiddelete) | **DELETE** /catalogue/products/{id} | Delete a product
[**catalogueProductsIdGet**](DefaultApi.md#catalogueproductsidget) | **GET** /catalogue/products/{id} | Get a specific product
[**catalogueProductsIdPut**](DefaultApi.md#catalogueproductsidput) | **PUT** /catalogue/products/{id} | Update a product
[**catalogueProductsPost**](DefaultApi.md#catalogueproductspost) | **POST** /catalogue/products | Create a new product


# **catalogueProductsGet**
> CatalogueProductsGet200Response catalogueProductsGet(foodType, kitchenId, status, productCategoryId, perPage)

Get all products

Returns a list of products with optional filtering

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String foodType = foodType_example; // String | Filter by food type (veg, non-veg)
final int kitchenId = 56; // int | Filter by kitchen ID
final bool status = true; // bool | Filter by status
final int productCategoryId = 56; // int | Filter by product category ID
final int perPage = 56; // int | Number of items per page

try {
    final response = api.catalogueProductsGet(foodType, kitchenId, status, productCategoryId, perPage);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->catalogueProductsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **foodType** | **String**| Filter by food type (veg, non-veg) | [optional] 
 **kitchenId** | **int**| Filter by kitchen ID | [optional] 
 **status** | **bool**| Filter by status | [optional] 
 **productCategoryId** | **int**| Filter by product category ID | [optional] 
 **perPage** | **int**| Number of items per page | [optional] [default to 15]

### Return type

[**CatalogueProductsGet200Response**](CatalogueProductsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogueProductsIdDelete**
> CatalogueProductsIdDelete200Response catalogueProductsIdDelete(id)

Delete a product

Deletes a specific product by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | Product ID

try {
    final response = api.catalogueProductsIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->catalogueProductsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Product ID | 

### Return type

[**CatalogueProductsIdDelete200Response**](CatalogueProductsIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogueProductsIdGet**
> CatalogueProductsIdGet200Response catalogueProductsIdGet(id)

Get a specific product

Returns a specific product by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | Product ID

try {
    final response = api.catalogueProductsIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->catalogueProductsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Product ID | 

### Return type

[**CatalogueProductsIdGet200Response**](CatalogueProductsIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogueProductsIdPut**
> CatalogueProductsIdPut200Response catalogueProductsIdPut(id, productInput)

Update a product

Updates a specific product by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | Product ID
final ProductInput productInput = ; // ProductInput | 

try {
    final response = api.catalogueProductsIdPut(id, productInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->catalogueProductsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Product ID | 
 **productInput** | [**ProductInput**](ProductInput.md)|  | 

### Return type

[**CatalogueProductsIdPut200Response**](CatalogueProductsIdPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **catalogueProductsPost**
> CatalogueProductsPost201Response catalogueProductsPost(productInput)

Create a new product

Creates a new product

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final ProductInput productInput = ; // ProductInput | 

try {
    final response = api.catalogueProductsPost(productInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->catalogueProductsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productInput** | [**ProductInput**](ProductInput.md)|  | 

### Return type

[**CatalogueProductsPost201Response**](CatalogueProductsPost201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

