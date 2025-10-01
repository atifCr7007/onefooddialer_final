import 'package:test/test.dart';
import 'package:quickserver_client/quickserver_client.dart';


/// tests for OrdersApi
void main() {
  final instance = QuickserverClient().getOrdersApi();

  group(OrdersApi, () {
    // Create a new order
    //
    // Creates a new order with the provided data
    //
    //Future<CreateOrder200Response> createOrder(OrderCreate orderCreate) async
    test('test createOrder', () async {
      // TODO
    });

    // Delete order
    //
    // Deletes an existing order
    //
    //Future<DeleteOrder200Response> deleteOrder(int id) async
    test('test deleteOrder', () async {
      // TODO
    });

    // Get order by ID
    //
    // Returns a single order by ID
    //
    //Future<GetOrderById200Response> getOrderById(int id) async
    test('test getOrderById', () async {
      // TODO
    });

    // Get all orders
    //
    // Returns a list of all orders with optional filtering
    //
    //Future<GetOrders200Response> getOrders({ String orderStatus, String deliveryStatus, String orderMenu, Date fromDate, Date toDate, int perPage, int page }) async
    test('test getOrders', () async {
      // TODO
    });

    // Update order
    //
    // Updates an existing order
    //
    //Future<UpdateOrder200Response> updateOrder(int id, OrderUpdate orderUpdate) async
    test('test updateOrder', () async {
      // TODO
    });

  });
}
