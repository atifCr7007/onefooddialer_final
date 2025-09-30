import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminShell extends StatelessWidget {
  final Widget child;
  const AdminShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => context.go('/profile'),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => context.go('/login'),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('OneFoodDialer')),
            _nav(context, '/dashboard', 'Dashboard', Icons.dashboard),
            const Divider(),
            _nav(context, '/features/orders', 'Orders', Icons.receipt_long),
            _nav(context, '/features/menu', 'Menu', Icons.restaurant_menu),
            _nav(context, '/features/customers', 'Customers', Icons.people),
            _nav(context, '/features/kitchen', 'Kitchen', Icons.kitchen),
            _nav(context, '/features/deliveries', 'Deliveries', Icons.delivery_dining),
            _nav(context, '/features/wallet', 'Wallet', Icons.account_balance_wallet),
            _nav(context, '/features/payments', 'Payments', Icons.payments),
            const Divider(),
            _nav(context, '/profile', 'Profile', Icons.person),
          ],
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(12), child: child),
    );
  }

  Widget _nav(BuildContext ctx, String path, String label, IconData icon) {
    final sel = GoRouterState.of(ctx).matchedLocation.startsWith(path);
    return ListTile(
      selected: sel,
      leading: Icon(icon),
      title: Text(label),
      onTap: () => ctx.go(path),
    );
  }
}
