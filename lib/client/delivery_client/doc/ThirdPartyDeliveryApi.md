# openapi.api.ThirdPartyDeliveryApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.fooddialer.com/api/v2/delivery*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bookThirdPartyDelivery**](ThirdPartyDeliveryApi.md#bookthirdpartydelivery) | **POST** /third-party/book | Book third-party delivery
[**cancelThirdPartyDelivery**](ThirdPartyDeliveryApi.md#cancelthirdpartydelivery) | **POST** /third-party/{orderId}/cancel | Cancel third-party delivery
[**getThirdPartyDeliveryStatus**](ThirdPartyDeliveryApi.md#getthirdpartydeliverystatus) | **GET** /third-party/{orderId}/status | Get third-party delivery status


# **bookThirdPartyDelivery**
> BookThirdPartyDelivery200Response bookThirdPartyDelivery(bookThirdPartyDeliveryRequest)

Book third-party delivery

Book a delivery with a third-party delivery service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getThirdPartyDeliveryApi();
final BookThirdPartyDeliveryRequest bookThirdPartyDeliveryRequest = ; // BookThirdPartyDeliveryRequest | 

try {
    final response = api.bookThirdPartyDelivery(bookThirdPartyDeliveryRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ThirdPartyDeliveryApi->bookThirdPartyDelivery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookThirdPartyDeliveryRequest** | [**BookThirdPartyDeliveryRequest**](BookThirdPartyDeliveryRequest.md)|  | 

### Return type

[**BookThirdPartyDelivery200Response**](BookThirdPartyDelivery200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelThirdPartyDelivery**
> CancelThirdPartyDelivery200Response cancelThirdPartyDelivery(orderId)

Cancel third-party delivery

Cancel a delivery with a third-party delivery service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getThirdPartyDeliveryApi();
final int orderId = 56; // int | ID of the order to cancel delivery for

try {
    final response = api.cancelThirdPartyDelivery(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ThirdPartyDeliveryApi->cancelThirdPartyDelivery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**| ID of the order to cancel delivery for | 

### Return type

[**CancelThirdPartyDelivery200Response**](CancelThirdPartyDelivery200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThirdPartyDeliveryStatus**
> GetThirdPartyDeliveryStatus200Response getThirdPartyDeliveryStatus(orderId)

Get third-party delivery status

Get the status of a delivery from a third-party delivery service

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getThirdPartyDeliveryApi();
final int orderId = 56; // int | ID of the order to get delivery status for

try {
    final response = api.getThirdPartyDeliveryStatus(orderId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ThirdPartyDeliveryApi->getThirdPartyDeliveryStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderId** | **int**| ID of the order to get delivery status for | 

### Return type

[**GetThirdPartyDeliveryStatus200Response**](GetThirdPartyDeliveryStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

