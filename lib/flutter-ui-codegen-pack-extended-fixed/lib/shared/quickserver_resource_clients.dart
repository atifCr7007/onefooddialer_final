import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:quickserver_client/quickserver_client.dart';

/// QuickServer Resource Client
/// Handles all QuickServer API operations using the generated client
class QuickServerResourceClient {
  final Dio http;
  final BackordersApi backordersApi;
  final OrdersApi ordersApi;
  final TimeslotsApi timeslotsApi;
  final LocationsApi locationsApi;
  final ConfigApi configApi;
  final HealthApi healthApi;

  QuickServerResourceClient(
    this.http,
    this.backordersApi,
    this.ordersApi,
    this.timeslotsApi,
    this.locationsApi,
    this.configApi,
    this.healthApi,
  );

  // ========== Backorders API Endpoints (8 methods) ==========

  /// Get all backorders
  Future<GetBackorders200Response?> getBackorders({
    int? customerId,
    int? orderId,
    int? productId,
    String? status,
    Date? orderDate,
    Date? startDate,
    Date? endDate,
  }) async {
    try {
      final response = await backordersApi.getBackorders(
        customerId: customerId,
        orderId: orderId,
        productId: productId,
        status: status,
        orderDate: orderDate,
        startDate: startDate,
        endDate: endDate,
      );
      return response.data;
    } catch (e) {
      print('Error in get backorders: $e');
      rethrow;
    }
  }

  /// Get backorder by ID
  Future<GetBackorderById200Response?> getBackorderById(int id) async {
    try {
      final response = await backordersApi.getBackorderById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get backorder by ID: $e');
      rethrow;
    }
  }

  /// Create a new backorder
  Future<CreateBackorder200Response?> createBackorder(BackorderCreate backorderCreate) async {
    try {
      final response = await backordersApi.createBackorder(backorderCreate: backorderCreate);
      return response.data;
    } catch (e) {
      print('Error in create backorder: $e');
      rethrow;
    }
  }

  /// Update a backorder
  Future<UpdateBackorder200Response?> updateBackorder(int id, BackorderUpdate backorderUpdate) async {
    try {
      final response = await backordersApi.updateBackorder(
        id: id,
        backorderUpdate: backorderUpdate,
      );
      return response.data;
    } catch (e) {
      print('Error in update backorder: $e');
      rethrow;
    }
  }

  /// Delete a backorder
  Future<DeleteBackorder200Response?> deleteBackorder(int id) async {
    try {
      final response = await backordersApi.deleteBackorder(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete backorder: $e');
      rethrow;
    }
  }

  /// Cancel a backorder
  Future<CancelBackorder200Response?> cancelBackorder(int id) async {
    try {
      final response = await backordersApi.cancelBackorder(id: id);
      return response.data;
    } catch (e) {
      print('Error in cancel backorder: $e');
      rethrow;
    }
  }

  /// Complete a backorder
  Future<CompleteBackorder200Response?> completeBackorder(int id) async {
    try {
      final response = await backordersApi.completeBackorder(id: id);
      return response.data;
    } catch (e) {
      print('Error in complete backorder: $e');
      rethrow;
    }
  }

  /// Create backorder from order
  Future<CreateBackorderFromOrder200Response?> createBackorderFromOrder(CreateBackorderFromOrderRequest request) async {
    try {
      final response = await backordersApi.createBackorderFromOrder(createBackorderFromOrderRequest: request);
      return response.data;
    } catch (e) {
      print('Error in create backorder from order: $e');
      rethrow;
    }
  }

  // ========== Orders API Endpoints (5 methods) ==========

  /// Get all orders
  Future<GetOrders200Response?> getOrders({
    String? orderStatus,
    String? deliveryStatus,
    String? orderMenu,
    Date? fromDate,
    Date? toDate,
    int? perPage = 15,
    int? page = 1,
  }) async {
    try {
      final response = await ordersApi.getOrders(
        orderStatus: orderStatus,
        deliveryStatus: deliveryStatus,
        orderMenu: orderMenu,
        fromDate: fromDate,
        toDate: toDate,
        perPage: perPage,
        page: page,
      );
      return response.data;
    } catch (e) {
      print('Error in get orders: $e');
      rethrow;
    }
  }

  /// Get order by ID
  Future<GetOrderById200Response?> getOrderById(int id) async {
    try {
      final response = await ordersApi.getOrderById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get order by ID: $e');
      rethrow;
    }
  }

  /// Create a new order
  Future<CreateOrder200Response?> createOrder(OrderCreate orderCreate) async {
    try {
      final response = await ordersApi.createOrder(orderCreate: orderCreate);
      return response.data;
    } catch (e) {
      print('Error in create order: $e');
      rethrow;
    }
  }

  /// Update an order
  Future<UpdateOrder200Response?> updateOrder(int id, OrderUpdate orderUpdate) async {
    try {
      final response = await ordersApi.updateOrder(
        id: id,
        orderUpdate: orderUpdate,
      );
      return response.data;
    } catch (e) {
      print('Error in update order: $e');
      rethrow;
    }
  }

  /// Delete an order
  Future<DeleteOrder200Response?> deleteOrder(int id) async {
    try {
      final response = await ordersApi.deleteOrder(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete order: $e');
      rethrow;
    }
  }

  // ========== Timeslots API Endpoints (6 methods) ==========

  /// Get all timeslots
  Future<GetTimeslots200Response?> getTimeslots({
    String? day,
    String? menuType,
    String? kitchen,
    int? status,
  }) async {
    try {
      final response = await timeslotsApi.getTimeslots(
        day: day,
        menuType: menuType,
        kitchen: kitchen,
        status: status,
      );
      return response.data;
    } catch (e) {
      print('Error in get timeslots: $e');
      rethrow;
    }
  }

  /// Get available timeslots
  Future<GetTimeslots200Response?> getAvailableTimeslots({
    required String day,
    required String menuType,
    required String kitchen,
    Date? orderDate,
  }) async {
    try {
      final response = await timeslotsApi.getAvailableTimeslots(
        day: day,
        menuType: menuType,
        kitchen: kitchen,
        orderDate: orderDate,
      );
      return response.data;
    } catch (e) {
      print('Error in get available timeslots: $e');
      rethrow;
    }
  }

  /// Get timeslot by ID
  Future<GetTimeslotById200Response?> getTimeslotById(int id) async {
    try {
      final response = await timeslotsApi.getTimeslotById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get timeslot by ID: $e');
      rethrow;
    }
  }

  /// Create a new timeslot
  Future<CreateTimeslot200Response?> createTimeslot(TimeslotCreate timeslotCreate) async {
    try {
      final response = await timeslotsApi.createTimeslot(timeslotCreate: timeslotCreate);
      return response.data;
    } catch (e) {
      print('Error in create timeslot: $e');
      rethrow;
    }
  }

  /// Update a timeslot
  Future<UpdateTimeslot200Response?> updateTimeslot(int id, TimeslotUpdate timeslotUpdate) async {
    try {
      final response = await timeslotsApi.updateTimeslot(
        id: id,
        timeslotUpdate: timeslotUpdate,
      );
      return response.data;
    } catch (e) {
      print('Error in update timeslot: $e');
      rethrow;
    }
  }

  /// Delete a timeslot
  Future<DeleteTimeslot200Response?> deleteTimeslot(int id) async {
    try {
      final response = await timeslotsApi.deleteTimeslot(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete timeslot: $e');
      rethrow;
    }
  }

  // ========== Locations API Endpoints (7 methods) ==========

  /// Get all location mappings
  Future<GetLocationMappings200Response?> getLocationMappings({
    String? cityCode,
    String? kitchenCode,
    int? status,
    String? search,
  }) async {
    try {
      final response = await locationsApi.getLocationMappings(
        cityCode: cityCode,
        kitchenCode: kitchenCode,
        status: status,
        search: search,
      );
      return response.data;
    } catch (e) {
      print('Error in get location mappings: $e');
      rethrow;
    }
  }

  /// Get location mapping by ID
  Future<GetLocationMappingById200Response?> getLocationMappingById(int id) async {
    try {
      final response = await locationsApi.getLocationMappingById(id: id);
      return response.data;
    } catch (e) {
      print('Error in get location mapping by ID: $e');
      rethrow;
    }
  }

  /// Get locations by city
  Future<GetLocationMappings200Response?> getLocationsByCity(String cityCode) async {
    try {
      final response = await locationsApi.getLocationsByCity(cityCode: cityCode);
      return response.data;
    } catch (e) {
      print('Error in get locations by city: $e');
      rethrow;
    }
  }

  /// Get locations by kitchen
  Future<GetLocationMappings200Response?> getLocationsByKitchen(String kitchenCode) async {
    try {
      final response = await locationsApi.getLocationsByKitchen(kitchenCode: kitchenCode);
      return response.data;
    } catch (e) {
      print('Error in get locations by kitchen: $e');
      rethrow;
    }
  }

  /// Create a new location mapping
  Future<CreateLocationMapping200Response?> createLocationMapping(LocationMappingCreate locationMappingCreate) async {
    try {
      final response = await locationsApi.createLocationMapping(locationMappingCreate: locationMappingCreate);
      return response.data;
    } catch (e) {
      print('Error in create location mapping: $e');
      rethrow;
    }
  }

  /// Update a location mapping
  Future<UpdateLocationMapping200Response?> updateLocationMapping(int id, LocationMappingUpdate locationMappingUpdate) async {
    try {
      final response = await locationsApi.updateLocationMapping(
        id: id,
        locationMappingUpdate: locationMappingUpdate,
      );
      return response.data;
    } catch (e) {
      print('Error in update location mapping: $e');
      rethrow;
    }
  }

  /// Delete a location mapping
  Future<DeleteLocationMapping200Response?> deleteLocationMapping(int id) async {
    try {
      final response = await locationsApi.deleteLocationMapping(id: id);
      return response.data;
    } catch (e) {
      print('Error in delete location mapping: $e');
      rethrow;
    }
  }

  // ========== Config API Endpoints (4 methods) ==========

  /// Get all config
  Future<GetAllConfig200Response?> getAllConfig() async {
    try {
      final response = await configApi.getAllConfig();
      return response.data;
    } catch (e) {
      print('Error in get all config: $e');
      rethrow;
    }
  }

  /// Get all settings
  Future<GetAllSettings200Response?> getAllSettings() async {
    try {
      final response = await configApi.getAllSettings();
      return response.data;
    } catch (e) {
      print('Error in get all settings: $e');
      rethrow;
    }
  }

  /// Get config by key
  Future<GetConfigByKey200Response?> getConfigByKey(String key) async {
    try {
      final response = await configApi.getConfigByKey(key: key);
      return response.data;
    } catch (e) {
      print('Error in get config by key: $e');
      rethrow;
    }
  }

  /// Update config by key
  Future<UpdateConfigByKey200Response?> updateConfigByKey(String key, UpdateConfigByKeyRequest updateConfigByKeyRequest) async {
    try {
      final response = await configApi.updateConfigByKey(
        key: key,
        updateConfigByKeyRequest: updateConfigByKeyRequest,
      );
      return response.data;
    } catch (e) {
      print('Error in update config by key: $e');
      rethrow;
    }
  }

  // ========== Health API Endpoints (1 method) ==========

  /// Health check
  Future<HealthCheck200Response?> healthCheck() async {
    try {
      final response = await healthApi.healthCheck();
      return response.data;
    } catch (e) {
      print('Error in health check: $e');
      rethrow;
    }
  }
}

/// Factory function for creating QuickServer resource client
QuickServerResourceClient createQuickServerClient(Dio dio, Serializers serializers) {
  final backordersApi = BackordersApi(dio, serializers);
  final ordersApi = OrdersApi(dio, serializers);
  final timeslotsApi = TimeslotsApi(dio, serializers);
  final locationsApi = LocationsApi(dio, serializers);
  final configApi = ConfigApi(dio, serializers);
  final healthApi = HealthApi(dio, serializers);

  return QuickServerResourceClient(
    dio,
    backordersApi,
    ordersApi,
    timeslotsApi,
    locationsApi,
    configApi,
    healthApi,
  );
}

