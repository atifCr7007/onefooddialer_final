import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final healthClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/health',
    byIdPath: '/health/{id}',
  );
});

final healthListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(healthClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final healthGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(healthClientProvider);
  return api.get(id);
});
