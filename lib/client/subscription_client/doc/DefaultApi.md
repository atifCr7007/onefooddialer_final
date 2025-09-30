# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateSubscriptionPlan**](DefaultApi.md#activatesubscriptionplan) | **PUT** /subscription-plans/{id}/activate | Activate a subscription plan
[**cancelSubscription**](DefaultApi.md#cancelsubscription) | **PUT** /subscriptions/{id}/cancel | Cancel a subscription
[**createSubscription**](DefaultApi.md#createsubscription) | **POST** /subscriptions | Create a new subscription
[**createSubscriptionPlan**](DefaultApi.md#createsubscriptionplan) | **POST** /subscription-plans | Create a new subscription plan
[**deactivateSubscriptionPlan**](DefaultApi.md#deactivatesubscriptionplan) | **PUT** /subscription-plans/{id}/deactivate | Deactivate a subscription plan
[**deleteSubscription**](DefaultApi.md#deletesubscription) | **DELETE** /subscriptions/{id} | Delete a subscription
[**deleteSubscriptionPlan**](DefaultApi.md#deletesubscriptionplan) | **DELETE** /subscription-plans/{id} | Delete a subscription plan
[**getActiveCustomerSubscriptions**](DefaultApi.md#getactivecustomersubscriptions) | **GET** /subscriptions/customer/{customerId}/active | Get active customer subscriptions
[**getActiveSubscriptionPlans**](DefaultApi.md#getactivesubscriptionplans) | **GET** /subscription-plans/active | Get active subscription plans
[**getAllSubscriptionPlans**](DefaultApi.md#getallsubscriptionplans) | **GET** /subscription-plans | Get all subscription plans
[**getAllSubscriptions**](DefaultApi.md#getallsubscriptions) | **GET** /subscriptions | Get all subscriptions
[**getCustomerSubscriptions**](DefaultApi.md#getcustomersubscriptions) | **GET** /subscriptions/customer/{customerId} | Get customer subscriptions
[**getCustomerVisibleSubscriptionPlans**](DefaultApi.md#getcustomervisiblesubscriptionplans) | **GET** /subscription-plans/customer | Get subscription plans visible to customers
[**getSubscriptionById**](DefaultApi.md#getsubscriptionbyid) | **GET** /subscriptions/{id} | Get a subscription by ID
[**getSubscriptionLogs**](DefaultApi.md#getsubscriptionlogs) | **GET** /subscriptions/{id}/logs | Get subscription logs
[**getSubscriptionPlanById**](DefaultApi.md#getsubscriptionplanbyid) | **GET** /subscription-plans/{id} | Get a subscription plan by ID
[**getSubscriptionPlansByType**](DefaultApi.md#getsubscriptionplansbytype) | **GET** /subscription-plans/type/{type} | Get subscription plans by type
[**pauseSubscription**](DefaultApi.md#pausesubscription) | **PUT** /subscriptions/{id}/pause | Pause a subscription
[**processSubscriptionPayment**](DefaultApi.md#processsubscriptionpayment) | **POST** /subscriptions/{id}/payment | Process subscription payment
[**renewSubscription**](DefaultApi.md#renewsubscription) | **PUT** /subscriptions/{id}/renew | Renew a subscription
[**resumeSubscription**](DefaultApi.md#resumesubscription) | **PUT** /subscriptions/{id}/resume | Resume a subscription
[**updateSubscription**](DefaultApi.md#updatesubscription) | **PUT** /subscriptions/{id} | Update a subscription
[**updateSubscriptionPlan**](DefaultApi.md#updatesubscriptionplan) | **PUT** /subscription-plans/{id} | Update a subscription plan


# **activateSubscriptionPlan**
> CreateSubscriptionPlan201Response activateSubscriptionPlan(id)

Activate a subscription plan

Activates a subscription plan

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription plan

try {
    final response = api.activateSubscriptionPlan(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->activateSubscriptionPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription plan | 

### Return type

[**CreateSubscriptionPlan201Response**](CreateSubscriptionPlan201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelSubscription**
> CreateSubscription201Response cancelSubscription(id, cancelSubscriptionRequest)

Cancel a subscription

Cancels a subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription
final CancelSubscriptionRequest cancelSubscriptionRequest = ; // CancelSubscriptionRequest | 

try {
    final response = api.cancelSubscription(id, cancelSubscriptionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->cancelSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 
 **cancelSubscriptionRequest** | [**CancelSubscriptionRequest**](CancelSubscriptionRequest.md)|  | [optional] 

### Return type

[**CreateSubscription201Response**](CreateSubscription201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSubscription**
> CreateSubscription201Response createSubscription(subscriptionInput)

Create a new subscription

Creates a new subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final SubscriptionInput subscriptionInput = ; // SubscriptionInput | 

try {
    final response = api.createSubscription(subscriptionInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionInput** | [**SubscriptionInput**](SubscriptionInput.md)|  | 

### Return type

[**CreateSubscription201Response**](CreateSubscription201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSubscriptionPlan**
> CreateSubscriptionPlan201Response createSubscriptionPlan(subscriptionPlanInput)

Create a new subscription plan

Creates a new subscription plan

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final SubscriptionPlanInput subscriptionPlanInput = ; // SubscriptionPlanInput | 

try {
    final response = api.createSubscriptionPlan(subscriptionPlanInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createSubscriptionPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionPlanInput** | [**SubscriptionPlanInput**](SubscriptionPlanInput.md)|  | 

### Return type

[**CreateSubscriptionPlan201Response**](CreateSubscriptionPlan201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivateSubscriptionPlan**
> CreateSubscriptionPlan201Response deactivateSubscriptionPlan(id)

Deactivate a subscription plan

Deactivates a subscription plan

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription plan

try {
    final response = api.deactivateSubscriptionPlan(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deactivateSubscriptionPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription plan | 

### Return type

[**CreateSubscriptionPlan201Response**](CreateSubscriptionPlan201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscription**
> DeleteSubscriptionPlan200Response deleteSubscription(id)

Delete a subscription

Deletes a subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription

try {
    final response = api.deleteSubscription(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 

### Return type

[**DeleteSubscriptionPlan200Response**](DeleteSubscriptionPlan200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSubscriptionPlan**
> DeleteSubscriptionPlan200Response deleteSubscriptionPlan(id)

Delete a subscription plan

Deletes a subscription plan

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription plan

try {
    final response = api.deleteSubscriptionPlan(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteSubscriptionPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription plan | 

### Return type

[**DeleteSubscriptionPlan200Response**](DeleteSubscriptionPlan200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActiveCustomerSubscriptions**
> GetAllSubscriptions200Response getActiveCustomerSubscriptions(customerId)

Get active customer subscriptions

Returns active subscriptions for a customer

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int customerId = 56; // int | ID of the customer

try {
    final response = api.getActiveCustomerSubscriptions(customerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getActiveCustomerSubscriptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| ID of the customer | 

### Return type

[**GetAllSubscriptions200Response**](GetAllSubscriptions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getActiveSubscriptionPlans**
> GetAllSubscriptionPlans200Response getActiveSubscriptionPlans()

Get active subscription plans

Returns a list of active subscription plans

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getActiveSubscriptionPlans();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getActiveSubscriptionPlans: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAllSubscriptionPlans200Response**](GetAllSubscriptionPlans200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSubscriptionPlans**
> GetAllSubscriptionPlans200Response getAllSubscriptionPlans(status, type, showToCustomer, startDate, endDate)

Get all subscription plans

Returns a list of all subscription plans

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final bool status = true; // bool | Filter by plan status
final String type = type_example; // String | Filter by plan type
final String showToCustomer = showToCustomer_example; // String | Filter by visibility to customers
final Date startDate = 2013-10-20; // Date | Filter by start date
final Date endDate = 2013-10-20; // Date | Filter by end date

try {
    final response = api.getAllSubscriptionPlans(status, type, showToCustomer, startDate, endDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getAllSubscriptionPlans: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **bool**| Filter by plan status | [optional] 
 **type** | **String**| Filter by plan type | [optional] 
 **showToCustomer** | **String**| Filter by visibility to customers | [optional] 
 **startDate** | **Date**| Filter by start date | [optional] 
 **endDate** | **Date**| Filter by end date | [optional] 

### Return type

[**GetAllSubscriptionPlans200Response**](GetAllSubscriptionPlans200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSubscriptions**
> GetAllSubscriptions200Response getAllSubscriptions(status, customerId, planId, startDate, endDate)

Get all subscriptions

Returns a list of all subscriptions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String status = status_example; // String | Filter by subscription status
final int customerId = 56; // int | Filter by customer ID
final int planId = 56; // int | Filter by plan ID
final Date startDate = 2013-10-20; // Date | Filter by start date
final Date endDate = 2013-10-20; // Date | Filter by end date

try {
    final response = api.getAllSubscriptions(status, customerId, planId, startDate, endDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getAllSubscriptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| Filter by subscription status | [optional] 
 **customerId** | **int**| Filter by customer ID | [optional] 
 **planId** | **int**| Filter by plan ID | [optional] 
 **startDate** | **Date**| Filter by start date | [optional] 
 **endDate** | **Date**| Filter by end date | [optional] 

### Return type

[**GetAllSubscriptions200Response**](GetAllSubscriptions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerSubscriptions**
> GetAllSubscriptions200Response getCustomerSubscriptions(customerId, status, planId)

Get customer subscriptions

Returns subscriptions for a customer

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int customerId = 56; // int | ID of the customer
final String status = status_example; // String | Filter by subscription status
final int planId = 56; // int | Filter by plan ID

try {
    final response = api.getCustomerSubscriptions(customerId, status, planId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getCustomerSubscriptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **int**| ID of the customer | 
 **status** | **String**| Filter by subscription status | [optional] 
 **planId** | **int**| Filter by plan ID | [optional] 

### Return type

[**GetAllSubscriptions200Response**](GetAllSubscriptions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerVisibleSubscriptionPlans**
> GetAllSubscriptionPlans200Response getCustomerVisibleSubscriptionPlans()

Get subscription plans visible to customers

Returns a list of subscription plans visible to customers

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getCustomerVisibleSubscriptionPlans();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getCustomerVisibleSubscriptionPlans: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAllSubscriptionPlans200Response**](GetAllSubscriptionPlans200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionById**
> GetSubscriptionById200Response getSubscriptionById(id)

Get a subscription by ID

Returns a single subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription

try {
    final response = api.getSubscriptionById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getSubscriptionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 

### Return type

[**GetSubscriptionById200Response**](GetSubscriptionById200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionLogs**
> GetSubscriptionLogs200Response getSubscriptionLogs(id)

Get subscription logs

Returns logs for a subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription

try {
    final response = api.getSubscriptionLogs(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getSubscriptionLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 

### Return type

[**GetSubscriptionLogs200Response**](GetSubscriptionLogs200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionPlanById**
> GetSubscriptionPlanById200Response getSubscriptionPlanById(id)

Get a subscription plan by ID

Returns a single subscription plan

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription plan

try {
    final response = api.getSubscriptionPlanById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getSubscriptionPlanById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription plan | 

### Return type

[**GetSubscriptionPlanById200Response**](GetSubscriptionPlanById200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionPlansByType**
> GetAllSubscriptionPlans200Response getSubscriptionPlansByType(type)

Get subscription plans by type

Returns a list of subscription plans of a specific type

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String type = type_example; // String | Type of the subscription plans

try {
    final response = api.getSubscriptionPlansByType(type);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getSubscriptionPlansByType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the subscription plans | 

### Return type

[**GetAllSubscriptionPlans200Response**](GetAllSubscriptionPlans200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pauseSubscription**
> CreateSubscription201Response pauseSubscription(id, pauseSubscriptionRequest)

Pause a subscription

Pauses a subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription
final PauseSubscriptionRequest pauseSubscriptionRequest = ; // PauseSubscriptionRequest | 

try {
    final response = api.pauseSubscription(id, pauseSubscriptionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->pauseSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 
 **pauseSubscriptionRequest** | [**PauseSubscriptionRequest**](PauseSubscriptionRequest.md)|  | [optional] 

### Return type

[**CreateSubscription201Response**](CreateSubscription201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processSubscriptionPayment**
> CreateSubscription201Response processSubscriptionPayment(id, processSubscriptionPaymentRequest)

Process subscription payment

Processes a payment for a subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription
final ProcessSubscriptionPaymentRequest processSubscriptionPaymentRequest = ; // ProcessSubscriptionPaymentRequest | 

try {
    final response = api.processSubscriptionPayment(id, processSubscriptionPaymentRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->processSubscriptionPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 
 **processSubscriptionPaymentRequest** | [**ProcessSubscriptionPaymentRequest**](ProcessSubscriptionPaymentRequest.md)|  | 

### Return type

[**CreateSubscription201Response**](CreateSubscription201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renewSubscription**
> CreateSubscription201Response renewSubscription(id, renewSubscriptionRequest)

Renew a subscription

Renews a subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription
final RenewSubscriptionRequest renewSubscriptionRequest = ; // RenewSubscriptionRequest | 

try {
    final response = api.renewSubscription(id, renewSubscriptionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->renewSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 
 **renewSubscriptionRequest** | [**RenewSubscriptionRequest**](RenewSubscriptionRequest.md)|  | [optional] 

### Return type

[**CreateSubscription201Response**](CreateSubscription201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resumeSubscription**
> CreateSubscription201Response resumeSubscription(id)

Resume a subscription

Resumes a paused subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription

try {
    final response = api.resumeSubscription(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->resumeSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 

### Return type

[**CreateSubscription201Response**](CreateSubscription201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscription**
> CreateSubscription201Response updateSubscription(id, subscriptionUpdateInput)

Update a subscription

Updates an existing subscription

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription
final SubscriptionUpdateInput subscriptionUpdateInput = ; // SubscriptionUpdateInput | 

try {
    final response = api.updateSubscription(id, subscriptionUpdateInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateSubscription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription | 
 **subscriptionUpdateInput** | [**SubscriptionUpdateInput**](SubscriptionUpdateInput.md)|  | 

### Return type

[**CreateSubscription201Response**](CreateSubscription201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSubscriptionPlan**
> CreateSubscriptionPlan201Response updateSubscriptionPlan(id, subscriptionPlanUpdateInput)

Update a subscription plan

Updates an existing subscription plan

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the subscription plan
final SubscriptionPlanUpdateInput subscriptionPlanUpdateInput = ; // SubscriptionPlanUpdateInput | 

try {
    final response = api.updateSubscriptionPlan(id, subscriptionPlanUpdateInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateSubscriptionPlan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the subscription plan | 
 **subscriptionPlanUpdateInput** | [**SubscriptionPlanUpdateInput**](SubscriptionPlanUpdateInput.md)|  | 

### Return type

[**CreateSubscriptionPlan201Response**](CreateSubscriptionPlan201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

