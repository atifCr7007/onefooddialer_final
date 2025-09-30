import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final integrationClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/integration/preparation-status',
    byIdPath: '/integration/preparation-status/{id}',
  );
});

final integrationListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(integrationClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final integrationGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(integrationClientProvider);
  return api.get(id);
});
