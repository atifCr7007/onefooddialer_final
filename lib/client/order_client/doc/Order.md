# openapi.model.Order

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**orderNumber** | **String** | Human-readable order number | [optional] 
**customerId** | **String** |  | [optional] 
**restaurantId** | **String** |  | [optional] 
**status** | **String** | Current order status | [optional] 
**paymentStatus** | **String** | Payment status | [optional] 
**deliveryType** | **String** | Type of order fulfillment | [optional] 
**priority** | **String** | Order priority level | [optional] 
**items** | [**BuiltList&lt;OrderItem&gt;**](OrderItem.md) | List of items in the order | [optional] 
**subtotal** | **double** | Subtotal before taxes and fees | [optional] 
**taxAmount** | **double** | Tax amount | [optional] 
**deliveryFee** | **double** | Delivery fee | [optional] 
**serviceFee** | **double** | Service fee | [optional] 
**discountAmount** | **double** | Total discount applied | [optional] 
**totalAmount** | **double** | Final total amount | [optional] 
**currency** | **String** | Currency code | [optional] 
**deliveryAddress** | [**DeliveryAddress**](DeliveryAddress.md) |  | [optional] 
**deliveryInstructions** | **String** | Special delivery instructions | [optional] 
**estimatedDeliveryTime** | [**DateTime**](DateTime.md) | Estimated delivery time | [optional] 
**actualDeliveryTime** | [**DateTime**](DateTime.md) | Actual delivery time | [optional] 
**preparationTime** | **int** | Estimated preparation time in minutes | [optional] 
**customerNotes** | **String** | Customer notes for the order | [optional] 
**restaurantNotes** | **String** | Restaurant notes about the order | [optional] 
**couponCode** | **String** | Applied coupon code | [optional] 
**loyaltyPointsUsed** | **int** | Loyalty points used for discount | [optional] 
**loyaltyPointsEarned** | **int** | Loyalty points earned from this order | [optional] 
**paymentMethod** | **String** | Payment method used | [optional] 
**paymentReference** | **String** | Payment transaction reference | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**confirmedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**deliveredAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


