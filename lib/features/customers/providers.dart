import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:customer_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/customer_resource_clients.dart';
import '../../../config/app_config.dart';
import '../../../services/auth_service.dart';

final customersClientProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.customerBaseUrl,
    connectTimeout: AppConfig.connectTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
  ));

  // Add interceptors for auth
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      // Get token from auth state
      final authState = ref.read(authProvider);
      final token = authState.token;

      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
        print('🔑 Customer API: Adding auth header with token');
      } else {
        print('⚠️ Customer API: No token available');
      }
      return handler.next(options);
    },
  ));

  if (AppConfig.isDebugMode) {
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ));
  }

  return createCustomerClient(dio, standardSerializers);
});

final customersListProvider = FutureProvider.autoDispose((ref) async {
  final api = ref.read(customersClientProvider);
  final payload = await api.list();
  return CustomerPaginator.items(payload);
});

final customersGetProvider = FutureProvider.family((ref, int id) async {
  final api = ref.read(customersClientProvider);
  return api.get(id);
});
