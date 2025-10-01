# quickserver_client.api.TimeslotsApi

## Load the API package
```dart
import 'package:quickserver_client/api.dart';
```

All URIs are relative to */api/v2/quickserve*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTimeslot**](TimeslotsApi.md#createtimeslot) | **POST** /timeslots | Create a new timeslot
[**deleteTimeslot**](TimeslotsApi.md#deletetimeslot) | **DELETE** /timeslots/{id} | Delete timeslot
[**getAvailableTimeslots**](TimeslotsApi.md#getavailabletimeslots) | **GET** /timeslots/available | Get available timeslots
[**getTimeslotById**](TimeslotsApi.md#gettimeslotbyid) | **GET** /timeslots/{id} | Get timeslot by ID
[**getTimeslots**](TimeslotsApi.md#gettimeslots) | **GET** /timeslots | Get all timeslots
[**updateTimeslot**](TimeslotsApi.md#updatetimeslot) | **PUT** /timeslots/{id} | Update timeslot


# **createTimeslot**
> CreateTimeslot200Response createTimeslot(timeslotCreate)

Create a new timeslot

Creates a new timeslot with the provided data

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getTimeslotsApi();
final TimeslotCreate timeslotCreate = ; // TimeslotCreate | 

try {
    final response = api.createTimeslot(timeslotCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeslotsApi->createTimeslot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeslotCreate** | [**TimeslotCreate**](TimeslotCreate.md)|  | 

### Return type

[**CreateTimeslot200Response**](CreateTimeslot200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTimeslot**
> DeleteTimeslot200Response deleteTimeslot(id)

Delete timeslot

Deletes an existing timeslot

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getTimeslotsApi();
final int id = 56; // int | Timeslot ID

try {
    final response = api.deleteTimeslot(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeslotsApi->deleteTimeslot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Timeslot ID | 

### Return type

[**DeleteTimeslot200Response**](DeleteTimeslot200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableTimeslots**
> GetTimeslots200Response getAvailableTimeslots(day, menuType, kitchen, orderDate)

Get available timeslots

Returns a list of available timeslots for a specific day, menu type, and kitchen

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getTimeslotsApi();
final String day = day_example; // String | Day of the week
final String menuType = menuType_example; // String | Menu type
final String kitchen = kitchen_example; // String | Kitchen
final Date orderDate = 2013-10-20; // Date | Order date

try {
    final response = api.getAvailableTimeslots(day, menuType, kitchen, orderDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeslotsApi->getAvailableTimeslots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **day** | **String**| Day of the week | 
 **menuType** | **String**| Menu type | 
 **kitchen** | **String**| Kitchen | 
 **orderDate** | **Date**| Order date | [optional] 

### Return type

[**GetTimeslots200Response**](GetTimeslots200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeslotById**
> GetTimeslotById200Response getTimeslotById(id)

Get timeslot by ID

Returns a single timeslot by ID

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getTimeslotsApi();
final int id = 56; // int | Timeslot ID

try {
    final response = api.getTimeslotById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeslotsApi->getTimeslotById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Timeslot ID | 

### Return type

[**GetTimeslotById200Response**](GetTimeslotById200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeslots**
> GetTimeslots200Response getTimeslots(day, menuType, kitchen, status)

Get all timeslots

Returns a list of all timeslots with optional filtering

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getTimeslotsApi();
final String day = day_example; // String | Filter by day
final String menuType = menuType_example; // String | Filter by menu type
final String kitchen = kitchen_example; // String | Filter by kitchen
final int status = 56; // int | Filter by status

try {
    final response = api.getTimeslots(day, menuType, kitchen, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeslotsApi->getTimeslots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **day** | **String**| Filter by day | [optional] 
 **menuType** | **String**| Filter by menu type | [optional] 
 **kitchen** | **String**| Filter by kitchen | [optional] 
 **status** | **int**| Filter by status | [optional] 

### Return type

[**GetTimeslots200Response**](GetTimeslots200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTimeslot**
> UpdateTimeslot200Response updateTimeslot(id, timeslotUpdate)

Update timeslot

Updates an existing timeslot

### Example
```dart
import 'package:quickserver_client/api.dart';

final api = QuickserverClient().getTimeslotsApi();
final int id = 56; // int | Timeslot ID
final TimeslotUpdate timeslotUpdate = ; // TimeslotUpdate | 

try {
    final response = api.updateTimeslot(id, timeslotUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TimeslotsApi->updateTimeslot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Timeslot ID | 
 **timeslotUpdate** | [**TimeslotUpdate**](TimeslotUpdate.md)|  | 

### Return type

[**UpdateTimeslot200Response**](UpdateTimeslot200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

