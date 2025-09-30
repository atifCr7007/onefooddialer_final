import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Supported locales for the application
const List<Locale> supportedLocales = [
  Locale('en', 'US'), // English
  Locale('es', 'ES'), // Spanish
  Locale('fr', 'FR'), // French
  Locale('ar', 'SA'), // Arabic
  Locale('hi', 'IN'), // Hindi
];

/// Locale state provider
final localeProvider = StateNotifierProvider<LocaleNotifier, Locale>((ref) {
  return LocaleNotifier();
});

class LocaleNotifier extends StateNotifier<Locale> {
  static const String _localeKey = 'app_locale';
  
  LocaleNotifier() : super(const Locale('en', 'US')) {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final localeCode = prefs.getString(_localeKey);
    if (localeCode != null) {
      final parts = localeCode.split('_');
      if (parts.length == 2) {
        final locale = Locale(parts[0], parts[1]);
        if (supportedLocales.contains(locale)) {
          state = locale;
        }
      }
    }
  }

  Future<void> setLocale(Locale locale) async {
    if (supportedLocales.contains(locale)) {
      state = locale;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_localeKey, '${locale.languageCode}_${locale.countryCode}');
    }
  }

  String getLanguageName(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return 'English';
      case 'es':
        return 'Español';
      case 'fr':
        return 'Français';
      case 'ar':
        return 'العربية';
      case 'hi':
        return 'हिन्दी';
      default:
        return locale.languageCode.toUpperCase();
    }
  }

  IconData getLanguageIcon(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return Icons.language;
      case 'es':
        return Icons.language;
      case 'fr':
        return Icons.language;
      case 'ar':
        return Icons.language;
      case 'hi':
        return Icons.language;
      default:
        return Icons.language;
    }
  }
}
