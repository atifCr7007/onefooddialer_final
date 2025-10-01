import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:kitchen_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/kitchen_resource_clients.dart';
import '../../../config/app_config.dart';

final recipesClientProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.kitchenBaseUrl,
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
      logPrint: (obj) => print('🔵 [Kitchen API] $obj'),
    ));
  }

  return createRecipesClient(dio, standardSerializers);
});

// Recipes API only has a get by ID endpoint, no list endpoint
final recipesGetProvider = FutureProvider.family((ref, int id) async {
  final api = ref.read(recipesClientProvider);
  return api.get(id);
});
