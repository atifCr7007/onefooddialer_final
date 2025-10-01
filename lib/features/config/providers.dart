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
final configClientProvider = Provider((ref) {
  final dio = ref.read(quickserverDioProvider);
  final serializers = standardSerializers;
  return createQuickServerClient(dio, serializers);
});

/// Get all config
final configListProvider = FutureProvider.autoDispose((ref) async {
  final client = ref.read(configClientProvider);
  return await client.getAllConfig();
});

/// Get config by key
final configGetProvider = FutureProvider.autoDispose.family<GetConfigByKey200Response?, String>((ref, key) async {
  final client = ref.read(configClientProvider);
  return await client.getConfigByKey(key);
});
