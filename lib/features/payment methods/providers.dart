import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final paymentmethodsClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/payment-methods/customer/{customerId}',
    byIdPath: '/payment-methods/{id}',
  );
});

final paymentmethodsListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(paymentmethodsClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final paymentmethodsGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(paymentmethodsClientProvider);
  return api.get(id);
});
