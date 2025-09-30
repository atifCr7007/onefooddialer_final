# openapi.model.SystemHealth

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Overall system health status | [optional] 
**uptime** | **int** | System uptime in seconds | [optional] 
**cpu** | [**SystemHealthCpu**](SystemHealthCpu.md) |  | [optional] 
**memory** | [**SystemHealthMemory**](SystemHealthMemory.md) |  | [optional] 
**disk** | [**SystemHealthDisk**](SystemHealthDisk.md) |  | [optional] 
**services** | [**BuiltList&lt;SystemHealthServicesInner&gt;**](SystemHealthServicesInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


