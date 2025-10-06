import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';
import 'package:food_one/widgets/confirm_dialog.dart';

class InvoicesListPage extends ConsumerStatefulWidget {
  const InvoicesListPage({super.key});

  @override
  ConsumerState<InvoicesListPage> createState() => _InvoicesListPageState();
}

class _InvoicesListPageState extends ConsumerState<InvoicesListPage> {
  int page = 1;
  int perPage = 10;
  String q = '';
  final selected = <int>{};

  @override
  Widget build(BuildContext context) {
    final params = {'page': page, 'per_page': perPage, 'search': q};
    final asyncData = ref.watch(invoicesListProvider(params));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(child: TextField(
              decoration: const InputDecoration(prefixIcon: Icon(Icons.search), hintText: 'Search'),
              onChanged: (v) => setState(()=> q = v),
            )),
            const SizedBox(width: 8),
            FilledButton(onPressed: () {}, child: const Text('New')),
          ],
        ),
        const SizedBox(height: 12),
        Expanded(
          child: asyncData.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, st) => Center(child: Text('Error: $e')),
            data: (rows) {
              // if (rows is! List) return const Center(child: Text('No data'));
              return ListView.separated(
                itemCount: rows.length,
                separatorBuilder: (_, __) => const Divider(height: 1),
                itemBuilder: (context, i) {
                  final row = rows[i] as Map;
                  return ListTile(
                    leading: Checkbox(
                      value: selected.contains(i),
                      onChanged: (v) => setState((){ v==true ? selected.add(i) : selected.remove(i); }),
                    ),
                    title: Text((row['name'] ?? row['title'] ?? row['id']).toString()),
                    subtitle: Text(row.toString()),
                    trailing: Wrap(spacing: 8, children: [
                      IconButton(icon: const Icon(Icons.visibility), onPressed: () {}),
                      IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => showConfirmDialog(context, 'Delete?', 'Are you sure?', onConfirm: (){}),
                      ),
                    ]),
                    onTap: () {},
                  );
                },
              );
            },
          ),
        ),
        Row(
          children: [
            Text('Selected: ${selected.length}'),
            const Spacer(),
            IconButton(onPressed: page>1? ()=> setState(()=> page--) : null, icon: const Icon(Icons.chevron_left)),
            Text('Page $page'),
            IconButton(onPressed: ()=> setState(()=> page++), icon: const Icon(Icons.chevron_right)),
          ],
        )
      ],
    );
  }
}
