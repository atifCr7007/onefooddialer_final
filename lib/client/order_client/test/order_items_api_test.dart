import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrderItemsApi
void main() {
  final instance = Openapi().getOrderItemsApi();

  group(OrderItemsApi, () {
    // Get order items
    //
    // Retrieve all items in an order
    //
    //Future<OrdersOrderIdItemsGet200Response> ordersOrderIdItemsGet(String orderId) async
    test('test ordersOrderIdItemsGet', () async {
      // TODO
    });

    // Remove item from order
    //
    // Remove an item from an order (if status allows)
    //
    //Future ordersOrderIdItemsItemIdDelete(String orderId, String itemId) async
    test('test ordersOrderIdItemsItemIdDelete', () async {
      // TODO
    });

    // Update order item
    //
    // Update quantity or customizations of an order item
    //
    //Future<OrderItem> ordersOrderIdItemsItemIdPut(String orderId, String itemId, UpdateOrderItemRequest body) async
    test('test ordersOrderIdItemsItemIdPut', () async {
      // TODO
    });

    // Add item to order
    //
    // Add a new item to an existing order (if status allows)
    //
    //Future<OrderItem> ordersOrderIdItemsPost(String orderId, AddOrderItemRequest body) async
    test('test ordersOrderIdItemsPost', () async {
      // TODO
    });

  });
}
