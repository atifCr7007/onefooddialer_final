import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PaymentsApi
void main() {
  final instance = Openapi().getPaymentsApi();

  group(PaymentsApi, () {
    // Get payment logs
    //
    // Get payment transaction logs
    //
    //Future<LogsResponse> getPaymentLogs({ int transactionId, String gateway, String event, String status, Date startDate, Date endDate, int limit }) async
    test('test getPaymentLogs', () async {
      // TODO
    });

    // Get payment statistics
    //
    // Get payment transaction statistics
    //
    //Future<StatisticsResponse> getPaymentStatistics({ Date startDate, Date endDate, String gateway, String status }) async
    test('test getPaymentStatistics', () async {
      // TODO
    });

    // Get payment status
    //
    // Get the status of a payment transaction
    //
    //Future<PaymentStatusResponse> getPaymentStatus(int id) async
    test('test getPaymentStatus', () async {
      // TODO
    });

    // Get logs for a transaction
    //
    // Get logs for a specific transaction
    //
    //Future<LogsResponse> getTransactionLogs(int id) async
    test('test getTransactionLogs', () async {
      // TODO
    });

    // Initiate a payment
    //
    // Create a new payment transaction
    //
    //Future<InitiatePaymentResponse> initiatePayment(InitiatePaymentRequest initiatePaymentRequest) async
    test('test initiatePayment', () async {
      // TODO
    });

    // Payment gateway callback
    //
    // Handle callback from payment gateway
    //
    //Future<PaymentCallbackResponse> paymentCallback(Map<String,dynamic> body) async
    test('test paymentCallback', () async {
      // TODO
    });

    // Payment webhook
    //
    // Handle payment gateway webhooks
    //
    //Future<WebhookResponse> paymentWebhook(String gateway, Map<String,dynamic> body) async
    test('test paymentWebhook', () async {
      // TODO
    });

    // Process a payment
    //
    // Process a payment with a specific gateway
    //
    //Future<ProcessPaymentResponse> processPayment(int id, ProcessPaymentRequest processPaymentRequest) async
    test('test processPayment', () async {
      // TODO
    });

    // Refund a payment
    //
    // Refund a completed payment
    //
    //Future<RefundPaymentResponse> refundPayment(int id, { RefundPaymentRequest refundPaymentRequest }) async
    test('test refundPayment', () async {
      // TODO
    });

  });
}
