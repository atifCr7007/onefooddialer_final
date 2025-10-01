import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:payment_client/src/serializers.dart';
import 'package:payment_client/src/model/payment_methods_response.dart';
import 'package:payment_client/src/model/payment_method_response.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/payment_resource_clients.dart';
import '../../../config/app_config.dart';

/// Dio instance configured for payment service (shared with payments)
final paymentMethodDioProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.paymentBaseUrl,
    headers: {
      'Content-Type': 'application/json',
    },
    connectTimeout: AppConfig.connectTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
  ));

  if (AppConfig.isDebugMode) {
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ));
  }

  return dio;
});

/// Payment resource client provider (shared with payments)
final paymentmethodsClientProvider = Provider((ref) {
  final dio = ref.read(paymentMethodDioProvider);
  final serializers = standardSerializers;
  return createPaymentClient(dio, serializers);
});

/// Get customer payment methods
final paymentmethodsListProvider = FutureProvider.autoDispose.family<PaymentMethodsResponse?, int>((ref, customerId) async {
  final client = ref.read(paymentmethodsClientProvider);
  return await client.getCustomerPaymentMethods(customerId);
});

/// Get payment method by ID
final paymentmethodsGetProvider = FutureProvider.autoDispose.family<PaymentMethodResponse?, int>((ref, id) async {
  final client = ref.read(paymentmethodsClientProvider);
  return await client.getPaymentMethod(id);
});
