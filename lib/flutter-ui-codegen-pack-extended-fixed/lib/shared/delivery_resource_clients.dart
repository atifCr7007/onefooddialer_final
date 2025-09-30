import 'package:dio/dio.dart';
import 'package:delivery_client/delivery_client.dart';
import 'package:built_value/serializer.dart';

/// Paginator utility for handling paginated responses
class DeliveryPaginator {
  static List items(dynamic payload) {
    if (payload is Map) return (payload['data'] ?? payload['items'] ?? []) as List;
    if (payload is List) return payload;
    return [];
  }

  static int total(dynamic payload) {
    if (payload is Map) return (payload['meta']?['total'] ?? payload['total'] ?? 0) as int;
    return 0;
  }

  static int currentPage(dynamic payload) {
    if (payload is Map) return (payload['meta']?['current_page'] ?? payload['current_page'] ?? 1) as int;
    return 1;
  }

  static int lastPage(dynamic payload) {
    if (payload is Map) return (payload['meta']?['last_page'] ?? payload['last_page'] ?? 1) as int;
    return 1;
  }

  static int perPage(dynamic payload) {
    if (payload is Map) return (payload['meta']?['per_page'] ?? payload['per_page'] ?? 15) as int;
    return 15;
  }
}

/// Delivery Orders Resource Client
/// Handles delivery order operations
class DeliveryOrdersResourceClient {
  final Dio http;
  final OrdersApi api;

  DeliveryOrdersResourceClient(this.http, this.api);

  /// Get delivery orders with optional filters
  Future<dynamic> list({
    int? locationId,
    Date? date,
  }) async {
    try {
      final response = await api.getDeliveryOrders(
        locationId: locationId,
        date: date,
      );
      return response.data;
    } catch (e) {
      print('Error in list delivery orders: $e');
      rethrow;
    }
  }

  /// Search orders by search term
  Future<dynamic> search({
    required String search,
    int? locationId,
  }) async {
    try {
      final response = await api.searchOrders(
        search: search,
        locationId: locationId,
      );
      return response.data;
    } catch (e) {
      print('Error in search orders: $e');
      rethrow;
    }
  }

  /// Update delivery status of an order
  Future<dynamic> updateStatus(int orderId, Map<String, dynamic> statusData) async {
    try {
      final request = UpdateDeliveryStatusRequest((b) => b
        ..orderId = orderId
        ..orderCompleted = statusData['order_completed'] ?? statusData['orderCompleted'] ?? false
      );
      final response = await api.updateDeliveryStatus(
        orderId: orderId,
        updateDeliveryStatusRequest: request,
      );
      return response.data;
    } catch (e) {
      print('Error in update delivery status: $e');
      rethrow;
    }
  }
}

/// Delivery Locations Resource Client
/// Handles delivery location operations
class DeliveryLocationsResourceClient {
  final Dio http;
  final LocationsApi api;

  DeliveryLocationsResourceClient(this.http, this.api);

  /// Get all delivery locations
  Future<dynamic> list() async {
    try {
      final response = await api.getDeliveryLocations();
      return response.data;
    } catch (e) {
      print('Error in list delivery locations: $e');
      rethrow;
    }
  }
}

/// Third Party Delivery Resource Client
/// Handles third-party delivery service operations
class ThirdPartyDeliveryResourceClient {
  final Dio http;
  final ThirdPartyDeliveryApi api;

  ThirdPartyDeliveryResourceClient(this.http, this.api);

  /// Book a third-party delivery
  Future<dynamic> book(Map<String, dynamic> bookingData) async {
    try {
      final request = BookThirdPartyDeliveryRequest((b) => b
        ..orderId = bookingData['order_id'] ?? bookingData['orderId']
      );
      final response = await api.bookThirdPartyDelivery(
        bookThirdPartyDeliveryRequest: request,
      );
      return response.data;
    } catch (e) {
      print('Error in book third-party delivery: $e');
      rethrow;
    }
  }

  /// Get status of a third-party delivery
  Future<dynamic> getStatus(int orderId) async {
    try {
      final response = await api.getThirdPartyDeliveryStatus(
        orderId: orderId,
      );
      return response.data;
    } catch (e) {
      print('Error in get third-party delivery status: $e');
      rethrow;
    }
  }

  /// Cancel a third-party delivery
  Future<dynamic> cancel(int orderId) async {
    try {
      final response = await api.cancelThirdPartyDelivery(
        orderId: orderId,
      );
      return response.data;
    } catch (e) {
      print('Error in cancel third-party delivery: $e');
      rethrow;
    }
  }
}

/// Factory functions for creating delivery resource clients
DeliveryOrdersResourceClient createDeliveryOrdersClient(Dio dio, Serializers serializers) {
  final api = OrdersApi(dio, serializers);
  return DeliveryOrdersResourceClient(dio, api);
}

DeliveryLocationsResourceClient createDeliveryLocationsClient(Dio dio, Serializers serializers) {
  final api = LocationsApi(dio, serializers);
  return DeliveryLocationsResourceClient(dio, api);
}

ThirdPartyDeliveryResourceClient createThirdPartyDeliveryClient(Dio dio, Serializers serializers) {
  final api = ThirdPartyDeliveryApi(dio, serializers);
  return ThirdPartyDeliveryResourceClient(dio, api);
}

