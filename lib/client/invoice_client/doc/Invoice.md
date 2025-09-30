# openapi.model.Invoice

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**invoiceNumber** | **String** |  | 
**customerId** | **int** |  | 
**orderId** | **int** |  | [optional] 
**subscriptionId** | **int** |  | [optional] 
**customerName** | **String** |  | 
**customerEmail** | **String** |  | 
**customerPhone** | **String** |  | [optional] 
**billingAddress** | [**Address**](Address.md) |  | [optional] 
**shippingAddress** | [**Address**](Address.md) |  | [optional] 
**subtotal** | **double** |  | 
**taxAmount** | **double** |  | 
**discountAmount** | **double** |  | 
**totalAmount** | **double** |  | 
**currency** | **String** |  | 
**status** | **String** |  | 
**type** | **String** |  | 
**dueDate** | [**Date**](Date.md) |  | 
**paidAt** | [**DateTime**](DateTime.md) |  | [optional] 
**paymentMethod** | **String** |  | [optional] 
**paymentReference** | **String** |  | [optional] 
**notes** | **String** |  | [optional] 
**metadata** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**companyId** | **int** |  | 
**unitId** | **int** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**items** | [**BuiltList&lt;InvoiceItem&gt;**](InvoiceItem.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


