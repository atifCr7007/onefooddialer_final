import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:kitchen_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/kitchen_resource_clients.dart';
import '../../../config/app_config.dart';

final kitchensClientProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.kitchenBaseUrl,
    connectTimeout: AppConfig.connectTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
  ));

  // Add interceptors for auth if needed
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      final token = const String.fromEnvironment('JWT_TOKEN', defaultValue: '');
      if (token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
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

final kitchensListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(kitchensClientProvider);
  final payload = await api.list(
    date: params['date'],
    menu: params['menu'],
    kitchenId: params['kitchen_id'] ?? params['kitchenId'],
  );
  return KitchenPaginator.items(payload);
});

final kitchensGetProvider = FutureProvider.family((ref, int id) async {
  final api = ref.read(kitchensClientProvider);
  return api.get(id);
});
