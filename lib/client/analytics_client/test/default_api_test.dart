import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Get loyal customers
    //
    // Returns loyal customers
    //
    //Future<CustomerLoyalGet200Response> customerLoyalGet({ int limit }) async
    test('test customerLoyalGet', () async {
      // TODO
    });

    // Get customer preferences
    //
    // Returns customer preferences
    //
    //Future<CustomerPreferencesCustomerIdGet200Response> customerPreferencesCustomerIdGet(String customerId, { int limit }) async
    test('test customerPreferencesCustomerIdGet', () async {
      // TODO
    });

    // Get customer spending
    //
    // Returns customer spending
    //
    //Future<CustomerSpendingCustomerIdGet200Response> customerSpendingCustomerIdGet(String customerId) async
    test('test customerSpendingCustomerIdGet', () async {
      // TODO
    });

    // Get common extras
    //
    // Returns common extras
    //
    //Future<FoodExtrasGet200Response> foodExtrasGet() async
    test('test foodExtrasGet', () async {
      // TODO
    });

    // Get meal performance
    //
    // Returns meal performance
    //
    //Future<FoodPopularYearMonthGet200Response> foodPerformanceYearMonthTypeGet(int year, String type, { int month }) async
    test('test foodPerformanceYearMonthTypeGet', () async {
      // TODO
    });

    // Get popular meals
    //
    // Returns popular meals
    //
    //Future<FoodPopularYearMonthGet200Response> foodPopularYearMonthGet(int year, { int month }) async
    test('test foodPopularYearMonthGet', () async {
      // TODO
    });

    // Get average meal per customer
    //
    // Returns average meal per customer
    //
    //Future<SalesAvgMealYearMonthGet200Response> salesAvgMealYearMonthGet(int year, { int month }) async
    test('test salesAvgMealYearMonthGet', () async {
      // TODO
    });

    // Get sales comparison for a specific year
    //
    // Returns sales comparison for a specific year
    //
    //Future<SalesComparisonYearTypeGet200Response> salesComparisonYearTypeGet(int year, String type) async
    test('test salesComparisonYearTypeGet', () async {
      // TODO
    });

    // Get payment methods
    //
    // Returns payment methods
    //
    //Future<SalesPaymentMethodsGet200Response> salesPaymentMethodsGet() async
    test('test salesPaymentMethodsGet', () async {
      // TODO
    });

    // Get revenue for a specific year and month
    //
    // Returns revenue for a specific year and month
    //
    //Future<SalesRevenueYearMonthGet200Response> salesRevenueYearMonthGet(int year, { int month }) async
    test('test salesRevenueYearMonthGet', () async {
      // TODO
    });

  });
}
