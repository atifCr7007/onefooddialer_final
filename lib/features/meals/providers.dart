import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_codegen_pack_extended_fixed/shared/resource_client.dart';

final mealsClientProvider = Provider((ref) {
  return createResourceClient(
    basePath: '/meals',
    byIdPath: '/meals/{id}',
  );
});

final mealsListProvider = FutureProvider.family((ref, Map<String, dynamic> params) async {
  final api = ref.read(mealsClientProvider);
  final payload = await api.list(params);
  return Paginator.items(payload);
});

final mealsGetProvider = FutureProvider.family((ref, Object id) async {
  final api = ref.read(mealsClientProvider);
  return api.get(id);
});
