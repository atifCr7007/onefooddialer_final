import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Demo admin app without admin client dependencies
void main() {
  runApp(const ProviderScope(child: AdminDemoApp()));
}

class AdminDemoApp extends StatelessWidget {
  const AdminDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'OneFoodDialer Admin Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => AdminShell(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const AdminDashboardDemo(),
        ),
        GoRoute(
          path: '/admin/dashboard',
          builder: (context, state) => const AdminDashboardDemo(),
        ),
        GoRoute(
          path: '/admin/health',
          builder: (context, state) => const AdminHealthDemo(),
        ),
        GoRoute(
          path: '/admin/users',
          builder: (context, state) => const AdminUsersDemo(),
        ),
        GoRoute(
          path: '/admin/roles',
          builder: (context, state) => const AdminRolesDemo(),
        ),
        GoRoute(
          path: '/admin/system',
          builder: (context, state) => const AdminSystemDemo(),
        ),
      ],
    ),
  ],
);

class AdminShell extends StatefulWidget {
  final Widget child;
  const AdminShell({super.key, required this.child});

  @override
  State<AdminShell> createState() => _AdminShellState();
}

class _AdminShellState extends State<AdminShell> {
  bool _isDarkMode = false;
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OneFoodDialer Admin'),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        actions: [
          // Theme toggle
          IconButton(
            icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              setState(() {
                _isDarkMode = !_isDarkMode;
              });
            },
          ),
          // Language selector
          PopupMenuButton<String>(
            icon: const Icon(Icons.language),
            onSelected: (value) {
              setState(() {
                _selectedLanguage = value;
              });
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'English', child: Text('English')),
              const PopupMenuItem(value: 'Spanish', child: Text('Español')),
              const PopupMenuItem(value: 'French', child: Text('Français')),
              const PopupMenuItem(value: 'Arabic', child: Text('العربية')),
              const PopupMenuItem(value: 'Hindi', child: Text('हिन्दी')),
            ],
          ),
          // Profile menu
          PopupMenuButton<String>(
            icon: const Icon(Icons.account_circle),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'profile', child: Text('Profile')),
              const PopupMenuItem(value: 'settings', child: Text('Settings')),
              const PopupMenuItem(value: 'logout', child: Text('Logout')),
            ],
          ),
        ],
      ),
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            color: Colors.grey.shade100,
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.admin_panel_settings, size: 48, color: Colors.white),
                      SizedBox(height: 8),
                      Text('Administration', style: TextStyle(color: Colors.white, fontSize: 18)),
                    ],
                  ),
                ),
                _buildSidebarItem(Icons.dashboard, 'Dashboard', '/admin/dashboard'),
                _buildSidebarItem(Icons.health_and_safety, 'Health', '/admin/health'),
                _buildSidebarItem(Icons.people, 'Users', '/admin/users'),
                _buildSidebarItem(Icons.security, 'Roles', '/admin/roles'),
                _buildSidebarItem(Icons.settings, 'System', '/admin/system'),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Microservices', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                _buildSidebarItem(Icons.receipt, 'Invoice Service', '/invoice'),
                _buildSidebarItem(Icons.kitchen, 'Kitchen Service', '/kitchen'),
                _buildSidebarItem(Icons.payment, 'Payment Service', '/payment'),
                _buildSidebarItem(Icons.people_outline, 'Customer Service', '/customer'),
                _buildSidebarItem(Icons.delivery_dining, 'Delivery Service', '/delivery'),
              ],
            ),
          ),
          // Main content
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: widget.child,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarItem(IconData icon, String title, String route) {
    final isSelected = GoRouter.of(context).routerDelegate.currentConfiguration.uri.path == route;
    
    return ListTile(
      leading: Icon(icon, color: isSelected ? Colors.blue : Colors.grey.shade600),
      title: Text(title, style: TextStyle(
        color: isSelected ? Colors.blue : Colors.grey.shade800,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      )),
      selected: isSelected,
      selectedTileColor: Colors.blue.shade50,
      onTap: () => context.go(route),
    );
  }
}

class AdminDashboardDemo extends StatelessWidget {
  const AdminDashboardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Admin Dashboard', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(child: _buildMetricCard('Total Users', '1,234', Icons.people, Colors.blue)),
              const SizedBox(width: 16),
              Expanded(child: _buildMetricCard('Active Sessions', '89', Icons.login, Colors.green)),
              const SizedBox(width: 16),
              Expanded(child: _buildMetricCard('System Health', '98%', Icons.health_and_safety, Colors.orange)),
              const SizedBox(width: 16),
              Expanded(child: _buildMetricCard('API Calls', '45.2K', Icons.api, Colors.purple)),
            ],
          ),
          const SizedBox(height: 30),
          const Text('Recent Activity', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _buildActivityList(),
        ],
      ),
    );
  }

  Widget _buildMetricCard(String title, String value, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, size: 32, color: color),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(title, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityList() {
    return Card(
      child: Column(
        children: [
          _buildActivityItem('User john.doe@example.com logged in', '2 minutes ago'),
          _buildActivityItem('New order #12345 created', '5 minutes ago'),
          _buildActivityItem('System backup completed', '1 hour ago'),
          _buildActivityItem('User role updated for admin@example.com', '2 hours ago'),
        ],
      ),
    );
  }

  Widget _buildActivityItem(String activity, String time) {
    return ListTile(
      leading: const Icon(Icons.circle, size: 8, color: Colors.blue),
      title: Text(activity),
      trailing: Text(time, style: const TextStyle(color: Colors.grey, fontSize: 12)),
    );
  }
}

class AdminHealthDemo extends StatelessWidget {
  const AdminHealthDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('System Health', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text('✅ All systems operational'),
        SizedBox(height: 10),
        Text('🔧 Database: Healthy'),
        Text('🔧 API Gateway: Healthy'),
        Text('🔧 Cache: Healthy'),
        Text('🔧 File Storage: Healthy'),
      ],
    );
  }
}

class AdminUsersDemo extends StatelessWidget {
  const AdminUsersDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('User Management', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text('👥 Total Users: 1,234'),
        Text('✅ Active Users: 1,156'),
        Text('⏸️ Suspended Users: 78'),
        SizedBox(height: 20),
        Text('User management features would be here...'),
      ],
    );
  }
}

class AdminRolesDemo extends StatelessWidget {
  const AdminRolesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Role Management', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text('🔐 Admin Role'),
        Text('👤 Manager Role'),
        Text('📝 Editor Role'),
        Text('👁️ Viewer Role'),
        SizedBox(height: 20),
        Text('Role management features would be here...'),
      ],
    );
  }
}

class AdminSystemDemo extends StatelessWidget {
  const AdminSystemDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('System Settings', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text('⚙️ General Settings'),
        Text('🔒 Security Settings'),
        Text('📧 Email Configuration'),
        Text('🔔 Notification Settings'),
        SizedBox(height: 20),
        Text('System configuration features would be here...'),
      ],
    );
  }
}
