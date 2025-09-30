import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';
import 'dart:convert';

class HealthDetailsPage extends ConsumerWidget {
  final Object id;
  const HealthDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncData = ref.watch(healthGetProvider(id));
    return asyncData.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Error: $e')),
      data: (data) => SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: SelectableText(const JsonEncoder.withIndent('  ').convert(data)),
      ),
    );
  }
}
