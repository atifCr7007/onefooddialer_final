import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers/admin_providers.dart';

class AdminSystemPage extends ConsumerStatefulWidget {
  const AdminSystemPage({super.key});

  @override
  ConsumerState<AdminSystemPage> createState() => _AdminSystemPageState();
}

class _AdminSystemPageState extends ConsumerState<AdminSystemPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isEditing = false;
  Map<String, dynamic> _settings = {};

  @override
  Widget build(BuildContext context) {
    final settingsData = ref.watch(systemSettingsProvider);
    final settingsActions = ref.watch(systemSettingsActionsProvider);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'System Settings',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  if (_isEditing) ...[
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _isEditing = false;
                        });
                      },
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () => _saveSettings(settingsActions),
                      child: const Text('Save Changes'),
                    ),
                  ] else ...[
                    IconButton(
                      onPressed: () {
                        ref.invalidate(systemSettingsProvider);
                      },
                      icon: const Icon(Icons.refresh),
                      tooltip: 'Refresh Settings',
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _isEditing = true;
                        });
                      },
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit Settings'),
                    ),
                  ],
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Settings Content
          Expanded(
            child: _buildSettingsContent(settingsData),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsContent(AsyncValue<dynamic> settingsData) {
    return settingsData.when(
      data: (data) {
        _settings = data is Map ? Map<String, dynamic>.from(data) : {};
        return _buildSettingsForm();
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => _buildErrorView(error),
    );
  }

  Widget _buildSettingsForm() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // General Settings
            _buildSettingsSection(
              'General Settings',
              [
                _buildTextSetting('Application Name', 'appName', 'OneFoodDialer'),
                _buildTextSetting('Application Version', 'appVersion', '1.0.0'),
                _buildTextSetting('Support Email', 'supportEmail', 'support@onefooddialer.com'),
                _buildSwitchSetting('Maintenance Mode', 'maintenanceMode', false),
                _buildSwitchSetting('Registration Enabled', 'registrationEnabled', true),
              ],
            ),

            const SizedBox(height: 24),

            // Security Settings
            _buildSettingsSection(
              'Security Settings',
              [
                _buildNumberSetting('Session Timeout (minutes)', 'sessionTimeout', 30),
                _buildNumberSetting('Max Login Attempts', 'maxLoginAttempts', 5),
                _buildNumberSetting('Password Min Length', 'passwordMinLength', 8),
                _buildSwitchSetting('Two-Factor Authentication', 'twoFactorEnabled', false),
                _buildSwitchSetting('Force Password Change', 'forcePasswordChange', false),
              ],
            ),

            const SizedBox(height: 24),

            // API Settings
            _buildSettingsSection(
              'API Settings',
              [
                _buildTextSetting('API Base URL', 'apiBaseUrl', 'https://api.onefooddialer.com'),
                _buildNumberSetting('API Rate Limit (per minute)', 'apiRateLimit', 1000),
                _buildNumberSetting('API Timeout (seconds)', 'apiTimeout', 30),
                _buildSwitchSetting('API Logging Enabled', 'apiLoggingEnabled', true),
              ],
            ),

            const SizedBox(height: 24),

            // Email Settings
            _buildSettingsSection(
              'Email Settings',
              [
                _buildTextSetting('SMTP Host', 'smtpHost', 'smtp.gmail.com'),
                _buildNumberSetting('SMTP Port', 'smtpPort', 587),
                _buildTextSetting('SMTP Username', 'smtpUsername', ''),
                _buildPasswordSetting('SMTP Password', 'smtpPassword'),
                _buildSwitchSetting('SMTP SSL Enabled', 'smtpSslEnabled', true),
              ],
            ),

            const SizedBox(height: 24),

            // Notification Settings
            _buildSettingsSection(
              'Notification Settings',
              [
                _buildSwitchSetting('Email Notifications', 'emailNotificationsEnabled', true),
                _buildSwitchSetting('SMS Notifications', 'smsNotificationsEnabled', false),
                _buildSwitchSetting('Push Notifications', 'pushNotificationsEnabled', true),
                _buildTextSetting('Notification From Email', 'notificationFromEmail', 'noreply@onefooddialer.com'),
              ],
            ),

            const SizedBox(height: 24),

            // Storage Settings
            _buildSettingsSection(
              'Storage Settings',
              [
                _buildNumberSetting('Max File Size (MB)', 'maxFileSize', 10),
                _buildTextSetting('Allowed File Types', 'allowedFileTypes', 'jpg,png,pdf,doc,docx'),
                _buildTextSetting('Storage Provider', 'storageProvider', 'local'),
                _buildSwitchSetting('Auto Backup Enabled', 'autoBackupEnabled', true),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsSection(String title, List<Widget> settings) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),
            ...settings,
          ],
        ),
      ),
    );
  }

  Widget _buildTextSetting(String label, String key, String defaultValue) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        initialValue: _settings[key]?.toString() ?? defaultValue,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        enabled: _isEditing,
        onChanged: (value) {
          _settings[key] = value;
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPasswordSetting(String label, String key) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        initialValue: _settings[key]?.toString() ?? '',
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        obscureText: true,
        enabled: _isEditing,
        onChanged: (value) {
          _settings[key] = value;
        },
      ),
    );
  }

  Widget _buildNumberSetting(String label, String key, int defaultValue) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        initialValue: (_settings[key] ?? defaultValue).toString(),
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        enabled: _isEditing,
        onChanged: (value) {
          _settings[key] = int.tryParse(value) ?? defaultValue;
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is required';
          }
          if (int.tryParse(value) == null) {
            return 'Please enter a valid number';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildSwitchSetting(String label, String key, bool defaultValue) {
    final currentValue = _settings[key] ?? defaultValue;
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Switch(
            value: currentValue,
            onChanged: _isEditing ? (value) {
              setState(() {
                _settings[key] = value;
              });
            } : null,
          ),
        ],
      ),
    );
  }

  Widget _buildErrorView(Object error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          const Text('Failed to load system settings'),
          const SizedBox(height: 8),
          Text('$error', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ref.invalidate(systemSettingsProvider),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  void _saveSettings(SystemSettingsActions settingsActions) async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        await settingsActions.updateSettings(_settings);
        setState(() {
          _isEditing = false;
        });
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Settings saved successfully'),
              backgroundColor: Colors.green,
            ),
          );
        }
      } catch (error) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Failed to save settings: $error'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }
}
