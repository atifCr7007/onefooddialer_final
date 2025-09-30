# openapi.model.OrderItem

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**orderId** | **String** |  | [optional] 
**menuItemId** | **String** |  | [optional] 
**name** | **String** | Item name at time of order | [optional] 
**description** | **String** | Item description at time of order | [optional] 
**quantity** | **int** | Quantity ordered | [optional] 
**unitPrice** | **double** | Price per unit at time of order | [optional] 
**totalPrice** | **double** | Total price for this item (quantity × unit price) | [optional] 
**customizations** | [**BuiltList&lt;ItemCustomization&gt;**](ItemCustomization.md) | Customizations applied to this item | [optional] 
**specialInstructions** | **String** | Special instructions for this item | [optional] 
**status** | **String** | Status of this specific item | [optional] 
**allergens** | **BuiltList&lt;String&gt;** | Allergens present in this item | [optional] 
**nutritionalInfo** | [**NutritionalInfo**](NutritionalInfo.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


