# openapi.model.StatisticsResponseData

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalTransactions** | **int** | Total number of transactions | [optional] 
**totalAmount** | **double** | Total transaction amount | [optional] 
**transactionsByStatus** | [**Map&lt;String,dynamic&gt;**](.md) | Transactions grouped by status | [optional] 
**transactionsByGateway** | [**Map&lt;String,dynamic&gt;**](.md) | Transactions grouped by gateway | [optional] 
**recentTransactions** | [**BuiltList&lt;TransactionSummary&gt;**](TransactionSummary.md) | Recent transactions | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


