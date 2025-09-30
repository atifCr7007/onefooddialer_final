import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for RecipesApi
void main() {
  final instance = Openapi().getRecipesApi();

  group(RecipesApi, () {
    // Get a recipe by ID
    //
    // Returns a recipe by ID
    //
    //Future<GetRecipeById200Response> getRecipeById(int id) async
    test('test getRecipeById', () async {
      // TODO
    });

  });
}
