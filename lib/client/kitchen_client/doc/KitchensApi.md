# openapi.api.KitchensApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getKitchenById**](KitchensApi.md#getkitchenbyid) | **GET** /kitchens/{id} | Get a kitchen by ID
[**getKitchens**](KitchensApi.md#getkitchens) | **GET** /kitchens | Get all kitchens
[**updateAllPrepared**](KitchensApi.md#updateallprepared) | **POST** /kitchens/{id}/prepared/all | Update all prepared count
[**updatePrepared**](KitchensApi.md#updateprepared) | **POST** /kitchens/{id}/prepared | Update prepared count


# **getKitchenById**
> Kitchen getKitchenById(id)

Get a kitchen by ID

Returns a kitchen by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchensApi();
final int id = 56; // int | Kitchen ID

try {
    final response = api.getKitchenById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchensApi->getKitchenById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Kitchen ID | 

### Return type

[**Kitchen**](Kitchen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKitchens**
> GetKitchens200Response getKitchens(date, menu, kitchenId)

Get all kitchens

Returns a list of all kitchens with optional filtering

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchensApi();
final Date date = 2013-10-20; // Date | Filter by date (YYYY-MM-DD)
final String menu = menu_example; // String | Filter by menu
final int kitchenId = 56; // int | Filter by kitchen ID

try {
    final response = api.getKitchens(date, menu, kitchenId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchensApi->getKitchens: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **date** | **Date**| Filter by date (YYYY-MM-DD) | [optional] 
 **menu** | **String**| Filter by menu | [optional] 
 **kitchenId** | **int**| Filter by kitchen ID | [optional] 

### Return type

[**GetKitchens200Response**](GetKitchens200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAllPrepared**
> Kitchen updateAllPrepared(id, updatePreparedRequest)

Update all prepared count

Updates all prepared count for a kitchen

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchensApi();
final int id = 56; // int | Kitchen ID
final UpdatePreparedRequest updatePreparedRequest = ; // UpdatePreparedRequest | 

try {
    final response = api.updateAllPrepared(id, updatePreparedRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchensApi->updateAllPrepared: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Kitchen ID | 
 **updatePreparedRequest** | [**UpdatePreparedRequest**](UpdatePreparedRequest.md)|  | 

### Return type

[**Kitchen**](Kitchen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePrepared**
> Kitchen updatePrepared(id, updatePreparedRequest)

Update prepared count

Updates the prepared count for a kitchen

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchensApi();
final int id = 56; // int | Kitchen ID
final UpdatePreparedRequest updatePreparedRequest = ; // UpdatePreparedRequest | 

try {
    final response = api.updatePrepared(id, updatePreparedRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchensApi->updatePrepared: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Kitchen ID | 
 **updatePreparedRequest** | [**UpdatePreparedRequest**](UpdatePreparedRequest.md)|  | 

### Return type

[**Kitchen**](Kitchen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

