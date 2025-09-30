# openapi.model.Subscription

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Unique identifier for the subscription | [optional] 
**companyId** | **int** | Company ID | [optional] 
**unitId** | **int** | Unit ID | [optional] 
**customerId** | **int** | Customer ID | [optional] 
**planId** | **int** | Subscription plan ID | [optional] 
**subscriptionNo** | **String** | Unique subscription number | [optional] 
**startDate** | [**Date**](Date.md) | Start date of the subscription | [optional] 
**endDate** | [**Date**](Date.md) | End date of the subscription | [optional] 
**status** | **String** | Status of the subscription | [optional] 
**amount** | **double** | Amount of the subscription | [optional] 
**discount** | **double** | Discount amount | [optional] 
**total** | **double** | Total amount | [optional] 
**paymentMethod** | **String** | Payment method | [optional] 
**paymentStatus** | **String** | Payment status | [optional] 
**transactionId** | **String** | Transaction ID | [optional] 
**pauseHistory** | [**BuiltList&lt;SubscriptionPauseHistoryInner&gt;**](SubscriptionPauseHistoryInner.md) | Pause history | [optional] 
**nextBillingDate** | [**Date**](Date.md) | Next billing date | [optional] 
**autoRenew** | **bool** | Whether the subscription auto-renews | [optional] 
**notes** | **String** | Notes | [optional] 
**customer** | [**Customer**](Customer.md) |  | [optional] 
**plan** | [**SubscriptionPlan**](SubscriptionPlan.md) |  | [optional] 
**items** | [**BuiltList&lt;SubscriptionItem&gt;**](SubscriptionItem.md) | Subscription items | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


