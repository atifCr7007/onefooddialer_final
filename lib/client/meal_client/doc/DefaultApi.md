# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMeal**](DefaultApi.md#createmeal) | **POST** /meals | Create a new meal
[**deleteMeal**](DefaultApi.md#deletemeal) | **DELETE** /meals/{id} | Delete a meal
[**getAllMeals**](DefaultApi.md#getallmeals) | **GET** /meals | Get all meals
[**getMealById**](DefaultApi.md#getmealbyid) | **GET** /meals/{id} | Get a meal by ID
[**getMealsByMenu**](DefaultApi.md#getmealsbymenu) | **GET** /meals/menu/{menu} | Get meals by menu type
[**getVegetarianMeals**](DefaultApi.md#getvegetarianmeals) | **GET** /meals/type/vegetarian | Get vegetarian meals
[**updateMeal**](DefaultApi.md#updatemeal) | **PUT** /meals/{id} | Update a meal


# **createMeal**
> CreateMeal201Response createMeal(mealInput)

Create a new meal

Creates a new meal

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final MealInput mealInput = ; // MealInput | 

try {
    final response = api.createMeal(mealInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createMeal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mealInput** | [**MealInput**](MealInput.md)|  | 

### Return type

[**CreateMeal201Response**](CreateMeal201Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMeal**
> DeleteMeal200Response deleteMeal(id)

Delete a meal

Deletes an existing meal

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the meal to delete

try {
    final response = api.deleteMeal(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteMeal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the meal to delete | 

### Return type

[**DeleteMeal200Response**](DeleteMeal200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMeals**
> GetAllMeals200Response getAllMeals(menu, foodType, productCategory, active, search, sortBy, sortDirection)

Get all meals

Returns a list of all meals with optional filtering

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String menu = menu_example; // String | Filter by menu type
final String foodType = foodType_example; // String | Filter by food type
final String productCategory = productCategory_example; // String | Filter by product category
final bool active = true; // bool | Filter by active status
final String search = search_example; // String | Search term
final String sortBy = sortBy_example; // String | Field to sort by
final String sortDirection = sortDirection_example; // String | Sort direction

try {
    final response = api.getAllMeals(menu, foodType, productCategory, active, search, sortBy, sortDirection);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getAllMeals: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menu** | **String**| Filter by menu type | [optional] 
 **foodType** | **String**| Filter by food type | [optional] 
 **productCategory** | **String**| Filter by product category | [optional] 
 **active** | **bool**| Filter by active status | [optional] 
 **search** | **String**| Search term | [optional] 
 **sortBy** | **String**| Field to sort by | [optional] [default to 'name']
 **sortDirection** | **String**| Sort direction | [optional] [default to 'asc']

### Return type

[**GetAllMeals200Response**](GetAllMeals200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealById**
> GetMealById200Response getMealById(id)

Get a meal by ID

Returns a single meal

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the meal to return

try {
    final response = api.getMealById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getMealById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the meal to return | 

### Return type

[**GetMealById200Response**](GetMealById200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMealsByMenu**
> GetAllMeals200Response getMealsByMenu(menu)

Get meals by menu type

Returns meals for a specific menu type

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String menu = menu_example; // String | Menu type (breakfast, lunch, dinner)

try {
    final response = api.getMealsByMenu(menu);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getMealsByMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menu** | **String**| Menu type (breakfast, lunch, dinner) | 

### Return type

[**GetAllMeals200Response**](GetAllMeals200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVegetarianMeals**
> GetAllMeals200Response getVegetarianMeals()

Get vegetarian meals

Returns all vegetarian meals

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getVegetarianMeals();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getVegetarianMeals: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAllMeals200Response**](GetAllMeals200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMeal**
> UpdateMeal200Response updateMeal(id, mealInput)

Update a meal

Updates an existing meal

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final int id = 56; // int | ID of the meal to update
final MealInput mealInput = ; // MealInput | 

try {
    final response = api.updateMeal(id, mealInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateMeal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the meal to update | 
 **mealInput** | [**MealInput**](MealInput.md)|  | 

### Return type

[**UpdateMeal200Response**](UpdateMeal200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

