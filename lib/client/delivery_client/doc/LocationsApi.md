# openapi.api.LocationsApi

## Load the API package
```dart
import 'package:delivery_client/api.dart';
```

All URIs are relative to *https://api.fooddialer.com/api/v2/delivery*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDeliveryLocations**](LocationsApi.md#getdeliverylocations) | **GET** /locations | Get delivery locations


# **getDeliveryLocations**
> GetDeliveryLocations200Response getDeliveryLocations()

Get delivery locations

Returns a list of delivery locations for the authenticated user

### Example
```dart
import 'package:delivery_client/api.dart';

final api = Openapi().getLocationsApi();

try {
    final response = api.getDeliveryLocations();
    print(response);
} catch on DioException (e) {
    print('Exception when calling LocationsApi->getDeliveryLocations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetDeliveryLocations200Response**](GetDeliveryLocations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

