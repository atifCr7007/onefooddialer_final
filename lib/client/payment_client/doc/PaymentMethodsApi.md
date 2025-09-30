# openapi.api.PaymentMethodsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/payment-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPaymentMethod**](PaymentMethodsApi.md#createpaymentmethod) | **POST** /payment-methods | Create payment method
[**deletePaymentMethod**](PaymentMethodsApi.md#deletepaymentmethod) | **DELETE** /payment-methods/{id} | Delete payment method
[**getCustomerPaymentMethods**](PaymentMethodsApi.md#getcustomerpaymentmethods) | **GET** /payment-methods/customer/{customerId} | Get customer payment methods
[**getPaymentMethod**](PaymentMethodsApi.md#getpaymentmethod) | **GET** /payment-methods/{id} | Get payment method
[**setDefaultPaymentMethod**](PaymentMethodsApi.md#setdefaultpaymentmethod) | **PUT** /payment-methods/{id}/default | Set default payment method
[**updatePaymentMethod**](PaymentMethodsApi.md#updatepaymentmethod) | **PUT** /payment-methods/{id} | Update payment method


# **createPaymentMethod**
> PaymentMethodResponse createPaymentMethod(createPaymentMethodRequest)

Create payment method

Create a new payment method

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentMethodsApi();
final CreatePaymentMethodRequest createPaymentMethodRequest = ; // CreatePaymentMethodRequest | 

try {
    final response = api.createPaymentMethod(createPaymentMethodRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentMethodsApi->createPaymentMethod: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPaymentMethodRequest** | [**CreatePaymentMethodRequest**](CreatePaymentMethodRequest.md)|  | 

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePaymentMethod**
> DeleteResponse deletePaymentMethod(id, customerId)

Delete payment method

Delete a specific payment method

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentMethodsApi();
final int id = 56; // int | Payment method ID
final int customerId = 56; // int | Customer ID for verification

try {
    final response = api.deletePaymentMethod(id, customerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentMethodsApi->deletePaymentMethod: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Payment method ID | 
 **customerId** | **int**| Customer ID for verification | [optional] 

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerPaymentMethods**
> PaymentMethodsResponse getCustomerPaymentMethods(customerId, activeOnly)

Get customer payment methods

Get all payment methods for a customer

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentMethodsApi();
final int customerId = 56; // int | Customer ID
final bool activeOnly = true; // bool | Whether to return only active payment methods

try {
    final response = api.getCustomerPaymentMethods(customerId, activeOnly);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentMethodsApi->getCustomerPaymentMethods: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Customer ID | 
 **activeOnly** | **bool**| Whether to return only active payment methods | [optional] [default to true]

### Return type

[**PaymentMethodsResponse**](PaymentMethodsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentMethod**
> PaymentMethodResponse getPaymentMethod(id, customerId)

Get payment method

Get a specific payment method

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentMethodsApi();
final int id = 56; // int | Payment method ID
final int customerId = 56; // int | Customer ID for verification

try {
    final response = api.getPaymentMethod(id, customerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentMethodsApi->getPaymentMethod: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Payment method ID | 
 **customerId** | **int**| Customer ID for verification | [optional] 

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDefaultPaymentMethod**
> PaymentMethodResponse setDefaultPaymentMethod(id, customerId)

Set default payment method

Set a payment method as the default

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentMethodsApi();
final int id = 56; // int | Payment method ID
final int customerId = 56; // int | Customer ID for verification

try {
    final response = api.setDefaultPaymentMethod(id, customerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentMethodsApi->setDefaultPaymentMethod: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Payment method ID | 
 **customerId** | **int**| Customer ID for verification | [optional] 

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePaymentMethod**
> PaymentMethodResponse updatePaymentMethod(id, updatePaymentMethodRequest, customerId)

Update payment method

Update a specific payment method

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentMethodsApi();
final int id = 56; // int | Payment method ID
final UpdatePaymentMethodRequest updatePaymentMethodRequest = ; // UpdatePaymentMethodRequest | 
final int customerId = 56; // int | Customer ID for verification

try {
    final response = api.updatePaymentMethod(id, updatePaymentMethodRequest, customerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentMethodsApi->updatePaymentMethod: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Payment method ID | 
 **updatePaymentMethodRequest** | [**UpdatePaymentMethodRequest**](UpdatePaymentMethodRequest.md)|  | 
 **customerId** | **int**| Customer ID for verification | [optional] 

### Return type

[**PaymentMethodResponse**](PaymentMethodResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

