import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrderManagementApi
void main() {
  final instance = Openapi().getOrderManagementApi();

  group(OrderManagementApi, () {
    // List orders
    //
    // Retrieve paginated list of orders with filtering and search
    //
    //Future<OrdersResponse> ordersGet({ int page, int limit, String search, String status, String customerId, String restaurantId, String paymentStatus, String deliveryType, Date dateFrom, Date dateTo, String priority }) async
    test('test ordersGet', () async {
      // TODO
    });

    // Cancel order
    //
    // Cancel an order (soft delete with reason)
    //
    //Future ordersOrderIdDelete(String orderId, OrdersOrderIdDeleteRequest ordersOrderIdDeleteRequest) async
    test('test ordersOrderIdDelete', () async {
      // TODO
    });

    // Get order by ID
    //
    // Retrieve detailed information about a specific order
    //
    //Future<Order> ordersOrderIdGet(String orderId) async
    test('test ordersOrderIdGet', () async {
      // TODO
    });

    // Update order
    //
    // Update order details (limited fields based on status)
    //
    //Future<Order> ordersOrderIdPut(String orderId, UpdateOrderRequest body) async
    test('test ordersOrderIdPut', () async {
      // TODO
    });

    // Create new order
    //
    // Create a new order with items and delivery details
    //
    //Future<Order> ordersPost(CreateOrderRequest body) async
    test('test ordersPost', () async {
      // TODO
    });

  });
}
