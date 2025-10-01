import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:payment_client/openapi.dart';

/// Payment Resource Client
/// Handles all payment and payment method API operations using the generated client
class PaymentResourceClient {
  final Dio http;
  final PaymentsApi paymentsApi;
  final PaymentMethodsApi paymentMethodsApi;

  PaymentResourceClient(
    this.http,
    this.paymentsApi,
    this.paymentMethodsApi,
  );

  // ========== Payments API Endpoints ==========

  /// Initiate a new payment transaction
  Future<InitiatePaymentResponse?> initiatePayment(InitiatePaymentRequest request) async {
    try {
      final response = await paymentsApi.initiatePayment(initiatePaymentRequest: request);
      return response.data;
    } catch (e) {
      print('Error in initiate payment: $e');
      rethrow;
    }
  }

  /// Get payment status by transaction ID
  Future<PaymentStatusResponse?> getPaymentStatus(int transactionId) async {
    try {
      final response = await paymentsApi.getPaymentStatus(id: transactionId);
      return response.data;
    } catch (e) {
      print('Error in get payment status: $e');
      rethrow;
    }
  }

  /// Process a payment with a specific gateway
  Future<ProcessPaymentResponse?> processPayment(int transactionId, ProcessPaymentRequest request) async {
    try {
      final response = await paymentsApi.processPayment(
        id: transactionId,
        processPaymentRequest: request,
      );
      return response.data;
    } catch (e) {
      print('Error in process payment: $e');
      rethrow;
    }
  }

  /// Refund a completed payment
  Future<RefundPaymentResponse?> refundPayment(int transactionId, {RefundPaymentRequest? request}) async {
    try {
      final response = await paymentsApi.refundPayment(
        id: transactionId,
        refundPaymentRequest: request,
      );
      return response.data;
    } catch (e) {
      print('Error in refund payment: $e');
      rethrow;
    }
  }

  /// Get payment transaction logs
  Future<LogsResponse?> getPaymentLogs({
    int? transactionId,
    String? gateway,
    String? event,
    String? status,
    Date? startDate,
    Date? endDate,
    int? limit = 50,
  }) async {
    try {
      final response = await paymentsApi.getPaymentLogs(
        transactionId: transactionId,
        gateway: gateway,
        event: event,
        status: status,
        startDate: startDate,
        endDate: endDate,
        limit: limit,
      );
      return response.data;
    } catch (e) {
      print('Error in get payment logs: $e');
      rethrow;
    }
  }

  /// Get logs for a specific transaction
  Future<LogsResponse?> getTransactionLogs(int transactionId) async {
    try {
      final response = await paymentsApi.getTransactionLogs(id: transactionId);
      return response.data;
    } catch (e) {
      print('Error in get transaction logs: $e');
      rethrow;
    }
  }

  /// Get payment statistics
  Future<StatisticsResponse?> getPaymentStatistics({
    Date? startDate,
    Date? endDate,
    String? gateway,
    String? status,
  }) async {
    try {
      final response = await paymentsApi.getPaymentStatistics(
        startDate: startDate,
        endDate: endDate,
        gateway: gateway,
        status: status,
      );
      return response.data;
    } catch (e) {
      print('Error in get payment statistics: $e');
      rethrow;
    }
  }

  /// Handle payment gateway callback
  Future<PaymentCallbackResponse?> paymentCallback(Map<String, dynamic> callbackData) async {
    try {
      final response = await paymentsApi.paymentCallback(body: callbackData);
      return response.data;
    } catch (e) {
      print('Error in payment callback: $e');
      rethrow;
    }
  }

  /// Handle payment gateway webhook
  Future<WebhookResponse?> paymentWebhook(String gateway, Map<String, dynamic> webhookData) async {
    try {
      final response = await paymentsApi.paymentWebhook(
        gateway: gateway,
        body: webhookData,
      );
      return response.data;
    } catch (e) {
      print('Error in payment webhook: $e');
      rethrow;
    }
  }

  // ========== Payment Methods API Endpoints ==========

  /// Get all payment methods for a customer
  Future<PaymentMethodsResponse?> getCustomerPaymentMethods(int customerId, {bool? activeOnly = true}) async {
    try {
      final response = await paymentMethodsApi.getCustomerPaymentMethods(
        customerId: customerId,
        activeOnly: activeOnly,
      );
      return response.data;
    } catch (e) {
      print('Error in get customer payment methods: $e');
      rethrow;
    }
  }

  /// Get a specific payment method
  Future<PaymentMethodResponse?> getPaymentMethod(int methodId, {int? customerId}) async {
    try {
      final response = await paymentMethodsApi.getPaymentMethod(
        id: methodId,
        customerId: customerId,
      );
      return response.data;
    } catch (e) {
      print('Error in get payment method: $e');
      rethrow;
    }
  }

  /// Create a new payment method
  Future<PaymentMethodResponse?> createPaymentMethod(CreatePaymentMethodRequest request) async {
    try {
      final response = await paymentMethodsApi.createPaymentMethod(
        createPaymentMethodRequest: request,
      );
      return response.data;
    } catch (e) {
      print('Error in create payment method: $e');
      rethrow;
    }
  }

  /// Update a payment method
  Future<PaymentMethodResponse?> updatePaymentMethod(
    int methodId,
    UpdatePaymentMethodRequest request, {
    int? customerId,
  }) async {
    try {
      final response = await paymentMethodsApi.updatePaymentMethod(
        id: methodId,
        updatePaymentMethodRequest: request,
        customerId: customerId,
      );
      return response.data;
    } catch (e) {
      print('Error in update payment method: $e');
      rethrow;
    }
  }

  /// Delete a payment method
  Future<DeleteResponse?> deletePaymentMethod(int methodId, {int? customerId}) async {
    try {
      final response = await paymentMethodsApi.deletePaymentMethod(
        id: methodId,
        customerId: customerId,
      );
      return response.data;
    } catch (e) {
      print('Error in delete payment method: $e');
      rethrow;
    }
  }

  /// Set a payment method as default
  Future<PaymentMethodResponse?> setDefaultPaymentMethod(int methodId, {int? customerId}) async {
    try {
      final response = await paymentMethodsApi.setDefaultPaymentMethod(
        id: methodId,
        customerId: customerId,
      );
      return response.data;
    } catch (e) {
      print('Error in set default payment method: $e');
      rethrow;
    }
  }
}

/// Factory function for creating payment resource client
PaymentResourceClient createPaymentClient(Dio dio, Serializers serializers) {
  final paymentsApi = PaymentsApi(dio, serializers);
  final paymentMethodsApi = PaymentMethodsApi(dio, serializers);

  return PaymentResourceClient(
    dio,
    paymentsApi,
    paymentMethodsApi,
  );
}

