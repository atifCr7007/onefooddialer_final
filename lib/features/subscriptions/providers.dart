import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subscription_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/subscription_resource_clients.dart';

/// Dio instance configured for Subscription service
final subscriptionDioProvider = Provider((ref) {
  return Dio(BaseOptions(
    baseUrl: 'http://localhost:8010/api/v2',
    headers: {
      'Content-Type': 'application/json',
    },
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));
});

/// Subscription resource client provider
final subscriptionsClientProvider = Provider((ref) {
  final dio = ref.read(subscriptionDioProvider);
  final serializers = standardSerializers;
  return createSubscriptionClient(dio, serializers);
});

/// Get all subscriptions
final subscriptionsListProvider = FutureProvider.autoDispose.family<GetAllSubscriptions200Response?, Map<String, dynamic>>((ref, params) async {
  final client = ref.read(subscriptionsClientProvider);
  return await client.getAllSubscriptions(
    customerId: params['customer_id'] as int?,
    status: params['status'] as String?,
    startDate: params['start_date'] != null ? DateTime.parse(params['start_date'] as String).toDate() : null,
    endDate: params['end_date'] != null ? DateTime.parse(params['end_date'] as String).toDate() : null,
  );
});

/// Get subscription by ID
final subscriptionsGetProvider = FutureProvider.autoDispose.family<GetSubscriptionById200Response?, int>((ref, id) async {
  final client = ref.read(subscriptionsClientProvider);
  return await client.getSubscriptionById(id);
});
