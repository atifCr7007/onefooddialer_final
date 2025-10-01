import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickserver_client/quickserver_client.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/quickserver_resource_clients.dart';
import '../../../config/app_config.dart';

/// Dio instance configured for QuickServer service (shared)
final quickserverDioProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.quickServerBaseUrl,
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
