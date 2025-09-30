import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for QuickServeIntegrationApi
void main() {
  final instance = Openapi().getQuickServeIntegrationApi();

  group(QuickServeIntegrationApi, () {
    // Get preparation status for an order
    //
    // Returns preparation status for an order
    //
    //Future<GetOrderPreparationStatus200Response> getOrderPreparationStatus(String orderId, { Date date, String menu }) async
    test('test getOrderPreparationStatus', () async {
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

  });
}
