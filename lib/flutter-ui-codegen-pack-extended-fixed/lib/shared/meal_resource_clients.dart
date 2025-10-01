import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:meal_client/openapi.dart';

/// Meal Resource Client
/// Handles all meal API operations using the generated client
class MealResourceClient {
  final Dio http;
  final DefaultApi mealApi;

  MealResourceClient(
    this.http,
    this.mealApi,
  );

  // ========== Meal Management Endpoints ==========

  /// List all meals with filtering and pagination
  Future<GetAllMeals200Response?> listMeals({
    String? menu,
    String? foodType,
    String? productCategory,
    bool? active,
    String? search,
    String? sortBy = 'name',
    String? sortDirection = 'asc',
  }) async {
    try {
      final response = await mealApi.getAllMeals(
        menu: menu,
        foodType: foodType,
        productCategory: productCategory,
        active: active,
        search: search,
        sortBy: sortBy,
        sortDirection: sortDirection,
      );
      return response.data;
    } catch (e) {
      print('Error in list meals: $e');
      rethrow;
    }
  }

  /// Get meal by ID
  Future<GetMealById200Response?> getMeal(int mealId) async {
    try {
      final response = await mealApi.getMealById(id: mealId);
      return response.data;
    } catch (e) {
      print('Error in get meal: $e');
      rethrow;
    }
  }

  /// Get meals by menu type (breakfast, lunch, dinner)
  Future<GetAllMeals200Response?> getMealsByMenu(String menu) async {
    try {
      final response = await mealApi.getMealsByMenu(menu: menu);
      return response.data;
    } catch (e) {
      print('Error in get meals by menu: $e');
      rethrow;
    }
  }

  /// Get vegetarian meals
  Future<GetAllMeals200Response?> getVegetarianMeals() async {
    try {
      final response = await mealApi.getVegetarianMeals();
      return response.data;
    } catch (e) {
      print('Error in get vegetarian meals: $e');
      rethrow;
    }
  }

  /// Create new meal
  Future<CreateMeal201Response?> createMeal(MealInput mealData) async {
    try {
      final response = await mealApi.createMeal(mealInput: mealData);
      return response.data;
    } catch (e) {
      print('Error in create meal: $e');
      rethrow;
    }
  }

  /// Update meal
  Future<UpdateMeal200Response?> updateMeal(int mealId, MealInput mealData) async {
    try {
      final response = await mealApi.updateMeal(
        id: mealId,
        mealInput: mealData,
      );
      return response.data;
    } catch (e) {
      print('Error in update meal: $e');
      rethrow;
    }
  }

  /// Delete meal
  Future<DeleteMeal200Response?> deleteMeal(int mealId) async {
    try {
      final response = await mealApi.deleteMeal(id: mealId);
      return response.data;
    } catch (e) {
      print('Error in delete meal: $e');
      rethrow;
    }
  }

  // ========== Helper Methods ==========

  /// Get meals by food type (veg, non-veg, beverage)
  Future<GetAllMeals200Response?> getMealsByFoodType(String foodType) async {
    return listMeals(foodType: foodType);
  }

  /// Get meals by product category
  Future<GetAllMeals200Response?> getMealsByProductCategory(String productCategory) async {
    return listMeals(productCategory: productCategory);
  }

  /// Get active meals only
  Future<GetAllMeals200Response?> getActiveMeals() async {
    return listMeals(active: true);
  }

  /// Search meals by name or description
  Future<GetAllMeals200Response?> searchMeals(String searchTerm) async {
    return listMeals(search: searchTerm);
  }
}

/// Factory function for creating meal resource client
MealResourceClient createMealClient(Dio dio, Serializers serializers) {
  final mealApi = DefaultApi(dio, serializers);

  return MealResourceClient(
    dio,
    mealApi,
  );
}

