import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:kitchen_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/kitchen_resource_clients.dart';
import '../../../config/app_config.dart';

final kitchenMastersClientProvider = Provider((ref) {
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

  return createKitchenMastersClient(dio, standardSerializers);
});

final kitchenMastersListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(kitchenMastersClientProvider);
  final payload = await api.list(
    status: params['status'],
    companyId: params['company_id'] ?? params['companyId'],
    unitId: params['unit_id'] ?? params['unitId'],
  );
  return KitchenPaginator.items(payload);
});

final kitchenMastersGetProvider = FutureProvider.family((ref, int id) async {
  final api = ref.read(kitchenMastersClientProvider);
  return api.get(id);
});
