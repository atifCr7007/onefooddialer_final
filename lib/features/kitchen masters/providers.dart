import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:kitchen_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/kitchen_resource_clients.dart';

final kitchenMastersClientProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: const String.fromEnvironment('API_URL', defaultValue: 'https://api.onefooddialer.com/api/v2'),
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
