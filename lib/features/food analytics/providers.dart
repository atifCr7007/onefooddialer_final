import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final foodanalyticsClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/food',
    byIdPath: '/food/{id}',
  );
});

final foodanalyticsListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(foodanalyticsClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final foodanalyticsGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(foodanalyticsClientProvider);
  return api.get(id);
});
