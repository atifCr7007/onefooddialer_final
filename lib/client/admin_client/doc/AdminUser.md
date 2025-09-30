# openapi.model.AdminUser

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** | Full name of the admin user | [optional] 
**email** | **String** | Email address (unique) | [optional] 
**role** | [**AdminRole**](AdminRole.md) |  | [optional] 
**status** | **String** | Current user status | [optional] 
**permissions** | **BuiltList&lt;String&gt;** | Direct permissions assigned to user | [optional] 
**lastLoginAt** | [**DateTime**](DateTime.md) | Last login timestamp | [optional] 
**loginCount** | **int** | Total number of logins | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdBy** | **String** | ID of user who created this account | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


