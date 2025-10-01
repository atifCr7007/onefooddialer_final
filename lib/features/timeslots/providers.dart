import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quickserver_client/quickserver_client.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/quickserver_resource_clients.dart';
import '../../../config/app_config.dart';

/// Dio instance configured for QuickServer service (shared)
final quickserverDioProvider = Provider((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConfig.quickServerBaseUrl,
    headers: {
      'Content-Type': 'application/json',
    },
    connectTimeout: AppConfig.connectTimeout,
    receiveTimeout: AppConfig.receiveTimeout,
  ));

  if (AppConfig.isDebugMode) {
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
      logPrint: (obj) => print('🔵 [QuickServer API] $obj'),
    ));
  }

  return dio;
});

/// QuickServer resource client provider
final timeslotsClientProvider = Provider((ref) {
  final dio = ref.read(quickserverDioProvider);
  final serializers = standardSerializers;
  return createQuickServerClient(dio, serializers);
});

/// Get all timeslots
final timeslotsListProvider = FutureProvider.autoDispose.family<GetTimeslots200Response?, Map<String, dynamic>>((ref, params) async {
  final client = ref.read(timeslotsClientProvider);
  return await client.getTimeslots(
    day: params['day'] as String?,
    menuType: params['menu_type'] as String?,
    kitchen: params['kitchen'] as String?,
    status: params['status'] as int?,
  );
});

/// Get timeslot by ID
final timeslotsGetProvider = FutureProvider.autoDispose.family<GetTimeslotById200Response?, int>((ref, id) async {
  final client = ref.read(timeslotsClientProvider);
  return await client.getTimeslotById(id);
});
