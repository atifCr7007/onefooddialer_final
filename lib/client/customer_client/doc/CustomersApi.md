# openapi.api.CustomersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/customer-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomer**](CustomersApi.md#createcustomer) | **POST** /customers | Create a new customer
[**deleteCustomer**](CustomersApi.md#deletecustomer) | **DELETE** /customers/{id} | Delete a customer
[**getCustomerById**](CustomersApi.md#getcustomerbyid) | **GET** /customers/{id} | Get a customer by ID
[**getCustomers**](CustomersApi.md#getcustomers) | **GET** /customers | Get all customers
[**updateCustomer**](CustomersApi.md#updatecustomer) | **PUT** /customers/{id} | Update a customer


# **createCustomer**
> CreateCustomer201Response createCustomer(customerCreate)

Create a new customer

Creates a new customer in the system

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomersApi();
final CustomerCreate customerCreate = ; // CustomerCreate | 

try {
    final response = api.createCustomer(customerCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->createCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerCreate** | [**CustomerCreate**](CustomerCreate.md)|  | 

### Return type

[**CreateCustomer201Response**](CreateCustomer201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomer**
> DeleteCustomer200Response deleteCustomer(id)

Delete a customer

Deletes a customer from the system

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomersApi();
final int id = 56; // int | Customer ID

try {
    final response = api.deleteCustomer(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->deleteCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Customer ID | 

### Return type

[**DeleteCustomer200Response**](DeleteCustomer200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerById**
> GetCustomerById200Response getCustomerById(id)

Get a customer by ID

Returns a single customer by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomersApi();
final int id = 56; // int | Customer ID

try {
    final response = api.getCustomerById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->getCustomerById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Customer ID | 

### Return type

[**GetCustomerById200Response**](GetCustomerById200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomers**
> GetCustomers200Response getCustomers(status, companyId, unitId, search, orderBy, orderDir, perPage, page)

Get all customers

Returns a paginated list of customers with optional filtering

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomersApi();
final bool status = true; // bool | Filter by customer status
final int companyId = 56; // int | Filter by company ID
final int unitId = 56; // int | Filter by unit ID
final String search = search_example; // String | Search term for customer name, phone, or email
final String orderBy = orderBy_example; // String | Field to order by
final String orderDir = orderDir_example; // String | Order direction
final int perPage = 56; // int | Number of items per page
final int page = 56; // int | Page number

try {
    final response = api.getCustomers(status, companyId, unitId, search, orderBy, orderDir, perPage, page);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->getCustomers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **bool**| Filter by customer status | [optional] 
 **companyId** | **int**| Filter by company ID | [optional] 
 **unitId** | **int**| Filter by unit ID | [optional] 
 **search** | **String**| Search term for customer name, phone, or email | [optional] 
 **orderBy** | **String**| Field to order by | [optional] [default to 'pk_customer_code']
 **orderDir** | **String**| Order direction | [optional] [default to 'desc']
 **perPage** | **int**| Number of items per page | [optional] [default to 15]
 **page** | **int**| Page number | [optional] [default to 1]

### Return type

[**GetCustomers200Response**](GetCustomers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomer**
> UpdateCustomer200Response updateCustomer(id, customerUpdate)

Update a customer

Updates an existing customer

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCustomersApi();
final int id = 56; // int | Customer ID
final CustomerUpdate customerUpdate = ; // CustomerUpdate | 

try {
    final response = api.updateCustomer(id, customerUpdate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CustomersApi->updateCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Customer ID | 
 **customerUpdate** | [**CustomerUpdate**](CustomerUpdate.md)|  | 

### Return type

[**UpdateCustomer200Response**](UpdateCustomer200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

