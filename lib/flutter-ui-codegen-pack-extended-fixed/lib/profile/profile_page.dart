import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../auth/auth_providers.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(authStateProvider);
    final user = s.asData?.value.user ?? {};
    final name = (user['name'] ?? 'User').toString();
    final email = (user['email'] ?? '').toString();
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        ListTile(title: Text(name), subtitle: Text(email), leading: const CircleAvatar(child: Icon(Icons.person))),
        const Divider(),
        ListTile(title: const Text('Update Profile'), trailing: const Icon(Icons.chevron_right), onTap: (){}),
        ListTile(title: const Text('Change Password'), trailing: const Icon(Icons.chevron_right), onTap: (){}),
      ],
    );
  }
}
