# openapi.model.PaymentMethod

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Payment method ID | [optional] 
**customerId** | **int** | Customer ID | [optional] 
**gateway** | **String** | Payment gateway | [optional] 
**token** | **String** | Payment method token | [optional] 
**type** | **String** | Payment method type | [optional] 
**lastFour** | **String** | Last four digits of card/account | [optional] 
**expiryMonth** | **String** | Card expiry month | [optional] 
**expiryYear** | **String** | Card expiry year | [optional] 
**cardHolderName** | **String** | Card holder name | [optional] 
**cardBrand** | **String** | Card brand | [optional] 
**isDefault** | **bool** | Whether this is the default payment method | [optional] 
**isActive** | **bool** | Whether this payment method is active | [optional] 
**metadata** | [**Map&lt;String,dynamic&gt;**](.md) | Additional metadata | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | [optional] 
**maskedCardNumber** | **String** | Masked card number | [optional] 
**expiryDate** | **String** | Expiry date in MM/YY format | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


