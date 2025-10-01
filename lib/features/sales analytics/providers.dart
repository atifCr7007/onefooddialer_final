import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final salesanalyticsClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/sales',
    byIdPath: '/sales/{id}',
  );
});

final salesanalyticsListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(salesanalyticsClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final salesanalyticsGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(salesanalyticsClientProvider);
  return api.get(id);
});
