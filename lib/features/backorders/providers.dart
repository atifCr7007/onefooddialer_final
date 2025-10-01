import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickserver_client/quickserver_client.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/quickserver_resource_clients.dart';

/// Dio instance configured for QuickServer service
final quickserverDioProvider = Provider((ref) {
  return Dio(BaseOptions(
    baseUrl: 'http://localhost:8011/api/v1',
    headers: {
      'Content-Type': 'application/json',
    },
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));
});

/// QuickServer resource client provider
final backordersClientProvider = Provider((ref) {
  final dio = ref.read(quickserverDioProvider);
  final serializers = standardSerializers;
  return createQuickServerClient(dio, serializers);
});

/// Get all backorders
final backordersListProvider = FutureProvider.autoDispose.family<GetBackorders200Response?, Map<String, dynamic>>((ref, params) async {
  final client = ref.read(backordersClientProvider);
  return await client.getBackorders(
    customerId: params['customer_id'] as int?,
    orderId: params['order_id'] as int?,
    productId: params['product_id'] as int?,
    status: params['status'] as String?,
  );
});

/// Get backorder by ID
final backordersGetProvider = FutureProvider.autoDispose.family<GetBackorderById200Response?, int>((ref, id) async {
  final client = ref.read(backordersClientProvider);
  return await client.getBackorderById(id);
});
