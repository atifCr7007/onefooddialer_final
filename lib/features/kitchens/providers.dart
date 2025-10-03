import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:kitchen_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/kitchen_resource_clients.dart';
import '../../../config/app_config.dart';
import '../../../services/auth_service.dart';

final kitchensClientProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.kitchenBaseUrl,
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
        print('🔑 Kitchen API: Adding auth header with token');
      } else {
        print('⚠️ Kitchen API: No token available');
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

  return createKitchensClient(dio, standardSerializers);
});

final kitchensListProvider = FutureProvider.autoDispose((ref) async {
  final api = ref.read(kitchensClientProvider);
  final payload = await api.list();
  print('📦 Kitchen payload type: ${payload.runtimeType}');
  print('📦 Kitchen payload: $payload');

  final items = KitchenPaginator.items(payload);
  print('📦 Kitchen items type: ${items.runtimeType}');
  print('📦 Kitchen items length: ${items.length}');
  if (items.isNotEmpty) {
    print('📦 First item type: ${items.first.runtimeType}');
    print('📦 First item: ${items.first}');
  }

  return items;
});

final kitchensGetProvider = FutureProvider.family((ref, int id) async {
  final api = ref.read(kitchensClientProvider);
  return api.get(id);
});
