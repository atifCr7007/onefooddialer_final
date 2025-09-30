# openapi.model.AdminRole

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** | Role name (unique) | [optional] 
**displayName** | **String** | Human-readable role name | [optional] 
**description** | **String** |  | [optional] 
**permissions** | [**BuiltList&lt;AdminPermission&gt;**](AdminPermission.md) |  | [optional] 
**isSystem** | **bool** | Whether this is a system-defined role | [optional] 
**userCount** | **int** | Number of users with this role | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


