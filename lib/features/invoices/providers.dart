import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final invoicesClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/invoices',
    byIdPath: '/invoices/{id}',
  );
});

final invoicesListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(invoicesClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final invoicesGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(invoicesClientProvider);
  return api.get(id);
});
