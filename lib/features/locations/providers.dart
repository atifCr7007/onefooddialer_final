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
