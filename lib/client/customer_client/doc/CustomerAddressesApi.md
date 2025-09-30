# openapi.api.CustomerAddressesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/customer-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCustomerAddress**](CustomerAddressesApi.md#addcustomeraddress) | **POST** /customers/{id}/addresses | Add an address to a customer
[**deleteCustomerAddress**](CustomerAddressesApi.md#deletecustomeraddress) | **DELETE** /customers/{id}/addresses/{addressId} | Delete a customer address
[**updateCustomerAddress**](CustomerAddressesApi.md#updatecustomeraddress) | **PUT** /customers/{id}/addresses/{addressId} | Update a customer address


# **addCustomerAddress**
> AddCustomerAddress201Response addCustomerAddress(id, addressCreate)

Add an address to a customer

Adds a new address to a customer

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomerAddressesApi();
final int id = 56; // int | Customer ID
final AddressCreate addressCreate = ; // AddressCreate | 

try {
    final response = api.addCustomerAddress(id, addressCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomerAddressesApi->addCustomerAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Customer ID | 
 **addressCreate** | [**AddressCreate**](AddressCreate.md)|  | 

### Return type

[**AddCustomerAddress201Response**](AddCustomerAddress201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomerAddress**
> DeleteCustomerAddress200Response deleteCustomerAddress(id, addressId)

Delete a customer address

Deletes a customer address from the system

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomerAddressesApi();
final int id = 56; // int | Customer ID
final int addressId = 56; // int | Address ID

try {
    final response = api.deleteCustomerAddress(id, addressId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomerAddressesApi->deleteCustomerAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Customer ID | 
 **addressId** | **int**| Address ID | 

### Return type

[**DeleteCustomerAddress200Response**](DeleteCustomerAddress200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerAddress**
> UpdateCustomerAddress200Response updateCustomerAddress(id, addressId, addressUpdate)

Update a customer address

Updates an existing customer address

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomerAddressesApi();
final int id = 56; // int | Customer ID
final int addressId = 56; // int | Address ID
final AddressUpdate addressUpdate = ; // AddressUpdate | 

try {
    final response = api.updateCustomerAddress(id, addressId, addressUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomerAddressesApi->updateCustomerAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Customer ID | 
 **addressId** | **int**| Address ID | 
 **addressUpdate** | [**AddressUpdate**](AddressUpdate.md)|  | 

### Return type

[**UpdateCustomerAddress200Response**](UpdateCustomerAddress200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

