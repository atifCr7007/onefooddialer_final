import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final customersClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/customers',
    byIdPath: '/customers/{id}',
  );
});

final customersListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(customersClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final customersGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(customersClientProvider);
  return api.get(id);
});
