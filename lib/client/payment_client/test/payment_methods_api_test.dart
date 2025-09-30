import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PaymentMethodsApi
void main() {
  final instance = Openapi().getPaymentMethodsApi();

  group(PaymentMethodsApi, () {
    // Create payment method
    //
    // Create a new payment method
    //
    //Future<PaymentMethodResponse> createPaymentMethod(CreatePaymentMethodRequest createPaymentMethodRequest) async
    test('test createPaymentMethod', () async {
      // TODO
    });

    // Delete payment method
    //
    // Delete a specific payment method
    //
    //Future<DeleteResponse> deletePaymentMethod(int id, { int customerId }) async
    test('test deletePaymentMethod', () async {
      // TODO
    });

    // Get customer payment methods
    //
    // Get all payment methods for a customer
    //
    //Future<PaymentMethodsResponse> getCustomerPaymentMethods(int customerId, { bool activeOnly }) async
    test('test getCustomerPaymentMethods', () async {
      // TODO
    });

    // Get payment method
    //
    // Get a specific payment method
    //
    //Future<PaymentMethodResponse> getPaymentMethod(int id, { int customerId }) async
    test('test getPaymentMethod', () async {
      // TODO
    });

    // Set default payment method
    //
    // Set a payment method as the default
    //
    //Future<PaymentMethodResponse> setDefaultPaymentMethod(int id, { int customerId }) async
    test('test setDefaultPaymentMethod', () async {
      // TODO
    });

    // Update payment method
    //
    // Update a specific payment method
    //
    //Future<PaymentMethodResponse> updatePaymentMethod(int id, UpdatePaymentMethodRequest updatePaymentMethodRequest, { int customerId }) async
    test('test updatePaymentMethod', () async {
      // TODO
    });

  });
}
