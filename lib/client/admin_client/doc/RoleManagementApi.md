# openapi.api.RoleManagementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/admin-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v2AdminPermissionsGet**](RoleManagementApi.md#v2adminpermissionsget) | **GET** /v2/admin/permissions | Get all permissions
[**v2AdminPermissionsModuleModuleGet**](RoleManagementApi.md#v2adminpermissionsmodulemoduleget) | **GET** /v2/admin/permissions/module/{module} | Get permissions by module
[**v2AdminRolesGet**](RoleManagementApi.md#v2adminrolesget) | **GET** /v2/admin/roles | Get all roles
[**v2AdminRolesIdDelete**](RoleManagementApi.md#v2adminrolesiddelete) | **DELETE** /v2/admin/roles/{id} | Delete a role
[**v2AdminRolesIdGet**](RoleManagementApi.md#v2adminrolesidget) | **GET** /v2/admin/roles/{id} | Get a specific role
[**v2AdminRolesIdPut**](RoleManagementApi.md#v2adminrolesidput) | **PUT** /v2/admin/roles/{id} | Update a role
[**v2AdminRolesPost**](RoleManagementApi.md#v2adminrolespost) | **POST** /v2/admin/roles | Create a new role


# **v2AdminPermissionsGet**
> V2AdminPermissionsGet200Response v2AdminPermissionsGet()

Get all permissions

Returns all permissions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRoleManagementApi();

try {
    final response = api.v2AdminPermissionsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoleManagementApi->v2AdminPermissionsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V2AdminPermissionsGet200Response**](V2AdminPermissionsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminPermissionsModuleModuleGet**
> V2AdminPermissionsGet200Response v2AdminPermissionsModuleModuleGet(module)

Get permissions by module

Returns permissions for a specific module

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRoleManagementApi();
final String module = module_example; // String | Module name

try {
    final response = api.v2AdminPermissionsModuleModuleGet(module);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoleManagementApi->v2AdminPermissionsModuleModuleGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **module** | **String**| Module name | 

### Return type

[**V2AdminPermissionsGet200Response**](V2AdminPermissionsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminRolesGet**
> V2AdminRolesGet200Response v2AdminRolesGet(companyId, unitId)

Get all roles

Returns all roles

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRoleManagementApi();
final int companyId = 56; // int | Company ID
final int unitId = 56; // int | Unit ID

try {
    final response = api.v2AdminRolesGet(companyId, unitId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoleManagementApi->v2AdminRolesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Company ID | [optional] 
 **unitId** | **int**| Unit ID | [optional] 

### Return type

[**V2AdminRolesGet200Response**](V2AdminRolesGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminRolesIdDelete**
> V2AdminRolesIdDelete200Response v2AdminRolesIdDelete(id)

Delete a role

Deletes a specific role

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRoleManagementApi();
final int id = 56; // int | Role ID

try {
    final response = api.v2AdminRolesIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoleManagementApi->v2AdminRolesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Role ID | 

### Return type

[**V2AdminRolesIdDelete200Response**](V2AdminRolesIdDelete200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminRolesIdGet**
> V2AdminRolesIdGet200Response v2AdminRolesIdGet(id)

Get a specific role

Returns a specific role

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRoleManagementApi();
final int id = 56; // int | Role ID

try {
    final response = api.v2AdminRolesIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoleManagementApi->v2AdminRolesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Role ID | 

### Return type

[**V2AdminRolesIdGet200Response**](V2AdminRolesIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminRolesIdPut**
> V2AdminRolesIdPut200Response v2AdminRolesIdPut(id, v2AdminRolesIdPutRequest)

Update a role

Updates a specific role

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRoleManagementApi();
final int id = 56; // int | Role ID
final V2AdminRolesIdPutRequest v2AdminRolesIdPutRequest = ; // V2AdminRolesIdPutRequest | 

try {
    final response = api.v2AdminRolesIdPut(id, v2AdminRolesIdPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoleManagementApi->v2AdminRolesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Role ID | 
 **v2AdminRolesIdPutRequest** | [**V2AdminRolesIdPutRequest**](V2AdminRolesIdPutRequest.md)|  | 

### Return type

[**V2AdminRolesIdPut200Response**](V2AdminRolesIdPut200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminRolesPost**
> V2AdminRolesPost201Response v2AdminRolesPost(v2AdminRolesPostRequest)

Create a new role

Creates a new role

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getRoleManagementApi();
final V2AdminRolesPostRequest v2AdminRolesPostRequest = ; // V2AdminRolesPostRequest | 

try {
    final response = api.v2AdminRolesPost(v2AdminRolesPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoleManagementApi->v2AdminRolesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **v2AdminRolesPostRequest** | [**V2AdminRolesPostRequest**](V2AdminRolesPostRequest.md)|  | 

### Return type

[**V2AdminRolesPost201Response**](V2AdminRolesPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

