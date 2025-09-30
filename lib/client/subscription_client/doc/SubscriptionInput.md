# openapi.model.SubscriptionInput

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | Company ID | [optional] 
**unitId** | **int** | Unit ID | [optional] 
**customerId** | **int** | Customer ID | 
**planId** | **int** | Subscription plan ID | 
**startDate** | [**Date**](Date.md) | Start date of the subscription | 
**endDate** | [**Date**](Date.md) | End date of the subscription | 
**amount** | **double** | Amount of the subscription | 
**discount** | **double** | Discount amount | [optional] 
**paymentMethod** | **String** | Payment method | [optional] 
**paymentStatus** | **String** | Payment status | [optional] 
**transactionId** | **String** | Transaction ID | [optional] 
**autoRenew** | **bool** | Whether the subscription auto-renews | [optional] 
**notes** | **String** | Notes | [optional] 
**items** | [**BuiltList&lt;SubscriptionItemInput&gt;**](SubscriptionItemInput.md) | Subscription items | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


