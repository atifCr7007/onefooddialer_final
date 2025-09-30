import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ui/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: OneFoodAdminApp()));
}

class OneFoodAdminApp extends ConsumerWidget {
  const OneFoodAdminApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = createRouter();
    return MaterialApp.router(
      title: 'OneFoodDialer Admin',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      routerConfig: router,
    );
  }
}
