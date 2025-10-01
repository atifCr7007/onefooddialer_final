import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final ordertrackingClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/orders/{orderId}/tracking',
    byIdPath: '/orders/{orderId}/tracking/{id}',
  );
});

final ordertrackingListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(ordertrackingClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final ordertrackingGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(ordertrackingClientProvider);
  return api.get(id);
});
