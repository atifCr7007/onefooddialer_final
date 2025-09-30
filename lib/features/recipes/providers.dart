import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:kitchen_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/kitchen_resource_clients.dart';

final recipesClientProvider = Provider((ref) {
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

  return createRecipesClient(dio, standardSerializers);
});

// Recipes API only has a get by ID endpoint, no list endpoint
final recipesGetProvider = FutureProvider.family((ref, int id) async {
  final api = ref.read(recipesClientProvider);
  return api.get(id);
});
