import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickserver_client/quickserver_client.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/quickserver_resource_clients.dart';

/// Dio instance configured for QuickServer service (shared)
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
final ordersClientProvider = Provider((ref) {
  final dio = ref.read(quickserverDioProvider);
  final serializers = standardSerializers;
  return createQuickServerClient(dio, serializers);
});

/// Get all orders
final ordersListProvider = FutureProvider.autoDispose.family<GetOrders200Response?, Map<String, dynamic>>((ref, params) async {
  final client = ref.read(ordersClientProvider);
  return await client.getOrders(
    orderStatus: params['order_status'] as String?,
    deliveryStatus: params['delivery_status'] as String?,
    orderMenu: params['order_menu'] as String?,
    page: params['page'] as int? ?? 1,
    perPage: params['per_page'] as int? ?? 15,
  );
});

/// Get order by ID
final ordersGetProvider = FutureProvider.autoDispose.family<GetOrderById200Response?, int>((ref, id) async {
  final client = ref.read(ordersClientProvider);
  return await client.getOrderById(id);
});
