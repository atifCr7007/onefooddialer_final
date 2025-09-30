# openapi.model.CreateInvoiceRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerId** | **int** |  | 
**orderId** | **int** |  | [optional] 
**subscriptionId** | **int** |  | [optional] 
**customerName** | **String** |  | 
**customerEmail** | **String** |  | 
**customerPhone** | **String** |  | [optional] 
**billingAddress** | [**Address**](Address.md) |  | 
**shippingAddress** | [**Address**](Address.md) |  | [optional] 
**dueDate** | [**Date**](Date.md) |  | 
**currency** | **String** |  | [default to 'INR']
**type** | **String** |  | 
**notes** | **String** |  | [optional] 
**metadata** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**companyId** | **int** |  | [optional] 
**unitId** | **int** |  | [optional] 
**items** | [**BuiltList&lt;CreateInvoiceItemRequest&gt;**](CreateInvoiceItemRequest.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


