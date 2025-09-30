# openapi.api.StatisticsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/invoice*

Method | HTTP request | Description
------------- | ------------- | -------------
[**invoicesStatisticsGet**](StatisticsApi.md#invoicesstatisticsget) | **GET** /invoices/statistics | Get invoice statistics


# **invoicesStatisticsGet**
> InvoicesStatisticsGet200Response invoicesStatisticsGet(companyId, dateFrom, dateTo)

Get invoice statistics

Retrieve invoice statistics and metrics

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getStatisticsApi();
final int companyId = 56; // int | Filter by company ID
final Date dateFrom = 2013-10-20; // Date | Statistics from this date
final Date dateTo = 2013-10-20; // Date | Statistics to this date

try {
    final response = api.invoicesStatisticsGet(companyId, dateFrom, dateTo);
    print(response);
} catch on DioException (e) {
    print('Exception when calling StatisticsApi->invoicesStatisticsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **int**| Filter by company ID | [optional] 
 **dateFrom** | **Date**| Statistics from this date | [optional] 
 **dateTo** | **Date**| Statistics to this date | [optional] 

### Return type

[**InvoicesStatisticsGet200Response**](InvoicesStatisticsGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

