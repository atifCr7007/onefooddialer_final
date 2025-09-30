# openapi.api.PaymentsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/payment-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPaymentLogs**](PaymentsApi.md#getpaymentlogs) | **GET** /payments/logs | Get payment logs
[**getPaymentStatistics**](PaymentsApi.md#getpaymentstatistics) | **GET** /payments/statistics | Get payment statistics
[**getPaymentStatus**](PaymentsApi.md#getpaymentstatus) | **GET** /payments/{id} | Get payment status
[**getTransactionLogs**](PaymentsApi.md#gettransactionlogs) | **GET** /payments/{id}/logs | Get logs for a transaction
[**initiatePayment**](PaymentsApi.md#initiatepayment) | **POST** /payments | Initiate a payment
[**paymentCallback**](PaymentsApi.md#paymentcallback) | **POST** /payments/callback | Payment gateway callback
[**paymentWebhook**](PaymentsApi.md#paymentwebhook) | **POST** /payments/webhooks/{gateway} | Payment webhook
[**processPayment**](PaymentsApi.md#processpayment) | **POST** /payments/{id}/process | Process a payment
[**refundPayment**](PaymentsApi.md#refundpayment) | **POST** /payments/{id}/refund | Refund a payment


# **getPaymentLogs**
> LogsResponse getPaymentLogs(transactionId, gateway, event, status, startDate, endDate, limit)

Get payment logs

Get payment transaction logs

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final int transactionId = 56; // int | Filter by transaction ID
final String gateway = gateway_example; // String | Filter by gateway
final String event = event_example; // String | Filter by event
final String status = status_example; // String | Filter by status
final Date startDate = 2013-10-20; // Date | Start date for logs
final Date endDate = 2013-10-20; // Date | End date for logs
final int limit = 56; // int | Limit number of logs

try {
    final response = api.getPaymentLogs(transactionId, gateway, event, status, startDate, endDate, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->getPaymentLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionId** | **int**| Filter by transaction ID | [optional] 
 **gateway** | **String**| Filter by gateway | [optional] 
 **event** | **String**| Filter by event | [optional] 
 **status** | **String**| Filter by status | [optional] 
 **startDate** | **Date**| Start date for logs | [optional] 
 **endDate** | **Date**| End date for logs | [optional] 
 **limit** | **int**| Limit number of logs | [optional] [default to 50]

### Return type

[**LogsResponse**](LogsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentStatistics**
> StatisticsResponse getPaymentStatistics(startDate, endDate, gateway, status)

Get payment statistics

Get payment transaction statistics

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final Date startDate = 2013-10-20; // Date | Start date for statistics
final Date endDate = 2013-10-20; // Date | End date for statistics
final String gateway = gateway_example; // String | Filter by gateway
final String status = status_example; // String | Filter by status

try {
    final response = api.getPaymentStatistics(startDate, endDate, gateway, status);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->getPaymentStatistics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **Date**| Start date for statistics | [optional] 
 **endDate** | **Date**| End date for statistics | [optional] 
 **gateway** | **String**| Filter by gateway | [optional] 
 **status** | **String**| Filter by status | [optional] 

### Return type

[**StatisticsResponse**](StatisticsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentStatus**
> PaymentStatusResponse getPaymentStatus(id)

Get payment status

Get the status of a payment transaction

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final int id = 56; // int | Payment transaction ID

try {
    final response = api.getPaymentStatus(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->getPaymentStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Payment transaction ID | 

### Return type

[**PaymentStatusResponse**](PaymentStatusResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionLogs**
> LogsResponse getTransactionLogs(id)

Get logs for a transaction

Get logs for a specific transaction

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final int id = 56; // int | Payment transaction ID

try {
    final response = api.getTransactionLogs(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->getTransactionLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Payment transaction ID | 

### Return type

[**LogsResponse**](LogsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiatePayment**
> InitiatePaymentResponse initiatePayment(initiatePaymentRequest)

Initiate a payment

Create a new payment transaction

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final InitiatePaymentRequest initiatePaymentRequest = ; // InitiatePaymentRequest | 

try {
    final response = api.initiatePayment(initiatePaymentRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->initiatePayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **initiatePaymentRequest** | [**InitiatePaymentRequest**](InitiatePaymentRequest.md)|  | 

### Return type

[**InitiatePaymentResponse**](InitiatePaymentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentCallback**
> PaymentCallbackResponse paymentCallback(body)

Payment gateway callback

Handle callback from payment gateway

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final Map<String,dynamic> body = Object; // Map<String,dynamic> | 

try {
    final response = api.paymentCallback(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->paymentCallback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **Map&lt;String,dynamic&gt;**|  | 

### Return type

[**PaymentCallbackResponse**](PaymentCallbackResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentWebhook**
> WebhookResponse paymentWebhook(gateway, body)

Payment webhook

Handle payment gateway webhooks

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final String gateway = gateway_example; // String | Payment gateway name
final Map<String,dynamic> body = Object; // Map<String,dynamic> | 

try {
    final response = api.paymentWebhook(gateway, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->paymentWebhook: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gateway** | **String**| Payment gateway name | 
 **body** | **Map&lt;String,dynamic&gt;**|  | 

### Return type

[**WebhookResponse**](WebhookResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processPayment**
> ProcessPaymentResponse processPayment(id, processPaymentRequest)

Process a payment

Process a payment with a specific gateway

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final int id = 56; // int | Payment transaction ID
final ProcessPaymentRequest processPaymentRequest = ; // ProcessPaymentRequest | 

try {
    final response = api.processPayment(id, processPaymentRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->processPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Payment transaction ID | 
 **processPaymentRequest** | [**ProcessPaymentRequest**](ProcessPaymentRequest.md)|  | 

### Return type

[**ProcessPaymentResponse**](ProcessPaymentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refundPayment**
> RefundPaymentResponse refundPayment(id, refundPaymentRequest)

Refund a payment

Refund a completed payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getPaymentsApi();
final int id = 56; // int | Payment transaction ID
final RefundPaymentRequest refundPaymentRequest = ; // RefundPaymentRequest | 

try {
    final response = api.refundPayment(id, refundPaymentRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PaymentsApi->refundPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Payment transaction ID | 
 **refundPaymentRequest** | [**RefundPaymentRequest**](RefundPaymentRequest.md)|  | [optional] 

### Return type

[**RefundPaymentResponse**](RefundPaymentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

