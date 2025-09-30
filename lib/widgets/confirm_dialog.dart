import 'package:flutter/material.dart';

Future<void> showConfirmDialog(BuildContext context, String title, String desc, {VoidCallback? onConfirm}) async {
  final ok = await showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: Text(desc),
      actions: [
        TextButton(onPressed: () => Navigator.of(ctx).pop(false), child: const Text('Cancel')),
        FilledButton(onPressed: () => Navigator.of(ctx).pop(true), child: const Text('Confirm')),
      ],
    ),
  );
  if (ok == true) onConfirm?.call();
}
