# openapi.api.DashboardApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.onefooddialer.com/v2/admin-service-v12*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dashboardGet**](DashboardApi.md#dashboardget) | **GET** /dashboard | Get admin dashboard overview
[**dashboardOverviewGet**](DashboardApi.md#dashboardoverviewget) | **GET** /dashboard/overview | Get dashboard overview metrics
[**dashboardQuickStatsGet**](DashboardApi.md#dashboardquickstatsget) | **GET** /dashboard/quick-stats | Get quick statistics
[**dashboardSystemHealthGet**](DashboardApi.md#dashboardsystemhealthget) | **GET** /dashboard/system-health | Get system health status


# **dashboardGet**
> DashboardResponse dashboardGet(timeRange)

Get admin dashboard overview

Retrieve comprehensive dashboard data including metrics, charts, and system health

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDashboardApi();
final String timeRange = timeRange_example; // String | Time range for dashboard metrics

try {
    final response = api.dashboardGet(timeRange);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeRange** | **String**| Time range for dashboard metrics | [optional] [default to '7d']

### Return type

[**DashboardResponse**](DashboardResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardOverviewGet**
> OverviewMetrics dashboardOverviewGet()

Get dashboard overview metrics

Get high-level overview metrics for the dashboard

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDashboardApi();

try {
    final response = api.dashboardOverviewGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardOverviewGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OverviewMetrics**](OverviewMetrics.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardQuickStatsGet**
> QuickStats dashboardQuickStatsGet()

Get quick statistics

Get real-time quick statistics for dashboard

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDashboardApi();

try {
    final response = api.dashboardQuickStatsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardQuickStatsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QuickStats**](QuickStats.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardSystemHealthGet**
> SystemHealth dashboardSystemHealthGet()

Get system health status

Get current system health and performance metrics

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDashboardApi();

try {
    final response = api.dashboardSystemHealthGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardSystemHealthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemHealth**](SystemHealth.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

