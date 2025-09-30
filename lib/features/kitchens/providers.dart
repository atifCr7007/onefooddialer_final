import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:kitchen_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/kitchen_resource_clients.dart';

final kitchensClientProvider = Provider((ref) {
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
