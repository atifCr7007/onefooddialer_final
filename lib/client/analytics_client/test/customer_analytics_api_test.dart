import 'package:test/test.dart';
import 'package:analytics_client/openapi.dart';


/// tests for CustomerAnalyticsApi
void main() {
  final instance = Openapi().getCustomerAnalyticsApi();

  group(CustomerAnalyticsApi, () {
    // Get customer analytics dashboard data
    //
    // Returns data for the customer analytics dashboard
    //
    //Future<GetCustomerDashboard200Response> getCustomerDashboard() async
    test('test getCustomerDashboard', () async {
      // TODO
    });

  });
}
