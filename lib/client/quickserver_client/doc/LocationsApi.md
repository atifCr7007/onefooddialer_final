# quickserver_client.api.LocationsApi

## Load the API package
```dart
import 'package:quickserver_client/api.dart';
```

All URIs are relative to */api/v2/quickserve*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationMapping**](LocationsApi.md#createlocationmapping) | **POST** /locations | Create a new location mapping
[**deleteLocationMapping**](LocationsApi.md#deletelocationmapping) | **DELETE** /locations/{id} | Delete location mapping
[**getLocationMappingById**](LocationsApi.md#getlocationmappingbyid) | **GET** /locations/{id} | Get location mapping by ID
[**getLocationMappings**](LocationsApi.md#getlocationmappings) | **GET** /locations | Get all location mappings
[**getLocationsByCity**](LocationsApi.md#getlocationsbycity) | **GET** /locations/by-city | Get locations by city
[**getLocationsByKitchen**](LocationsApi.md#getlocationsbykitchen) | **GET** /locations/by-kitchen | Get locations by kitchen
[**updateLocationMapping**](LocationsApi.md#updatelocationmapping) | **PUT** /locations/{id} | Update location mapping


# **createLocationMapping**
> CreateLocationMapping200Response createLocationMapping(locationMappingCreate)

Create a new location mapping

Creates a new location mapping with the provided data

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getLocationsApi();
final LocationMappingCreate locationMappingCreate = ; // LocationMappingCreate | 

try {
    final response = api.createLocationMapping(locationMappingCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LocationsApi->createLocationMapping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationMappingCreate** | [**LocationMappingCreate**](LocationMappingCreate.md)|  | 

### Return type

[**CreateLocationMapping200Response**](CreateLocationMapping200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLocationMapping**
> DeleteLocationMapping200Response deleteLocationMapping(id)

Delete location mapping

Deletes an existing location mapping

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getLocationsApi();
final int id = 56; // int | Location Mapping ID

try {
    final response = api.deleteLocationMapping(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LocationsApi->deleteLocationMapping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Location Mapping ID | 

### Return type

[**DeleteLocationMapping200Response**](DeleteLocationMapping200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationMappingById**
> GetLocationMappingById200Response getLocationMappingById(id)

Get location mapping by ID

Returns a single location mapping by ID

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getLocationsApi();
final int id = 56; // int | Location Mapping ID

try {
    final response = api.getLocationMappingById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LocationsApi->getLocationMappingById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Location Mapping ID | 

### Return type

[**GetLocationMappingById200Response**](GetLocationMappingById200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationMappings**
> GetLocationMappings200Response getLocationMappings(cityCode, kitchenCode, status, search)

Get all location mappings

Returns a list of all location mappings with optional filtering

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getLocationsApi();
final String cityCode = cityCode_example; // String | Filter by city code
final String kitchenCode = kitchenCode_example; // String | Filter by kitchen code
final int status = 56; // int | Filter by status
final String search = search_example; // String | Search by location name, city name, or kitchen name

try {
    final response = api.getLocationMappings(cityCode, kitchenCode, status, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LocationsApi->getLocationMappings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cityCode** | **String**| Filter by city code | [optional] 
 **kitchenCode** | **String**| Filter by kitchen code | [optional] 
 **status** | **int**| Filter by status | [optional] 
 **search** | **String**| Search by location name, city name, or kitchen name | [optional] 

### Return type

[**GetLocationMappings200Response**](GetLocationMappings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationsByCity**
> GetLocationMappings200Response getLocationsByCity(cityCode)

Get locations by city

Returns a list of locations for a specific city

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getLocationsApi();
final String cityCode = cityCode_example; // String | City code

try {
    final response = api.getLocationsByCity(cityCode);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LocationsApi->getLocationsByCity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cityCode** | **String**| City code | 

### Return type

[**GetLocationMappings200Response**](GetLocationMappings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationsByKitchen**
> GetLocationMappings200Response getLocationsByKitchen(kitchenCode)

Get locations by kitchen

Returns a list of locations for a specific kitchen

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getLocationsApi();
final String kitchenCode = kitchenCode_example; // String | Kitchen code

try {
    final response = api.getLocationsByKitchen(kitchenCode);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LocationsApi->getLocationsByKitchen: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **kitchenCode** | **String**| Kitchen code | 

### Return type

[**GetLocationMappings200Response**](GetLocationMappings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLocationMapping**
> UpdateLocationMapping200Response updateLocationMapping(id, locationMappingUpdate)

Update location mapping

Updates an existing location mapping

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getLocationsApi();
final int id = 56; // int | Location Mapping ID
final LocationMappingUpdate locationMappingUpdate = ; // LocationMappingUpdate | 

try {
    final response = api.updateLocationMapping(id, locationMappingUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LocationsApi->updateLocationMapping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Location Mapping ID | 
 **locationMappingUpdate** | [**LocationMappingUpdate**](LocationMappingUpdate.md)|  | 

### Return type

[**UpdateLocationMapping200Response**](UpdateLocationMapping200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

