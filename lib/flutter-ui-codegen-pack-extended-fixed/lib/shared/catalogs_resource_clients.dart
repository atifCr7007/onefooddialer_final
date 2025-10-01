import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:catalogs_client/openapi.dart';

/// Catalogs Resource Client
/// Handles all catalog product API operations using the generated client
class CatalogsResourceClient {
  final Dio http;
  final DefaultApi catalogsApi;

  CatalogsResourceClient(
    this.http,
    this.catalogsApi,
  );

  // ========== Catalog Products API Endpoints ==========

  /// Get all products with optional filtering
  Future<CatalogueProductsGet200Response?> getAllProducts({
    String? foodType,
    int? kitchenId,
    bool? status,
    int? productCategoryId,
    int? perPage = 15,
  }) async {
    try {
      final response = await catalogsApi.catalogueProductsGet(
        foodType: foodType,
        kitchenId: kitchenId,
        status: status,
        productCategoryId: productCategoryId,
        perPage: perPage,
      );
      return response.data;
    } catch (e) {
      print('Error in get all products: $e');
      rethrow;
    }
  }

  /// Get a specific product by ID
  Future<CatalogueProductsIdGet200Response?> getProductById(int id) async {
    try {
      final response = await catalogsApi.catalogueProductsIdGet(id: id);
      return response.data;
    } catch (e) {
      print('Error in get product by ID: $e');
      rethrow;
    }
  }

  /// Create a new product
  Future<CatalogueProductsPost201Response?> createProduct(ProductInput productInput) async {
    try {
      final response = await catalogsApi.catalogueProductsPost(productInput: productInput);
      return response.data;
    } catch (e) {
      print('Error in create product: $e');
      rethrow;
    }
  }

  /// Update a product by ID
  Future<CatalogueProductsIdPut200Response?> updateProduct(int id, ProductInput productInput) async {
    try {
      final response = await catalogsApi.catalogueProductsIdPut(
        id: id,
        productInput: productInput,
      );
      return response.data;
    } catch (e) {
      print('Error in update product: $e');
      rethrow;
    }
  }

  /// Delete a product by ID
  Future<CatalogueProductsIdDelete200Response?> deleteProduct(int id) async {
    try {
      final response = await catalogsApi.catalogueProductsIdDelete(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete product: $e');
      rethrow;
    }
  }

  // ========== Helper Methods ==========

  /// Get products by food type (veg, non-veg)
  Future<CatalogueProductsGet200Response?> getProductsByFoodType(String foodType, {int? perPage = 15}) async {
    return getAllProducts(foodType: foodType, perPage: perPage);
  }

  /// Get products by kitchen ID
  Future<CatalogueProductsGet200Response?> getProductsByKitchen(int kitchenId, {int? perPage = 15}) async {
    return getAllProducts(kitchenId: kitchenId, perPage: perPage);
  }

  /// Get products by category ID
  Future<CatalogueProductsGet200Response?> getProductsByCategory(int categoryId, {int? perPage = 15}) async {
    return getAllProducts(productCategoryId: categoryId, perPage: perPage);
  }

  /// Get active products only
  Future<CatalogueProductsGet200Response?> getActiveProducts({int? perPage = 15}) async {
    return getAllProducts(status: true, perPage: perPage);
  }

  /// Get inactive products only
  Future<CatalogueProductsGet200Response?> getInactiveProducts({int? perPage = 15}) async {
    return getAllProducts(status: false, perPage: perPage);
  }
}

/// Factory function for creating catalogs resource client
CatalogsResourceClient createCatalogsClient(Dio dio, Serializers serializers) {
  final catalogsApi = DefaultApi(dio, serializers);

  return CatalogsResourceClient(
    dio,
    catalogsApi,
  );
}

