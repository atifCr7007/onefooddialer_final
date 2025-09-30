import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final customeraddressesClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '',
    byIdPath: '/customers/{id}/addresses',
  );
});

final customeraddressesListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(customeraddressesClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final customeraddressesGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(customeraddressesClientProvider);
  return api.get(id);
});
