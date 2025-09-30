# openapi.model.InitiatePaymentRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **int** | Customer ID | 
**customerEmail** | **String** | Customer email | [optional] 
**customerPhone** | **String** | Customer phone number | [optional] 
**customerName** | **String** | Customer name | [optional] 
**amount** | **double** | Payment amount | 
**transactionCharges** | **double** | Additional transaction charges | [optional] 
**walletAmount** | **double** | Amount to be paid from wallet | [optional] 
**orderId** | **String** | Related order ID | [optional] 
**referer** | **String** | Source platform (website/mobile/desktop) | [optional] 
**successUrl** | **String** | URL to redirect on successful payment | 
**failureUrl** | **String** | URL to redirect on failed payment | 
**context** | **String** | Payment context (order/subscription) | [optional] 
**recurring** | **bool** | Whether this is a recurring payment | [optional] 
**discount** | **double** | Discount amount | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


