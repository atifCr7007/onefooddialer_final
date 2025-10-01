import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:catalogs_client/src/serializers.dart';
import 'package:catalogs_client/src/model/catalogue_products_get200_response.dart';
import 'package:catalogs_client/src/model/catalogue_products_id_get200_response.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/catalogs_resource_clients.dart';

/// Dio instance configured for catalogs service
final catalogsDioProvider = Provider((ref) {
  return Dio(BaseOptions(
    baseUrl: 'http://localhost:8009/api/v2',
    headers: {
      'Content-Type': 'application/json',
    },
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));
});

/// Catalogs resource client provider
final catalogsClientProvider = Provider((ref) {
  final dio = ref.read(catalogsDioProvider);
  final serializers = standardSerializers;
  return createCatalogsClient(dio, serializers);
});

/// Get all products with optional filtering
final catalogsListProvider = FutureProvider.autoDispose.family<CatalogueProductsGet200Response?, Map<String, dynamic>>((ref, params) async {
  final client = ref.read(catalogsClientProvider);
  return await client.getAllProducts(
    foodType: params['food_type'] as String?,
    kitchenId: params['kitchen_id'] as int?,
    status: params['status'] as bool?,
    productCategoryId: params['product_category_id'] as int?,
    perPage: params['per_page'] as int? ?? 15,
  );
});

/// Get product by ID
final catalogsGetProvider = FutureProvider.autoDispose.family<CatalogueProductsIdGet200Response?, int>((ref, id) async {
  final client = ref.read(catalogsClientProvider);
  return await client.getProductById(id);
});
