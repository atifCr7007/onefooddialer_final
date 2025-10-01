import 'dart:io';

/// Script to start all mock servers safely
/// Run with: dart run lib/mock_server/start_all_mocks.dart
void main() async {
  print('');
  print('═══════════════════════════════════════════════════════════');
  print('🚀 Starting All OneFoodDialer Mock Servers');
  print('═══════════════════════════════════════════════════════════');
  print('');

  final servers = [
    {'name': 'Auth', 'port': 8012, 'file': 'auth_mock_server.dart'},
    {'name': 'Customer', 'port': 8001, 'file': 'customer_mock_server.dart'},
    {'name': 'Order', 'port': 8002, 'file': 'order_mock_server.dart'},
    {'name': 'Meal', 'port': 8003, 'file': 'meal_mock_server.dart'},
    {'name': 'Payment', 'port': 8004, 'file': 'payment_mock_server.dart'},
    {'name': 'Catalogs', 'port': 8005, 'file': 'catalogs_mock_server.dart'},
    {'name': 'Kitchen', 'port': 8006, 'file': 'kitchen_mock_server.dart'},
    {'name': 'Delivery', 'port': 8007, 'file': 'delivery_mock_server.dart'},
    {'name': 'Analytics', 'port': 8008, 'file': 'analytics_mock_server.dart'},
    {'name': 'Admin', 'port': 8009, 'file': 'admin_mock_server.dart'},
    {'name': 'Subscription', 'port': 8010, 'file': 'subscription_mock_server.dart'},
    {'name': 'QuickServer', 'port': 8011, 'file': 'quickserver_mock_server.dart'},
  ];

  for (final server in servers) {
    final file = 'lib/mock_server/${server['file']}';
    final serverFile = File(file);

    if (!serverFile.existsSync()) {
      print('⚠️  ${server['name']} server file not found: $file');
      continue;
    }

    // Check if port is already in use
    final port = server['port'] as int;
    final portInUse = await isPortInUse(port);
    if (portInUse) {
      print('❌ Port $port already in use for ${server['name']} server. Skipping...');
      continue;
    }

    try {
      print('Starting ${server['name']} server on port $port...');
      final process = await Process.start(
        'dart',
        ['run', file],
      );

      // Listen to output
      process.stdout.transform(SystemEncoding().decoder).listen((data) {
        print(data.trim());
      });

      process.stderr.transform(SystemEncoding().decoder).listen((data) {
        print('ERROR [${server['name']}]: ${data.trim()}');
      });

      // Small delay between server starts
      await Future.delayed(const Duration(milliseconds: 500));
    } catch (e) {
      print('❌ Failed to start ${server['name']} server: $e');
    }
  }

  print('');
  print('═══════════════════════════════════════════════════════════');
  print('✅ All mock servers started!');
  print('═══════════════════════════════════════════════════════════');
  print('');
  print('Mock Server URLs:');
  print('  Auth            → http://localhost:8012');
  print('  Customer        → http://localhost:8001');
  print('  Order           → http://localhost:8002');
  print('  Meal            → http://localhost:8003');
  print('  Payment         → http://localhost:8004');
  print('  Catalogs        → http://localhost:8005');
  print('  Kitchen         → http://localhost:8006');
  print('  Delivery        → http://localhost:8007');
  print('  Analytics       → http://localhost:8008');
  print('  Admin           → http://localhost:8009');
  print('  Subscription    → http://localhost:8010');
  print('  QuickServer     → http://localhost:8011');
  print('');
  print('Press Ctrl+C to stop all servers');
  print('');

  // Keep the process alive
  await Future.delayed(const Duration(days: 365));
}

/// Utility to check if a port is in use
Future<bool> isPortInUse(int port) async {
  try {
    final server = await ServerSocket.bind(InternetAddress.loopbackIPv4, port);
    await server.close();
    return false;
  } catch (_) {
    return true;
  }
}
