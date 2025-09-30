import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Get all products
    //
    // Returns a list of products with optional filtering
    //
    //Future<CatalogueProductsGet200Response> catalogueProductsGet({ String foodType, int kitchenId, bool status, int productCategoryId, int perPage }) async
    test('test catalogueProductsGet', () async {
      // TODO
    });

    // Delete a product
    //
    // Deletes a specific product by ID
    //
    //Future<CatalogueProductsIdDelete200Response> catalogueProductsIdDelete(int id) async
    test('test catalogueProductsIdDelete', () async {
      // TODO
    });

    // Get a specific product
    //
    // Returns a specific product by ID
    //
    //Future<CatalogueProductsIdGet200Response> catalogueProductsIdGet(int id) async
    test('test catalogueProductsIdGet', () async {
      // TODO
    });

    // Update a product
    //
    // Updates a specific product by ID
    //
    //Future<CatalogueProductsIdPut200Response> catalogueProductsIdPut(int id, ProductInput productInput) async
    test('test catalogueProductsIdPut', () async {
      // TODO
    });

    // Create a new product
    //
    // Creates a new product
    //
    //Future<CatalogueProductsPost201Response> catalogueProductsPost(ProductInput productInput) async
    test('test catalogueProductsPost', () async {
      // TODO
    });

  });
}
