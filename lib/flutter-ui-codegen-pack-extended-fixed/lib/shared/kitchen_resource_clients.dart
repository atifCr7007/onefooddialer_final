import 'package:dio/dio.dart';
import 'package:kitchen_client/kitchen_client.dart';
import 'package:built_value/serializer.dart';

/// Paginator utility for handling paginated responses
class KitchenPaginator {
  static List items(dynamic payload) {
    if (payload is Map) return (payload['data'] ?? payload['items'] ?? []) as List;
    if (payload is List) return payload;
    return [];
  }

  static int total(dynamic payload) {
    if (payload is Map) return (payload['meta']?['total'] ?? payload['total'] ?? 0) as int;
    return 0;
  }

  static int currentPage(dynamic payload) {
    if (payload is Map) return (payload['meta']?['current_page'] ?? payload['current_page'] ?? 1) as int;
    return 1;
  }

  static int perPage(dynamic payload) {
    if (payload is Map) return (payload['meta']?['per_page'] ?? payload['per_page'] ?? 10) as int;
    return 10;
  }
}

/// Kitchens Resource Client
/// Handles all kitchen-related API operations
class KitchensResourceClient {
  final Dio http;
  final KitchensApi api;

  KitchensResourceClient(this.http, this.api);

  /// Get all kitchens with optional filtering
  Future<dynamic> list({
    Date? date,
    String? menu,
    int? kitchenId,
  }) async {
    try {
      final response = await api.getKitchens(
        date: date,
        menu: menu,
        kitchenId: kitchenId,
      );
      // response.data is GetKitchens200Response (built_value object)
      // We need to extract the data property which is BuiltList<Kitchen>
      final responseData = response.data;
      if (responseData == null) {
        print('⚠️ Kitchen API: response.data is null');
        return [];
      }

      // Convert BuiltList to regular List
      final kitchensList = responseData.data?.toList() ?? [];
      print('📦 Kitchen API: Extracted ${kitchensList.length} kitchens from response');

      // Return a Map structure that matches what KitchenPaginator expects
      return {'data': kitchensList};
    } catch (e) {
      print('Error in list kitchens: $e');
      rethrow;
    }
  }

  /// Get a single kitchen by ID
  Future<dynamic> get(int id) async {
    try {
      final response = await api.getKitchenById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get kitchen: $e');
      rethrow;
    }
  }

  /// Update all prepared count for a kitchen
  Future<dynamic> updateAllPrepared(int id, Map<String, dynamic> preparedData) async {
    try {
      final request = UpdatePreparedRequest((b) {
        if (preparedData.containsKey('menu')) {
          b.menu = preparedData['menu'];
        }
        if (preparedData.containsKey('date')) {
          b.date = preparedData['date'];
        }
        if (preparedData.containsKey('screen')) {
          b.screen = preparedData['screen'];
        }
      });
      final response = await api.updateAllPrepared(
        id: id,
        updatePreparedRequest: request,
      );
      return response.data;
    } catch (e) {
      print('Error in update all prepared: $e');
      rethrow;
    }
  }

  /// Update prepared count for a kitchen
  Future<dynamic> updatePrepared(int id, Map<String, dynamic> preparedData) async {
    try {
      final request = UpdatePreparedRequest((b) {
        if (preparedData.containsKey('menu')) {
          b.menu = preparedData['menu'];
        }
        if (preparedData.containsKey('date')) {
          b.date = preparedData['date'];
        }
        if (preparedData.containsKey('screen')) {
          b.screen = preparedData['screen'];
        }
      });
      final response = await api.updatePrepared(
        id: id,
        updatePreparedRequest: request,
      );
      return response.data;
    } catch (e) {
      print('Error in update prepared: $e');
      rethrow;
    }
  }
}

/// Kitchen Masters Resource Client
/// Handles kitchen master management operations
class KitchenMastersResourceClient {
  final Dio http;
  final KitchenMastersApi api;

  KitchenMastersResourceClient(this.http, this.api);

  /// Get all kitchen masters with optional filtering
  Future<dynamic> list({
    bool? status,
    int? companyId,
    int? unitId,
  }) async {
    try {
      final response = await api.getKitchenMasters(
        status: status,
        companyId: companyId,
        unitId: unitId,
      );
      return response.data;
    } catch (e) {
      print('Error in list kitchen masters: $e');
      rethrow;
    }
  }

  /// Get a single kitchen master by ID
  Future<dynamic> get(int id) async {
    try {
      final response = await api.getKitchenMasterById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get kitchen master: $e');
      rethrow;
    }
  }

  /// Create a new kitchen master
  Future<dynamic> create(Map<String, dynamic> kitchenMasterData) async {
    try {
      final request = KitchenMasterInput((b) {
        b.kitchenName = kitchenMasterData['kitchen_name'] ?? 
                        kitchenMasterData['kitchenName'] ?? 
                        kitchenMasterData['name'] ?? '';
        
        if (kitchenMasterData.containsKey('company_id') || kitchenMasterData.containsKey('companyId')) {
          b.companyId = kitchenMasterData['company_id'] ?? kitchenMasterData['companyId'];
        }
        if (kitchenMasterData.containsKey('unit_id') || kitchenMasterData.containsKey('unitId')) {
          b.unitId = kitchenMasterData['unit_id'] ?? kitchenMasterData['unitId'];
        }
        if (kitchenMasterData.containsKey('kitchen_alias') || kitchenMasterData.containsKey('kitchenAlias')) {
          b.kitchenAlias = kitchenMasterData['kitchen_alias'] ?? kitchenMasterData['kitchenAlias'];
        }
        if (kitchenMasterData.containsKey('location')) {
          b.location = kitchenMasterData['location'];
        }
        if (kitchenMasterData.containsKey('location_id') || kitchenMasterData.containsKey('locationId')) {
          b.locationId = kitchenMasterData['location_id'] ?? kitchenMasterData['locationId'];
        }
        if (kitchenMasterData.containsKey('city_id') || kitchenMasterData.containsKey('cityId')) {
          b.cityId = kitchenMasterData['city_id'] ?? kitchenMasterData['cityId'];
        }
        if (kitchenMasterData.containsKey('base_kitchen') || kitchenMasterData.containsKey('baseKitchen')) {
          b.baseKitchen = kitchenMasterData['base_kitchen'] ?? kitchenMasterData['baseKitchen'];
        }
        if (kitchenMasterData.containsKey('kitchen_address') || kitchenMasterData.containsKey('kitchenAddress')) {
          b.kitchenAddress = kitchenMasterData['kitchen_address'] ?? kitchenMasterData['kitchenAddress'];
        }
        if (kitchenMasterData.containsKey('created_by') || kitchenMasterData.containsKey('createdBy')) {
          b.createdBy = kitchenMasterData['created_by'] ?? kitchenMasterData['createdBy'];
        }
        if (kitchenMasterData.containsKey('updated_by') || kitchenMasterData.containsKey('updatedBy')) {
          b.updatedBy = kitchenMasterData['updated_by'] ?? kitchenMasterData['updatedBy'];
        }
        if (kitchenMasterData.containsKey('status')) {
          b.status = kitchenMasterData['status'];
        }
      });
      final response = await api.createKitchenMaster(kitchenMasterInput: request);
      return response.data;
    } catch (e) {
      print('Error in create kitchen master: $e');
      rethrow;
    }
  }

  /// Update an existing kitchen master
  Future<dynamic> update(int id, Map<String, dynamic> kitchenMasterData) async {
    try {
      final request = KitchenMasterInput((b) {
        // Kitchen name is required, so provide a default if not present
        b.kitchenName = kitchenMasterData['kitchen_name'] ?? 
                        kitchenMasterData['kitchenName'] ?? 
                        kitchenMasterData['name'] ?? '';
        
        if (kitchenMasterData.containsKey('company_id') || kitchenMasterData.containsKey('companyId')) {
          b.companyId = kitchenMasterData['company_id'] ?? kitchenMasterData['companyId'];
        }
        if (kitchenMasterData.containsKey('unit_id') || kitchenMasterData.containsKey('unitId')) {
          b.unitId = kitchenMasterData['unit_id'] ?? kitchenMasterData['unitId'];
        }
        if (kitchenMasterData.containsKey('kitchen_alias') || kitchenMasterData.containsKey('kitchenAlias')) {
          b.kitchenAlias = kitchenMasterData['kitchen_alias'] ?? kitchenMasterData['kitchenAlias'];
        }
        if (kitchenMasterData.containsKey('location')) {
          b.location = kitchenMasterData['location'];
        }
        if (kitchenMasterData.containsKey('location_id') || kitchenMasterData.containsKey('locationId')) {
          b.locationId = kitchenMasterData['location_id'] ?? kitchenMasterData['locationId'];
        }
        if (kitchenMasterData.containsKey('city_id') || kitchenMasterData.containsKey('cityId')) {
          b.cityId = kitchenMasterData['city_id'] ?? kitchenMasterData['cityId'];
        }
        if (kitchenMasterData.containsKey('base_kitchen') || kitchenMasterData.containsKey('baseKitchen')) {
          b.baseKitchen = kitchenMasterData['base_kitchen'] ?? kitchenMasterData['baseKitchen'];
        }
        if (kitchenMasterData.containsKey('kitchen_address') || kitchenMasterData.containsKey('kitchenAddress')) {
          b.kitchenAddress = kitchenMasterData['kitchen_address'] ?? kitchenMasterData['kitchenAddress'];
        }
        if (kitchenMasterData.containsKey('created_by') || kitchenMasterData.containsKey('createdBy')) {
          b.createdBy = kitchenMasterData['created_by'] ?? kitchenMasterData['createdBy'];
        }
        if (kitchenMasterData.containsKey('updated_by') || kitchenMasterData.containsKey('updatedBy')) {
          b.updatedBy = kitchenMasterData['updated_by'] ?? kitchenMasterData['updatedBy'];
        }
        if (kitchenMasterData.containsKey('status')) {
          b.status = kitchenMasterData['status'];
        }
      });
      final response = await api.updateKitchenMaster(
        id: id,
        kitchenMasterInput: request,
      );
      return response.data;
    } catch (e) {
      print('Error in update kitchen master: $e');
      rethrow;
    }
  }

  /// Delete a kitchen master
  Future<dynamic> remove(int id) async {
    try {
      final response = await api.deleteKitchenMaster(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete kitchen master: $e');
      rethrow;
    }
  }
}

/// Recipes Resource Client
/// Handles recipe management operations
class RecipesResourceClient {
  final Dio http;
  final RecipesApi api;

  RecipesResourceClient(this.http, this.api);

  /// Get a recipe by product ID
  Future<dynamic> get(int id) async {
    try {
      final response = await api.getRecipeById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get recipe: $e');
      rethrow;
    }
  }
}

/// Factory functions for creating kitchen resource clients
KitchensResourceClient createKitchensClient(Dio dio, Serializers serializers) {
  final api = KitchensApi(dio, serializers);
  return KitchensResourceClient(dio, api);
}

KitchenMastersResourceClient createKitchenMastersClient(Dio dio, Serializers serializers) {
  final api = KitchenMastersApi(dio, serializers);
  return KitchenMastersResourceClient(dio, api);
}

RecipesResourceClient createRecipesClient(Dio dio, Serializers serializers) {
  final api = RecipesApi(dio, serializers);
  return RecipesResourceClient(dio, api);
}


