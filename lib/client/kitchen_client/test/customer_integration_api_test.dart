import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CustomerIntegrationApi
void main() {
  final instance = Openapi().getCustomerIntegrationApi();

  group(CustomerIntegrationApi, () {
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

    // Get preparation status for an order (Customer)
    //
    // Returns preparation status for an order for the Customer service
    //
    //Future<GetOrderPreparationStatusForDelivery200Response> getOrderPreparationStatusForCustomer(String orderId, { Date date, String menu }) async
    test('test getOrderPreparationStatusForCustomer', () async {
      // TODO
    });

  });
}
