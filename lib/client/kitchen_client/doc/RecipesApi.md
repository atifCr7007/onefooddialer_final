# openapi.api.RecipesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRecipeById**](RecipesApi.md#getrecipebyid) | **GET** /recipes/{id} | Get a recipe by ID


# **getRecipeById**
> GetRecipeById200Response getRecipeById(id)

Get a recipe by ID

Returns a recipe by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRecipesApi();
final int id = 56; // int | Product ID

try {
    final response = api.getRecipeById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecipesApi->getRecipeById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Product ID | 

### Return type

[**GetRecipeById200Response**](GetRecipeById200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

