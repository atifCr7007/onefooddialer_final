# openapi.model.PaymentLog

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Log ID | [optional] 
**transactionId** | **int** | Payment transaction ID | [optional] 
**gateway** | **String** | Payment gateway | [optional] 
**event** | **String** | Event type | [optional] 
**status** | **String** | Event status | [optional] 
**requestData** | [**Map&lt;String,dynamic&gt;**](.md) | Request data | [optional] 
**responseData** | [**Map&lt;String,dynamic&gt;**](.md) | Response data | [optional] 
**ipAddress** | **String** | IP address | [optional] 
**userAgent** | **String** | User agent | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


