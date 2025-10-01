import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final ordermanagementClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/orders',
    byIdPath: '/orders/{id}',
  );
});

final ordermanagementListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(ordermanagementClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final ordermanagementGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(ordermanagementClientProvider);
  return api.get(id);
});
