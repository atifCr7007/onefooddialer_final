import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final paymentsClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/payments/{id}',
    byIdPath: '/payments/{id}',
  );
});

final paymentsListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(paymentsClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final paymentsGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(paymentsClientProvider);
  return api.get(id);
});
