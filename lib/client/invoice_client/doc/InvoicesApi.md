# openapi.api.InvoicesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/invoice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invoicesGet**](InvoicesApi.md#invoicesget) | **GET** /invoices | List invoices
[**invoicesIdDelete**](InvoicesApi.md#invoicesiddelete) | **DELETE** /invoices/{id} | Delete invoice
[**invoicesIdGet**](InvoicesApi.md#invoicesidget) | **GET** /invoices/{id} | Get invoice
[**invoicesIdMarkPaidPost**](InvoicesApi.md#invoicesidmarkpaidpost) | **POST** /invoices/{id}/mark-paid | Mark invoice as paid
[**invoicesIdPdfGet**](InvoicesApi.md#invoicesidpdfget) | **GET** /invoices/{id}/pdf | Download invoice PDF
[**invoicesIdPut**](InvoicesApi.md#invoicesidput) | **PUT** /invoices/{id} | Update invoice
[**invoicesPost**](InvoicesApi.md#invoicespost) | **POST** /invoices | Create invoice


# **invoicesGet**
> InvoicesGet200Response invoicesGet(customerId, status, type, companyId, dateFrom, dateTo, perPage)

List invoices

Retrieve a paginated list of invoices with optional filtering

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getInvoicesApi();
final int customerId = 56; // int | Filter by customer ID
final String status = status_example; // String | Filter by invoice status
final String type = type_example; // String | Filter by invoice type
final int companyId = 56; // int | Filter by company ID
final Date dateFrom = 2013-10-20; // Date | Filter invoices from this date
final Date dateTo = 2013-10-20; // Date | Filter invoices to this date
final int perPage = 56; // int | Number of items per page

try {
    final response = api.invoicesGet(customerId, status, type, companyId, dateFrom, dateTo, perPage);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvoicesApi->invoicesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| Filter by customer ID | [optional] 
 **status** | **String**| Filter by invoice status | [optional] 
 **type** | **String**| Filter by invoice type | [optional] 
 **companyId** | **int**| Filter by company ID | [optional] 
 **dateFrom** | **Date**| Filter invoices from this date | [optional] 
 **dateTo** | **Date**| Filter invoices to this date | [optional] 
 **perPage** | **int**| Number of items per page | [optional] [default to 15]

### Return type

[**InvoicesGet200Response**](InvoicesGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicesIdDelete**
> InvoicesIdDelete200Response invoicesIdDelete(id)

Delete invoice

Soft delete an invoice

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getInvoicesApi();
final int id = 56; // int | Invoice ID

try {
    final response = api.invoicesIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvoicesApi->invoicesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Invoice ID | 

### Return type

[**InvoicesIdDelete200Response**](InvoicesIdDelete200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicesIdGet**
> InvoicesIdGet200Response invoicesIdGet(id)

Get invoice

Retrieve a specific invoice by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getInvoicesApi();
final int id = 56; // int | Invoice ID

try {
    final response = api.invoicesIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvoicesApi->invoicesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Invoice ID | 

### Return type

[**InvoicesIdGet200Response**](InvoicesIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicesIdMarkPaidPost**
> InvoicesIdMarkPaidPost200Response invoicesIdMarkPaidPost(id, invoicesIdMarkPaidPostRequest)

Mark invoice as paid

Mark an invoice as paid with payment details

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getInvoicesApi();
final int id = 56; // int | Invoice ID
final InvoicesIdMarkPaidPostRequest invoicesIdMarkPaidPostRequest = ; // InvoicesIdMarkPaidPostRequest | 

try {
    final response = api.invoicesIdMarkPaidPost(id, invoicesIdMarkPaidPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvoicesApi->invoicesIdMarkPaidPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Invoice ID | 
 **invoicesIdMarkPaidPostRequest** | [**InvoicesIdMarkPaidPostRequest**](InvoicesIdMarkPaidPostRequest.md)|  | [optional] 

### Return type

[**InvoicesIdMarkPaidPost200Response**](InvoicesIdMarkPaidPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicesIdPdfGet**
> Uint8List invoicesIdPdfGet(id, download)

Download invoice PDF

Generate and download invoice as PDF

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getInvoicesApi();
final int id = 56; // int | Invoice ID
final bool download = true; // bool | Force download instead of inline display

try {
    final response = api.invoicesIdPdfGet(id, download);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvoicesApi->invoicesIdPdfGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Invoice ID | 
 **download** | **bool**| Force download instead of inline display | [optional] [default to true]

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicesIdPut**
> InvoicesIdPut200Response invoicesIdPut(id, updateInvoiceRequest)

Update invoice

Update invoice status and related information

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getInvoicesApi();
final int id = 56; // int | Invoice ID
final UpdateInvoiceRequest updateInvoiceRequest = ; // UpdateInvoiceRequest | 

try {
    final response = api.invoicesIdPut(id, updateInvoiceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvoicesApi->invoicesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Invoice ID | 
 **updateInvoiceRequest** | [**UpdateInvoiceRequest**](UpdateInvoiceRequest.md)|  | 

### Return type

[**InvoicesIdPut200Response**](InvoicesIdPut200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **invoicesPost**
> InvoicesPost201Response invoicesPost(createInvoiceRequest)

Create invoice

Create a new invoice with items

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getInvoicesApi();
final CreateInvoiceRequest createInvoiceRequest = ; // CreateInvoiceRequest | 

try {
    final response = api.invoicesPost(createInvoiceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvoicesApi->invoicesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInvoiceRequest** | [**CreateInvoiceRequest**](CreateInvoiceRequest.md)|  | 

### Return type

[**InvoicesPost201Response**](InvoicesPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

