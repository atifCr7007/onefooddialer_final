import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final orderitemsClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/orders/{orderId}/items',
    byIdPath: '/orders/{orderId}/items/{id}',
  );
});

final orderitemsListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(orderitemsClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final orderitemsGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(orderitemsClientProvider);
  return api.get(id);
});
