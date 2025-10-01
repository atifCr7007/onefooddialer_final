import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'admin/admin_app.dart';
import 'config/app_config.dart';

void main() {
  // Print and validate configuration on startup
  AppConfig.printConfig();
  AppConfig.validate();

  runApp(const ProviderScope(child: OneFoodDialerAdmin()));
}
