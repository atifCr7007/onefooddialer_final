import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'auth_providers.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});
  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    final st = ref.watch(authStateProvider);
    final loading = st.isLoading;
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                const Text('Admin Login', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                TextField(controller: email, decoration: const InputDecoration(labelText: 'Email')),
                const SizedBox(height: 8),
                TextField(controller: password, decoration: const InputDecoration(labelText: 'Password'), obscureText: obscure),
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: loading ? null : () async {
                    await ref.read(authControllerProvider.notifier).login(email.text, password.text);
                    if (mounted) context.go('/dashboard');
                  },
                  child: loading ? const CircularProgressIndicator() : const Text('Login'),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
