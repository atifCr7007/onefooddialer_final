# openapi.api.UserManagementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/admin-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersGet**](UserManagementApi.md#usersget) | **GET** /users | List admin users
[**usersPost**](UserManagementApi.md#userspost) | **POST** /users | Create new admin user
[**usersUserIdActivatePost**](UserManagementApi.md#usersuseridactivatepost) | **POST** /users/{userId}/activate | Activate admin user
[**usersUserIdDelete**](UserManagementApi.md#usersuseriddelete) | **DELETE** /users/{userId} | Delete admin user
[**usersUserIdGet**](UserManagementApi.md#usersuseridget) | **GET** /users/{userId} | Get admin user by ID
[**usersUserIdPut**](UserManagementApi.md#usersuseridput) | **PUT** /users/{userId} | Update admin user
[**usersUserIdSuspendPost**](UserManagementApi.md#usersuseridsuspendpost) | **POST** /users/{userId}/suspend | Suspend admin user
[**v2AdminUserGet**](UserManagementApi.md#v2adminuserget) | **GET** /v2/admin/user | Get current user information


# **usersGet**
> UsersResponse usersGet(page, limit, search, role, status)

List admin users

Retrieve paginated list of admin users with filtering and search

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserManagementApi();
final int page = 56; // int | Page number for pagination
final int limit = 56; // int | Number of items per page
final String search = search_example; // String | Search query string
final String role = role_example; // String | Filter by role name
final String status = status_example; // String | Filter by user status

try {
    final response = api.usersGet(page, limit, search, role, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserManagementApi->usersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number for pagination | [optional] [default to 1]
 **limit** | **int**| Number of items per page | [optional] [default to 20]
 **search** | **String**| Search query string | [optional] 
 **role** | **String**| Filter by role name | [optional] 
 **status** | **String**| Filter by user status | [optional] 

### Return type

[**UsersResponse**](UsersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersPost**
> AdminUser usersPost(createUserRequest)

Create new admin user

Create a new admin user with specified role and permissions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserManagementApi();
final CreateUserRequest createUserRequest = ; // CreateUserRequest | 

try {
    final response = api.usersPost(createUserRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserManagementApi->usersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserRequest** | [**CreateUserRequest**](CreateUserRequest.md)|  | 

### Return type

[**AdminUser**](AdminUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdActivatePost**
> usersUserIdActivatePost(userId)

Activate admin user

Activate a suspended or inactive admin user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserManagementApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the user

try {
    api.usersUserIdActivatePost(userId);
} catch on DioException (e) {
    print('Exception when calling UserManagementApi->usersUserIdActivatePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| Unique identifier for the user | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdDelete**
> usersUserIdDelete(userId)

Delete admin user

Permanently delete an admin user account

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserManagementApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the user

try {
    api.usersUserIdDelete(userId);
} catch on DioException (e) {
    print('Exception when calling UserManagementApi->usersUserIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| Unique identifier for the user | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdGet**
> AdminUser usersUserIdGet(userId)

Get admin user by ID

Retrieve detailed information about a specific admin user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserManagementApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the user

try {
    final response = api.usersUserIdGet(userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserManagementApi->usersUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| Unique identifier for the user | 

### Return type

[**AdminUser**](AdminUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdPut**
> AdminUser usersUserIdPut(userId, updateUserRequest)

Update admin user

Update admin user information, role, or permissions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserManagementApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the user
final UpdateUserRequest updateUserRequest = ; // UpdateUserRequest | 

try {
    final response = api.usersUserIdPut(userId, updateUserRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserManagementApi->usersUserIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| Unique identifier for the user | 
 **updateUserRequest** | [**UpdateUserRequest**](UpdateUserRequest.md)|  | 

### Return type

[**AdminUser**](AdminUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersUserIdSuspendPost**
> usersUserIdSuspendPost(userId, usersUserIdSuspendPostRequest)

Suspend admin user

Temporarily suspend an admin user account

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserManagementApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier for the user
final UsersUserIdSuspendPostRequest usersUserIdSuspendPostRequest = ; // UsersUserIdSuspendPostRequest | 

try {
    api.usersUserIdSuspendPost(userId, usersUserIdSuspendPostRequest);
} catch on DioException (e) {
    print('Exception when calling UserManagementApi->usersUserIdSuspendPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| Unique identifier for the user | 
 **usersUserIdSuspendPostRequest** | [**UsersUserIdSuspendPostRequest**](UsersUserIdSuspendPostRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v2AdminUserGet**
> V2AdminUserGet200Response v2AdminUserGet()

Get current user information

Returns information about the authenticated user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserManagementApi();

try {
    final response = api.v2AdminUserGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserManagementApi->v2AdminUserGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V2AdminUserGet200Response**](V2AdminUserGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

