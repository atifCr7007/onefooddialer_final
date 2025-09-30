# openapi.model.Order

## Load the model package
```dart
import 'package:delivery_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Order ID | [optional] 
**orderNo** | **String** | Order number | [optional] 
**customerCode** | **int** | Customer code | [optional] 
**customerName** | **String** | Customer name | [optional] 
**customerPhone** | **String** | Customer phone number | [optional] 
**shipAddress** | **String** | Shipping address | [optional] 
**orderDate** | [**Date**](Date.md) | Order date | [optional] 
**deliveryStatus** | **String** | Delivery status | [optional] 
**orderStatus** | **String** | Order status | [optional] 
**deliveryPerson** | **int** | Delivery person ID | [optional] 
**locationCode** | **int** | Location code | [optional] 
**location** | [**DeliveryLocation**](DeliveryLocation.md) |  | [optional] 
**amount** | **double** | Order amount | [optional] 
**tax** | **double** | Tax amount | [optional] 
**deliveryCharges** | **double** | Delivery charges | [optional] 
**appliedDiscount** | **double** | Applied discount | [optional] 
**total** | **double** | Total amount | [optional] 
**paymentMode** | **String** | Payment mode | [optional] 
**amountPaid** | **bool** | Whether the amount is paid | [optional] 
**fkKitchenCode** | **String** | Kitchen code | [optional] 
**orderMenu** | **String** | Order menu type | [optional] 
**deliveryTime** | **String** | Delivery time | [optional] 
**deliveryEndTime** | **String** | Delivery end time | [optional] 
**deliveryType** | **String** | Delivery type | [optional] 
**tpDeliveryOrderId** | **String** | Third-party delivery order ID | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


