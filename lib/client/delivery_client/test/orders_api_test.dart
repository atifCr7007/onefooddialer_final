import 'package:test/test.dart';
import 'package:delivery_client/openapi.dart';


/// tests for OrdersApi
void main() {
  final instance = Openapi().getOrdersApi();

  group(OrdersApi, () {
    // Get orders for delivery
    //
    // Returns a list of orders assigned for delivery
    //
    //Future<GetDeliveryOrders200Response> getDeliveryOrders({ int locationId, Date date }) async
    test('test getDeliveryOrders', () async {
      // TODO
    });

    // Search orders
    //
    // Search for orders by order number or other criteria
    //
    //Future<GetDeliveryOrders200Response> searchOrders(String search, { int locationId }) async
    test('test searchOrders', () async {
      // TODO
    });

    // Update delivery status
    //
    // Update the delivery status of an order
    //
    //Future<UpdateDeliveryStatus200Response> updateDeliveryStatus(int orderId, UpdateDeliveryStatusRequest updateDeliveryStatusRequest) async
    test('test updateDeliveryStatus', () async {
      // TODO
    });

  });
}
