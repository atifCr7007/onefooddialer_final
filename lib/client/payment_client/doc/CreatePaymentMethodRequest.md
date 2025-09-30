# openapi.model.CreatePaymentMethodRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **int** | Customer ID | 
**gateway** | **String** | Payment gateway | 
**token** | **String** | Payment method token | 
**type** | **String** | Payment method type | 
**lastFour** | **String** | Last four digits of card/account | [optional] 
**expiryMonth** | **String** | Card expiry month | [optional] 
**expiryYear** | **String** | Card expiry year | [optional] 
**cardHolderName** | **String** | Card holder name | [optional] 
**cardBrand** | **String** | Card brand | [optional] 
**isDefault** | **bool** | Whether this is the default payment method | [optional] 
**metadata** | [**Map&lt;String,dynamic&gt;**](.md) | Additional metadata | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


