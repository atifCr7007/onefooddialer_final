# openapi.api.KitchenMastersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createKitchenMaster**](KitchenMastersApi.md#createkitchenmaster) | **POST** /kitchen-masters | Create a kitchen master
[**deleteKitchenMaster**](KitchenMastersApi.md#deletekitchenmaster) | **DELETE** /kitchen-masters/{id} | Delete a kitchen master
[**getKitchenMasterById**](KitchenMastersApi.md#getkitchenmasterbyid) | **GET** /kitchen-masters/{id} | Get a kitchen master by ID
[**getKitchenMasters**](KitchenMastersApi.md#getkitchenmasters) | **GET** /kitchen-masters | Get all kitchen masters
[**updateKitchenMaster**](KitchenMastersApi.md#updatekitchenmaster) | **PUT** /kitchen-masters/{id} | Update a kitchen master


# **createKitchenMaster**
> KitchenMaster createKitchenMaster(kitchenMasterInput)

Create a kitchen master

Creates a new kitchen master

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchenMastersApi();
final KitchenMasterInput kitchenMasterInput = ; // KitchenMasterInput | 

try {
    final response = api.createKitchenMaster(kitchenMasterInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchenMastersApi->createKitchenMaster: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kitchenMasterInput** | [**KitchenMasterInput**](KitchenMasterInput.md)|  | 

### Return type

[**KitchenMaster**](KitchenMaster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteKitchenMaster**
> DeleteKitchenMaster200Response deleteKitchenMaster(id)

Delete a kitchen master

Deletes a kitchen master

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchenMastersApi();
final int id = 56; // int | Kitchen master ID

try {
    final response = api.deleteKitchenMaster(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchenMastersApi->deleteKitchenMaster: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Kitchen master ID | 

### Return type

[**DeleteKitchenMaster200Response**](DeleteKitchenMaster200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKitchenMasterById**
> KitchenMaster getKitchenMasterById(id)

Get a kitchen master by ID

Returns a kitchen master by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchenMastersApi();
final int id = 56; // int | Kitchen master ID

try {
    final response = api.getKitchenMasterById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchenMastersApi->getKitchenMasterById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Kitchen master ID | 

### Return type

[**KitchenMaster**](KitchenMaster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKitchenMasters**
> GetKitchenMasters200Response getKitchenMasters(status, companyId, unitId)

Get all kitchen masters

Returns a list of all kitchen masters with optional filtering

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchenMastersApi();
final bool status = true; // bool | Filter by status
final int companyId = 56; // int | Filter by company ID
final int unitId = 56; // int | Filter by unit ID

try {
    final response = api.getKitchenMasters(status, companyId, unitId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchenMastersApi->getKitchenMasters: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **bool**| Filter by status | [optional] 
 **companyId** | **int**| Filter by company ID | [optional] 
 **unitId** | **int**| Filter by unit ID | [optional] 

### Return type

[**GetKitchenMasters200Response**](GetKitchenMasters200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateKitchenMaster**
> KitchenMaster updateKitchenMaster(id, kitchenMasterInput)

Update a kitchen master

Updates a kitchen master

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getKitchenMastersApi();
final int id = 56; // int | Kitchen master ID
final KitchenMasterInput kitchenMasterInput = ; // KitchenMasterInput | 

try {
    final response = api.updateKitchenMaster(id, kitchenMasterInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling KitchenMastersApi->updateKitchenMaster: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Kitchen master ID | 
 **kitchenMasterInput** | [**KitchenMasterInput**](KitchenMasterInput.md)|  | 

### Return type

[**KitchenMaster**](KitchenMaster.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

