import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for IntegrationApi
void main() {
  final instance = Openapi().getIntegrationApi();

  group(IntegrationApi, () {
    // Estimate delivery time for an order
    //
    // Returns estimated delivery time for an order
    //
    //Future<EstimateDeliveryTime200Response> estimateDeliveryTime(String orderId, { Date date, String menu }) async
    test('test estimateDeliveryTime', () async {
      // TODO
    });

    // Get preparation summary for a customer
    //
    // Returns preparation summary for a customer
    //
    //Future<GetCustomerPreparationSummary200Response> getCustomerPreparationSummary(String customerId, { Date date, String menu }) async
    test('test getCustomerPreparationSummary', () async {
      // TODO
    });

    // Get preparation status for multiple orders
    //
    // Returns preparation status for multiple orders
    //
    //Future<GetMultipleOrdersPreparationStatus200Response> getMultipleOrdersPreparationStatus(GetMultipleOrdersPreparationStatusRequest getMultipleOrdersPreparationStatusRequest) async
    test('test getMultipleOrdersPreparationStatus', () async {
      // TODO
    });

    // Get preparation status for an order
    //
    // Returns preparation status for an order
    //
    //Future<GetOrderPreparationStatus200Response> getOrderPreparationStatus(String orderId, { Date date, String menu }) async
    test('test getOrderPreparationStatus', () async {
      // TODO
    });

    // Get preparation status for an order (Customer)
    //
    // Returns preparation status for an order for the Customer service
    //
    //Future<GetOrderPreparationStatusForDelivery200Response> getOrderPreparationStatusForCustomer(String orderId, { Date date, String menu }) async
    test('test getOrderPreparationStatusForCustomer', () async {
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

    // Get preparation status for products
    //
    // Returns preparation status for products
    //
    //Future<GetPreparationStatus200Response> getPreparationStatus(BuiltList<int> productIds, { int kitchenId, Date date, String menu }) async
    test('test getPreparationStatus', () async {
      // TODO
    });

    // Get preparation summary
    //
    // Returns preparation summary for a date and menu
    //
    //Future<GetPreparationSummary200Response> getPreparationSummary({ int kitchenId, Date date, String menu }) async
    test('test getPreparationSummary', () async {
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
