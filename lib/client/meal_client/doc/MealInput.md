# openapi.model.MealInput

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the meal | 
**description** | **String** | Description of the meal | [optional] 
**unitPrice** | **double** | Price of the meal | 
**items** | [**Map&lt;String,dynamic&gt;**](.md) | JSON object containing meal items | [optional] 
**category** | **String** | Menu type (breakfast, lunch, dinner) | [optional] 
**foodType** | **String** | Food type (veg, non-veg, beverage) | 
**productType** | **String** | Product type | [optional] 
**productCategory** | **String** | Product category | [optional] 
**threshold** | **int** | Kitchen capacity | [optional] 
**imagePath** | **String** | Path to the meal image | [optional] 
**screen** | **String** | Screen where the meal is displayed | [optional] 
**status** | **bool** | Whether the meal is active | [optional] 
**isSwappable** | **bool** | Whether the meal can be swapped | [optional] 
**swapWith** | **String** | Meals that can be swapped with this meal | [optional] 
**swapCharges** | **double** | Charges for swapping the meal | [optional] 
**mealPlans** | **String** | Meal plans that include this meal | [optional] 
**isCustom** | **bool** | Whether the meal is custom | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


