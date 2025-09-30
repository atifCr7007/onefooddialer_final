# openapi.model.SubscriptionPlanInput

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**companyId** | **int** | Company ID | [optional] 
**unitId** | **int** | Unit ID | [optional] 
**planName** | **String** | Name of the subscription plan | 
**planQuantity** | **int** | Number of days/weeks/months | 
**planPeriod** | **String** | Period type (day, week, month, year) | 
**planType** | **String** | Type of the subscription plan | [optional] 
**planStartDate** | [**Date**](Date.md) | Start date of the subscription plan | 
**planEndDate** | [**Date**](Date.md) | End date of the subscription plan | 
**fkPromoCode** | **int** | Promo code ID | [optional] 
**planStatus** | **bool** | Status of the subscription plan | [optional] 
**showToCustomer** | **String** | Visibility to customers | [optional] 
**fkKitchenCode** | **int** | Kitchen code ID | [optional] 
**price** | **double** | Price of the subscription plan | 
**isRecurring** | **bool** | Whether the subscription plan is recurring | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


