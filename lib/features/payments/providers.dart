import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:payment_client/src/serializers.dart';
import 'package:payment_client/src/model/logs_response.dart';
import 'package:payment_client/src/model/payment_status_response.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/payment_resource_clients.dart';
import '../../../config/app_config.dart';

/// Dio instance configured for payment service
final paymentDioProvider = Provider((ref) {
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

/// Payment resource client provider
final paymentsClientProvider = Provider((ref) {
  final dio = ref.read(paymentDioProvider);
  final serializers = standardSerializers;
  return createPaymentClient(dio, serializers);
});

/// Get payment statistics
final paymentsStatisticsProvider = FutureProvider.autoDispose((ref) async {
  final client = ref.read(paymentsClientProvider);
  return await client.getPaymentStatistics();
});

/// Get payment logs
final paymentsLogsProvider = FutureProvider.autoDispose.family<LogsResponse?, Map<String, dynamic>>((ref, params) async {
  final client = ref.read(paymentsClientProvider);
  return await client.getPaymentLogs(
    transactionId: params['transaction_id'] as int?,
    gateway: params['gateway'] as String?,
    event: params['event'] as String?,
    status: params['status'] as String?,
    limit: params['limit'] as int? ?? 50,
  );
});

/// Get payment status by ID
final paymentsGetProvider = FutureProvider.autoDispose.family<PaymentStatusResponse?, int>((ref, id) async {
  final client = ref.read(paymentsClientProvider);
  return await client.getPaymentStatus(id);
});
