import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:openapi/openapi.dart';

class Paginator {
  static List items(dynamic payload) {
    if (payload is Map) return (payload['data'] ?? payload['items'] ?? []) as List;
    if (payload is List) return payload;
    return [];
  }

  static int total(dynamic payload) {
    if (payload is Map) return (payload['meta']?['total'] ?? payload['total'] ?? 0) as int;
    return 0;
  }
}

class ResourceClient {
  final Dio http;
  final InvoicesApi api; // Use correct generated client class
  final String basePath;
  final String byIdPath;

  ResourceClient(this.http, this.api, {required this.basePath, required this.byIdPath});

  Future<dynamic> list(Map<String, dynamic>? params) async {
    try {
      final response = await api.invoicesGet(
        customerId: params?['customer_id'],
        status: params?['status'],
        type: params?['type'],
        companyId: params?['company_id'],
        perPage: params?['per_page'] ?? 10,
      );
      return response.data; // Return the response data directly
    } catch (e) {
      print('Error in list: $e');
      rethrow;
    }
  }

  Future<dynamic> get(Object id) async {
    try {
      final response = await api.invoicesIdGet(id: int.parse(id.toString()));
      return response.data;
    } catch (e) {
      print('Error in get: $e');
      rethrow;
    }
  }

  Future<dynamic> create(Map body) async {
    try {
      // For now, return a placeholder - you can implement this later with proper model creation
      print('Create called with body: $body');
      return {'success': true, 'message': 'Create functionality to be implemented'};
    } catch (e) {
      print('Error in create: $e');
      rethrow;
    }
  }

  Future<dynamic> update(Object id, Map body) async {
    try {
      // For now, return a placeholder - you can implement this later with proper model updates
      print('Update called with id: $id, body: $body');
      return {'success': true, 'message': 'Update functionality to be implemented'};
    } catch (e) {
      print('Error in update: $e');
      rethrow;
    }
  }

  Future<dynamic> remove(Object id) async {
    try {
      final response = await api.invoicesIdDelete(id: int.parse(id.toString()));
      return response.data;
    } catch (e) {
      print('Error in remove: $e');
      rethrow;
    }
  }
}

ResourceClient createResourceClient({required String basePath, required String byIdPath}) {
  final dio = Dio(BaseOptions(
    baseUrl: const String.fromEnvironment('API_URL', defaultValue: 'https://api.onefooddialer.com/v2/invoice'),
  ));

  // Add interceptors for auth if needed (e.g., JWT from your spec)
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      // Add auth token if available
      final token = const String.fromEnvironment('JWT_TOKEN', defaultValue: '');
      if (token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
      return handler.next(options);
    },
  ));

  // Initialize generated client with serializers
  final api = InvoicesApi(dio, standardSerializers);
  return ResourceClient(dio, api, basePath: basePath, byIdPath: byIdPath);
}