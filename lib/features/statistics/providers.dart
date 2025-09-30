import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final statisticsClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/invoices/statistics',
    byIdPath: '/invoices/statistics/{id}',
  );
});

final statisticsListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(statisticsClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final statisticsGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(statisticsClientProvider);
  return api.get(id);
});
