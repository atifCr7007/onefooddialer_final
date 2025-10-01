import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final customeranalyticsClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/customer',
    byIdPath: '/customer/{id}',
  );
});

final customeranalyticsListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(customeranalyticsClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final customeranalyticsGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(customeranalyticsClientProvider);
  return api.get(id);
});
