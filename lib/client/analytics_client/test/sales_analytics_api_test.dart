import 'package:test/test.dart';
import 'package:analytics_client/openapi.dart';


/// tests for SalesAnalyticsApi
void main() {
  final instance = Openapi().getSalesAnalyticsApi();

  group(SalesAnalyticsApi, () {
    // Get sales analytics dashboard data
    //
    // Returns data for the sales analytics dashboard
    //
    //Future<GetSalesDashboard200Response> getSalesDashboard() async
    test('test getSalesDashboard', () async {
      // TODO
    });

    // Get months with order data for a specific year
    //
    // Returns months with order data for a specific year
    //
    //Future<GetSalesMonths200Response> getSalesMonths(int year) async
    test('test getSalesMonths', () async {
      // TODO
    });

    // Get years with order data
    //
    // Returns years with order data
    //
    //Future<GetSalesYears200Response> getSalesYears() async
    test('test getSalesYears', () async {
      // TODO
    });

  });
}
