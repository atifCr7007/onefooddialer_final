# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/auth-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**forgotPassword**](AuthApi.md#forgotpassword) | **POST** /auth/forgot-password | Forgot Password
[**getUser**](AuthApi.md#getuser) | **GET** /auth/user | Get User
[**keycloakCallback**](AuthApi.md#keycloakcallback) | **GET** /auth/keycloak/callback | Keycloak Callback
[**keycloakLogin**](AuthApi.md#keycloaklogin) | **GET** /auth/keycloak/login | Keycloak Login
[**login**](AuthApi.md#login) | **POST** /auth/login | Login
[**logout**](AuthApi.md#logout) | **POST** /auth/logout | Logout
[**refreshToken**](AuthApi.md#refreshtoken) | **POST** /auth/refresh-token | Refresh Token
[**resetPassword**](AuthApi.md#resetpassword) | **POST** /auth/reset-password | Reset Password
[**validateToken**](AuthApi.md#validatetoken) | **POST** /auth/validate-token | Validate Token


# **forgotPassword**
> ForgotPassword200Response forgotPassword(forgotPasswordRequest)

Forgot Password

Requests a password reset

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final ForgotPasswordRequest forgotPasswordRequest = ; // ForgotPasswordRequest | 

try {
    final response = api.forgotPassword(forgotPasswordRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->forgotPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordRequest** | [**ForgotPasswordRequest**](ForgotPasswordRequest.md)|  | 

### Return type

[**ForgotPassword200Response**](ForgotPassword200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> GetUser200Response getUser()

Get User

Gets the authenticated user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();

try {
    final response = api.getUser();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->getUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUser200Response**](GetUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keycloakCallback**
> KeycloakCallback200Response keycloakCallback(code, state)

Keycloak Callback

Handle the Keycloak callback

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final String code = code_example; // String | Authorization code
final String state = state_example; // String | State parameter

try {
    final response = api.keycloakCallback(code, state);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->keycloakCallback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Authorization code | 
 **state** | **String**| State parameter | 

### Return type

[**KeycloakCallback200Response**](KeycloakCallback200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keycloakLogin**
> KeycloakLogin200Response keycloakLogin()

Keycloak Login

Get the Keycloak login URL

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();

try {
    final response = api.keycloakLogin();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->keycloakLogin: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**KeycloakLogin200Response**](KeycloakLogin200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> Login200Response login(loginRequest)

Login

Authenticates a user and returns a token

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final LoginRequest loginRequest = ; // LoginRequest | 

try {
    final response = api.login(loginRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | 

### Return type

[**Login200Response**](Login200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> Logout200Response logout()

Logout

Logs out a user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();

try {
    final response = api.logout();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->logout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Logout200Response**](Logout200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
> Login200Response refreshToken(refreshTokenRequest)

Refresh Token

Refresh an authentication token

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final RefreshTokenRequest refreshTokenRequest = ; // RefreshTokenRequest | 

try {
    final response = api.refreshToken(refreshTokenRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenRequest** | [**RefreshTokenRequest**](RefreshTokenRequest.md)|  | 

### Return type

[**Login200Response**](Login200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> ResetPassword200Response resetPassword(resetPasswordRequest)

Reset Password

Resets a user's password

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final ResetPasswordRequest resetPasswordRequest = ; // ResetPasswordRequest | 

try {
    final response = api.resetPassword(resetPasswordRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->resetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

### Return type

[**ResetPassword200Response**](ResetPassword200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateToken**
> ValidateToken200Response validateToken(validateTokenRequest)

Validate Token

Validate an authentication token

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final ValidateTokenRequest validateTokenRequest = ; // ValidateTokenRequest | 

try {
    final response = api.validateToken(validateTokenRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->validateToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateTokenRequest** | [**ValidateTokenRequest**](ValidateTokenRequest.md)|  | [optional] 

### Return type

[**ValidateToken200Response**](ValidateToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

