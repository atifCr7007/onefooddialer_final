import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrderTrackingApi
void main() {
  final instance = Openapi().getOrderTrackingApi();

  group(OrderTrackingApi, () {
    // Update order status
    //
    // Update the status of an order in the lifecycle
    //
    //Future<OrderStatusResponse> ordersOrderIdStatusPut(String orderId, UpdateOrderStatusRequest body) async
    test('test ordersOrderIdStatusPut', () async {
      // TODO
    });

    // Get order tracking information
    //
    // Get real-time tracking information for an order
    //
    //Future<OrderTracking> ordersOrderIdTrackingGet(String orderId) async
    test('test ordersOrderIdTrackingGet', () async {
      // TODO
    });

  });
}
