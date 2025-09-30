import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DeliveryIntegrationApi
void main() {
  final instance = Openapi().getDeliveryIntegrationApi();

  group(DeliveryIntegrationApi, () {
    // Estimate delivery time for an order
    //
    // Returns estimated delivery time for an order
    //
    //Future<EstimateDeliveryTime200Response> estimateDeliveryTime(String orderId, { Date date, String menu }) async
    test('test estimateDeliveryTime', () async {
      // TODO
    });

    // Get preparation status for an order (Delivery)
    //
    // Returns preparation status for an order for the Delivery service
    //
    //Future<GetOrderPreparationStatusForDelivery200Response> getOrderPreparationStatusForDelivery(String orderId, { Date date, String menu }) async
    test('test getOrderPreparationStatusForDelivery', () async {
      // TODO
    });

    // Notify delivery status update
    //
    // Notifies the kitchen about a delivery status update
    //
    //Future<NotifyDeliveryStatusUpdate200Response> notifyDeliveryStatusUpdate(NotifyDeliveryStatusUpdateRequest notifyDeliveryStatusUpdateRequest) async
    test('test notifyDeliveryStatusUpdate', () async {
      // TODO
    });

  });
}
