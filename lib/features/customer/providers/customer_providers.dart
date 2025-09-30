import 'package:built_value/serializer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:customer_client/openapi.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/customer_resource_clients.dart';

// Dio provider for customer API
final customerDioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: const String.fromEnvironment(
      'CUSTOMER_API_URL',
      defaultValue: 'https://api.onefooddialer.com/v2/customer-service-v12',
    ),
    headers: {
      'Authorization': 'Bearer ${const String.fromEnvironment('JWT_TOKEN', defaultValue: 'test-token')}',
      'Content-Type': 'application/json',
    },
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ));
  return dio;
});

// Serializers provider
final customerSerializersProvider = Provider<Serializers>((ref) {
  return standardSerializers;
});

// Customer resource client provider
final customerClientProvider = Provider<CustomerResourceClient>((ref) {
  final dio = ref.watch(customerDioProvider);
  final serializers = ref.watch(customerSerializersProvider);
  return createCustomerClient(dio, serializers);
});

// Customer address resource client provider
final customerAddressClientProvider = Provider<CustomerAddressResourceClient>((ref) {
  final dio = ref.watch(customerDioProvider);
  final serializers = ref.watch(customerSerializersProvider);
  return createCustomerAddressClient(dio, serializers);
});

// Customer list params class
class CustomerListParams {
  final int page;
  final int perPage;
  final String? search;
  final bool? status;
  final int? companyId;
  final int? unitId;
  final String? orderBy;
  final String? orderDir;

  const CustomerListParams({
    this.page = 1,
    this.perPage = 10,
    this.search,
    this.status,
    this.companyId,
    this.unitId,
    this.orderBy,
    this.orderDir,
  });

  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'per_page': perPage,
      if (search != null && search!.isNotEmpty) 'search': search,
      if (status != null) 'status': status,
      if (companyId != null) 'company_id': companyId,
      if (unitId != null) 'unit_id': unitId,
      if (orderBy != null) 'order_by': orderBy,
      if (orderDir != null) 'order_dir': orderDir,
    };
  }

  CustomerListParams copyWith({
    int? page,
    int? perPage,
    String? search,
    bool? status,
    int? companyId,
    int? unitId,
    String? orderBy,
    String? orderDir,
  }) {
    return CustomerListParams(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      search: search ?? this.search,
      status: status ?? this.status,
      companyId: companyId ?? this.companyId,
      unitId: unitId ?? this.unitId,
      orderBy: orderBy ?? this.orderBy,
      orderDir: orderDir ?? this.orderDir,
    );
  }
}

// Customer list provider
final customerListProvider = FutureProvider.family<dynamic, CustomerListParams>((ref, params) async {
  final client = ref.watch(customerClientProvider);
  return await client.list(
    page: params.page,
    perPage: params.perPage,
    search: params.search,
    status: params.status,
    companyId: params.companyId,
    unitId: params.unitId,
    orderBy: params.orderBy,
    orderDir: params.orderDir,
  );
});

// Customer detail provider
final customerDetailProvider = FutureProvider.family<dynamic, int>((ref, id) async {
  final client = ref.watch(customerClientProvider);
  return await client.get(id);
});

// Customer create action provider
final customerCreateProvider = Provider<Future<dynamic> Function(Map<String, dynamic>)>((ref) {
  return (customerData) async {
    final client = ref.read(customerClientProvider);
    final result = await client.create(customerData);
    // Invalidate list to refresh
    ref.invalidate(customerListProvider);
    return result;
  };
});

// Customer update action provider
final customerUpdateProvider = Provider<Future<dynamic> Function(int, Map<String, dynamic>)>((ref) {
  return (id, customerData) async {
    final client = ref.read(customerClientProvider);
    final result = await client.update(id, customerData);
    // Invalidate both list and detail
    ref.invalidate(customerListProvider);
    ref.invalidate(customerDetailProvider(id));
    return result;
  };
});

// Customer delete action provider
final customerDeleteProvider = Provider<Future<dynamic> Function(int)>((ref) {
  return (id) async {
    final client = ref.read(customerClientProvider);
    final result = await client.remove(id);
    // Invalidate list
    ref.invalidate(customerListProvider);
    return result;
  };
});

// Customer address create action provider
final customerAddressCreateProvider = Provider<Future<dynamic> Function(int, Map<String, dynamic>)>((ref) {
  return (customerId, addressData) async {
    final client = ref.read(customerAddressClientProvider);
    final result = await client.create(customerId, addressData);
    return result;
  };
});

// Customer address update action provider
final customerAddressUpdateProvider = Provider<Future<dynamic> Function(int, int, Map<String, dynamic>)>((ref) {
  return (customerId, addressId, addressData) async {
    final client = ref.read(customerAddressClientProvider);
    final result = await client.update(customerId, addressId, addressData);
    return result;
  };
});

// Customer address delete action provider
final customerAddressDeleteProvider = Provider<Future<dynamic> Function(int, int)>((ref) {
  return (customerId, addressId) async {
    final client = ref.read(customerAddressClientProvider);
    final result = await client.remove(customerId, addressId);
    return result;
  };
});

