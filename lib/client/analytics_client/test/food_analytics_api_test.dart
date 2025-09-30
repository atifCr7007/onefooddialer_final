import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for FoodAnalyticsApi
void main() {
  final instance = Openapi().getFoodAnalyticsApi();

  group(FoodAnalyticsApi, () {
    // Get food analytics dashboard data
    //
    // Returns data for the food analytics dashboard
    //
    //Future<GetFoodDashboard200Response> getFoodDashboard() async
    test('test getFoodDashboard', () async {
      // TODO
    });

  });
}
