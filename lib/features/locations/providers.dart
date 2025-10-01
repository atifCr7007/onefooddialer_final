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
final locationsClientProvider = Provider((ref) {
  final dio = ref.read(quickserverDioProvider);
  final serializers = standardSerializers;
  return createQuickServerClient(dio, serializers);
});

/// Get all locations
final locationsListProvider = FutureProvider.autoDispose.family<GetLocationMappings200Response?, Map<String, dynamic>>((ref, params) async {
  final client = ref.read(locationsClientProvider);
  return await client.getLocationMappings(
    cityCode: params['city_code'] as String?,
    kitchenCode: params['kitchen_code'] as String?,
    status: params['status'] as int?,
    search: params['search'] as String?,
  );
});

/// Get location by ID
final locationsGetProvider = FutureProvider.autoDispose.family<GetLocationMappingById200Response?, int>((ref, id) async {
  final client = ref.read(locationsClientProvider);
  return await client.getLocationMappingById(id);
});
