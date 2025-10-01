import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:order_client/openapi.dart';

/// Order Resource Client
/// Handles all order API operations using the generated client
class OrderResourceClient {
  final Dio http;
  final OrderManagementApi orderManagementApi;
  final OrderItemsApi orderItemsApi;
  final OrderTrackingApi orderTrackingApi;

  OrderResourceClient(
    this.http,
    this.orderManagementApi,
    this.orderItemsApi,
    this.orderTrackingApi,
  );

  // ========== Order Management Endpoints ==========

  /// List orders with filtering and pagination
  Future<dynamic> listOrders({
    int? page = 1,
    int? limit = 20,
    String? search,
    String? status,
    String? customerId,
    String? restaurantId,
    String? paymentStatus,
    String? deliveryType,
    Date? dateFrom,
    Date? dateTo,
    String? priority,
  }) async {
    try {
      final response = await orderManagementApi.ordersGet(
        page: page,
        limit: limit,
        search: search,
        status: status,
        customerId: customerId,
        restaurantId: restaurantId,
        paymentStatus: paymentStatus,
        deliveryType: deliveryType,
        dateFrom: dateFrom,
        dateTo: dateTo,
        priority: priority,
      );
      return response.data;
    } catch (e) {
      print('Error in list orders: $e');
      rethrow;
    }
  }

  /// Get order by ID
  Future<dynamic> getOrder(String orderId) async {
    try {
      final response = await orderManagementApi.ordersOrderIdGet(orderId: orderId);
      return response.data;
    } catch (e) {
      print('Error in get order: $e');
      rethrow;
    }
  }

  /// Create new order
  Future<dynamic> createOrder(RequestOptions orderData) async {
    try {
      final response = await orderManagementApi.ordersPost(body: orderData);
      return response.data;
    } catch (e) {
      print('Error in create order: $e');
      rethrow;
    }
  }

  /// Update order
  Future<dynamic> updateOrder(String orderId, RequestOptions orderData) async {
    try {
      final response = await orderManagementApi.ordersOrderIdPut(
        orderId: orderId,
        body: orderData,
      );
      return response.data;
    } catch (e) {
      print('Error in update order: $e');
      rethrow;
    }
  }

  /// Cancel order
  Future<void> cancelOrder(String orderId, OrdersOrderIdDeleteRequest cancelRequest) async {
    try {
      await orderManagementApi.ordersOrderIdDelete(
        orderId: orderId,
        ordersOrderIdDeleteRequest: cancelRequest,
      );
    } catch (e) {
      print('Error in cancel order: $e');
      rethrow;
    }
  }

  // ========== Order Items Endpoints ==========

  /// Get order items
  Future<dynamic> getOrderItems(String orderId) async {
    try {
      final response = await orderItemsApi.ordersOrderIdItemsGet(orderId: orderId);
      return response.data;
    } catch (e) {
      print('Error in get order items: $e');
      rethrow;
    }
  }

  /// Add item to order
  Future<dynamic> addOrderItem(String orderId, RequestOptions itemData) async {
    try {
      final response = await orderItemsApi.ordersOrderIdItemsPost(
        orderId: orderId,
        body: itemData,
      );
      return response.data;
    } catch (e) {
      print('Error in add order item: $e');
      rethrow;
    }
  }

  /// Update order item
  Future<dynamic> updateOrderItem(String orderId, String itemId, OrderItem itemData) async {
    try {
      final response = await orderItemsApi.ordersOrderIdItemsItemIdPut(
        orderId: orderId,
        itemId: itemId,
        body: itemData,
      );
      return response.data;
    } catch (e) {
      print('Error in update order item: $e');
      rethrow;
    }
  }

  /// Remove item from order
  Future<void> removeOrderItem(String orderId, String itemId) async {
    try {
      await orderItemsApi.ordersOrderIdItemsItemIdDelete(
        orderId: orderId,
        itemId: itemId,
      );
    } catch (e) {
      print('Error in remove order item: $e');
      rethrow;
    }
  }

  // ========== Order Tracking Endpoints ==========

  /// Get order tracking information
  Future<dynamic> getOrderTracking(String orderId) async {
    try {
      final response = await orderTrackingApi.ordersOrderIdTrackingGet(orderId: orderId);
      return response.data;
    } catch (e) {
      print('Error in get order tracking: $e');
      rethrow;
    }
  }

  /// Update order status
  Future<dynamic> updateOrderStatus(String orderId, RequestOptions statusData) async {
    try {
      final response = await orderTrackingApi.ordersOrderIdStatusPut(
        orderId: orderId,
        body: statusData,
      );
      return response.data;
    } catch (e) {
      print('Error in update order status: $e');
      rethrow;
    }
  }
}

/// Factory function for creating order resource client
OrderResourceClient createOrderClient(Dio dio, Serializers serializers) {
  final orderManagementApi = OrderManagementApi(dio, serializers);
  final orderItemsApi = OrderItemsApi(dio, serializers);
  final orderTrackingApi = OrderTrackingApi(dio, serializers);

  return OrderResourceClient(
    dio,
    orderManagementApi,
    orderItemsApi,
    orderTrackingApi,
  );
}

