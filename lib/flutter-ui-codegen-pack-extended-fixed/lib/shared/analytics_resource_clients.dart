import 'package:dio/dio.dart';
import 'package:analytics_client/openapi.dart';
import 'package:built_value/serializer.dart';

/// Analytics Resource Client
/// Handles all analytics API operations using the generated client
class AnalyticsResourceClient {
  final Dio http;
  final SalesAnalyticsApi salesApi;
  final FoodAnalyticsApi foodApi;
  final CustomerAnalyticsApi customerApi;
  final DefaultApi defaultApi;
  final HealthApi healthApi;

  AnalyticsResourceClient(this.http, this.salesApi, this.foodApi, this.customerApi, this.defaultApi, this.healthApi);

  // ========== Health Endpoints ==========

  /// Get health status
  Future<dynamic> getHealthStatus() async {
    try {
      final response = await healthApi.getHealthStatus();
      return response.data;
    } catch (e) {
      print('Error in get health status: $e');
      rethrow;
    }
  }

  // ========== Sales Analytics Endpoints ==========

  /// Get sales dashboard data
  Future<dynamic> getSalesDashboard() async {
    try {
      final response = await salesApi.getSalesDashboard();
      return response.data;
    } catch (e) {
      print('Error in get sales dashboard: $e');
      rethrow;
    }
  }

  /// Get years with order data
  Future<dynamic> getSalesYears() async {
    try {
      final response = await salesApi.getSalesYears();
      return response.data;
    } catch (e) {
      print('Error in get sales years: $e');
      rethrow;
    }
  }

  /// Get months with order data for a specific year
  Future<dynamic> getSalesMonths(int year) async {
    try {
      final response = await salesApi.getSalesMonths(year: year);
      return response.data;
    } catch (e) {
      print('Error in get sales months: $e');
      rethrow;
    }
  }

  /// Get payment methods
  Future<dynamic> getPaymentMethods() async {
    try {
      final response = await defaultApi.salesPaymentMethodsGet();
      return response.data;
    } catch (e) {
      print('Error in get payment methods: $e');
      rethrow;
    }
  }

  /// Get revenue for a specific year and month
  Future<dynamic> getRevenue(int year, int month) async {
    try {
      final response = await defaultApi.salesRevenueYearMonthGet(year: year, month: month);
      return response.data;
    } catch (e) {
      print('Error in get revenue: $e');
      rethrow;
    }
  }

  /// Get sales comparison
  Future<dynamic> getSalesComparison(int year, String type) async {
    try {
      final response = await defaultApi.salesComparisonYearTypeGet(year: year, type: type);
      return response.data;
    } catch (e) {
      print('Error in get sales comparison: $e');
      rethrow;
    }
  }

  /// Get average meal per customer
  Future<dynamic> getAvgMeal(int year, int month) async {
    try {
      final response = await defaultApi.salesAvgMealYearMonthGet(year: year, month: month);
      return response.data;
    } catch (e) {
      print('Error in get avg meal: $e');
      rethrow;
    }
  }

  // ========== Food Analytics Endpoints ==========

  /// Get food dashboard data
  Future<dynamic> getFoodDashboard() async {
    try {
      final response = await foodApi.getFoodDashboard();
      return response.data;
    } catch (e) {
      print('Error in get food dashboard: $e');
      rethrow;
    }
  }

  /// Get popular meals
  Future<dynamic> getPopularMeals(int year, int month) async {
    try {
      final response = await defaultApi.foodPopularYearMonthGet(year: year, month: month);
      return response.data;
    } catch (e) {
      print('Error in get popular meals: $e');
      rethrow;
    }
  }

  /// Get meal performance (best/worst)
  Future<dynamic> getMealPerformance(int year, int month, String type) async {
    try {
      final response = await defaultApi.foodPerformanceYearMonthTypeGet(year: year, month: month, type: type);
      return response.data;
    } catch (e) {
      print('Error in get meal performance: $e');
      rethrow;
    }
  }

  /// Get common extras
  Future<dynamic> getCommonExtras() async {
    try {
      final response = await defaultApi.foodExtrasGet();
      return response.data;
    } catch (e) {
      print('Error in get common extras: $e');
      rethrow;
    }
  }

  // ========== Customer Analytics Endpoints ==========

  /// Get customer dashboard data
  Future<dynamic> getCustomerDashboard() async {
    try {
      final response = await customerApi.getCustomerDashboard();
      return response.data;
    } catch (e) {
      print('Error in get customer dashboard: $e');
      rethrow;
    }
  }

  /// Get loyal customers
  Future<dynamic> getLoyalCustomers({int? limit}) async {
    try {
      final response = await defaultApi.customerLoyalGet(limit: limit);
      return response.data;
    } catch (e) {
      print('Error in get loyal customers: $e');
      rethrow;
    }
  }

  /// Get customer spending
  Future<dynamic> getCustomerSpending(String customerId) async {
    try {
      final response = await defaultApi.customerSpendingCustomerIdGet(customerId: customerId);
      return response.data;
    } catch (e) {
      print('Error in get customer spending: $e');
      rethrow;
    }
  }

  /// Get customer preferences
  Future<dynamic> getCustomerPreferences(String customerId, {int? limit}) async {
    try {
      final response = await defaultApi.customerPreferencesCustomerIdGet(customerId: customerId, limit: limit);
      return response.data;
    } catch (e) {
      print('Error in get customer preferences: $e');
      rethrow;
    }
  }
}

/// Factory function for creating analytics resource client
AnalyticsResourceClient createAnalyticsClient(Dio dio, Serializers serializers) {
  final salesApi = SalesAnalyticsApi(dio, serializers);
  final foodApi = FoodAnalyticsApi(dio, serializers);
  final customerApi = CustomerAnalyticsApi(dio, serializers);
  final defaultApi = DefaultApi(dio, serializers);
  final healthApi = HealthApi(dio, serializers);

  return AnalyticsResourceClient(dio, salesApi, foodApi, customerApi, defaultApi, healthApi);
}

