import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/theme_provider.dart';
import '../providers/locale_provider.dart';
import '../providers/navigation_provider.dart';
import '../../services/auth_service.dart';

class AdminNavbar extends ConsumerWidget implements PreferredSizeWidget {
  const AdminNavbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationProvider);
    final currentLocale = ref.watch(localeProvider);
    final localeNotifier = ref.read(localeProvider.notifier);

    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 32,
            errorBuilder: (context, error, stackTrace) => const Icon(
              Icons.restaurant,
              size: 32,
              color: Colors.orange,
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            'OneFoodDialer Admin',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          ref.read(navigationProvider.notifier).toggleSidebar();
        },
        tooltip: 'Toggle Sidebar',
      ),
      actions: [
        // Theme Toggle
        IconButton(
          icon: Icon(
            ref.watch(themeModeProvider) == ThemeMode.dark
                ? Icons.light_mode
                : Icons.dark_mode,
          ),
          onPressed: () {
            ref.read(themeModeProvider.notifier).toggleTheme();
          },
          tooltip: 'Toggle Theme',
        ),
        
        // Language Selector
        PopupMenuButton<Locale>(
          icon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(localeNotifier.getLanguageIcon(currentLocale)),
              const SizedBox(width: 4),
              Text(
                currentLocale.languageCode.toUpperCase(),
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          tooltip: 'Change Language',
          onSelected: (Locale locale) {
            localeNotifier.setLocale(locale);
          },
          itemBuilder: (BuildContext context) {
            return supportedLocales.map((Locale locale) {
              return PopupMenuItem<Locale>(
                value: locale,
                child: Row(
                  children: [
                    Icon(localeNotifier.getLanguageIcon(locale)),
                    const SizedBox(width: 12),
                    Text(localeNotifier.getLanguageName(locale)),
                    if (locale == currentLocale) ...[
                      const Spacer(),
                      const Icon(Icons.check, color: Colors.green),
                    ],
                  ],
                ),
              );
            }).toList();
          },
        ),

        // Notifications
        IconButton(
          icon: Stack(
            children: [
              const Icon(Icons.notifications_outlined),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          onPressed: () {
            // TODO: Show notifications
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Notifications coming soon!')),
            );
          },
          tooltip: 'Notifications',
        ),

        // User Profile Menu
        PopupMenuButton<String>(
          icon: const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 20,
            ),
          ),
          tooltip: 'User Menu',
          onSelected: (String value) {
            switch (value) {
              case 'profile':
                // TODO: Navigate to profile
                break;
              case 'settings':
                // TODO: Navigate to settings
                break;
              case 'logout':
                _showLogoutDialog(context);
                break;
            }
          },
          itemBuilder: (BuildContext context) => [
            const PopupMenuItem<String>(
              value: 'profile',
              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Profile'),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            const PopupMenuItem<String>(
              value: 'settings',
              child: ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text('Settings'),
                contentPadding: EdgeInsets.zero,
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem<String>(
              value: 'logout',
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.red),
                title: Text('Logout', style: TextStyle(color: Colors.red)),
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return Consumer(
          builder: (context, ref, child) {
            return AlertDialog(
              title: const Text('Logout'),
              content: const Text('Are you sure you want to logout?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    Navigator.of(dialogContext).pop();

                    // Perform logout
                    await ref.read(authProvider.notifier).logout();

                    // Navigate to login page
                    if (context.mounted) {
                      context.go('/auth/login');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Logout'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
