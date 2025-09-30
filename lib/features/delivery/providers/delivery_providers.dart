import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:delivery_client/delivery_client.dart';
import 'package:food_one/flutter-ui-codegen-pack-extended-fixed/lib/shared/delivery_resource_clients.dart';
import 'package:built_value/serializer.dart';

// Dio provider for delivery API
final deliveryDioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.onefooddialer.com/v2/delivery',
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));
  
  // Add interceptors for logging, auth, etc.
  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    responseBody: true,
  ));
  
  return dio;
});

// Serializers provider
final deliverySerializersProvider = Provider<Serializers>((ref) {
  return standardSerializers;
});

// Delivery Orders Resource Client Provider
final deliveryOrdersClientProvider = Provider<DeliveryOrdersResourceClient>((ref) {
  final dio = ref.watch(deliveryDioProvider);
  final serializers = ref.watch(deliverySerializersProvider);
  return createDeliveryOrdersClient(dio, serializers);
});

// Delivery Locations Resource Client Provider
final deliveryLocationsClientProvider = Provider<DeliveryLocationsResourceClient>((ref) {
  final dio = ref.watch(deliveryDioProvider);
  final serializers = ref.watch(deliverySerializersProvider);
  return createDeliveryLocationsClient(dio, serializers);
});

// Third Party Delivery Resource Client Provider
final thirdPartyDeliveryClientProvider = Provider<ThirdPartyDeliveryResourceClient>((ref) {
  final dio = ref.watch(deliveryDioProvider);
  final serializers = ref.watch(deliverySerializersProvider);
  return createThirdPartyDeliveryClient(dio, serializers);
});

// Delivery orders list provider with filters
final deliveryOrdersListProvider = FutureProvider.family<dynamic, ({int? locationId, Date? date})>((ref, params) async {
  final client = ref.watch(deliveryOrdersClientProvider);
  return await client.list(
    locationId: params.locationId,
    date: params.date,
  );
});

// Search orders provider
final deliveryOrdersSearchProvider = FutureProvider.family<dynamic, ({String search, int? locationId})>((ref, params) async {
  final client = ref.watch(deliveryOrdersClientProvider);
  return await client.search(
    search: params.search,
    locationId: params.locationId,
  );
});

// Delivery locations list provider
final deliveryLocationsListProvider = FutureProvider<dynamic>((ref) async {
  final client = ref.watch(deliveryLocationsClientProvider);
  return await client.list();
});

// Update delivery status action provider
final deliveryUpdateStatusProvider = Provider<Future<dynamic> Function(int, Map<String, dynamic>)>((ref) {
  return (orderId, statusData) async {
    final client = ref.read(deliveryOrdersClientProvider);
    final result = await client.updateStatus(orderId, statusData);
    // Invalidate orders list to refresh
    ref.invalidate(deliveryOrdersListProvider);
    return result;
  };
});

// Book third-party delivery action provider
final thirdPartyBookProvider = Provider<Future<dynamic> Function(Map<String, dynamic>)>((ref) {
  return (bookingData) async {
    final client = ref.read(thirdPartyDeliveryClientProvider);
    final result = await client.book(bookingData);
    // Invalidate orders list to refresh
    ref.invalidate(deliveryOrdersListProvider);
    return result;
  };
});

// Get third-party delivery status provider
final thirdPartyStatusProvider = FutureProvider.family<dynamic, int>((ref, orderId) async {
  final client = ref.watch(thirdPartyDeliveryClientProvider);
  return await client.getStatus(orderId);
});

// Cancel third-party delivery action provider
final thirdPartyCancelProvider = Provider<Future<dynamic> Function(int)>((ref) {
  return (orderId) async {
    final client = ref.read(thirdPartyDeliveryClientProvider);
    final result = await client.cancel(orderId);
    // Invalidate orders list and status
    ref.invalidate(deliveryOrdersListProvider);
    ref.invalidate(thirdPartyStatusProvider(orderId));
    return result;
  };
});

