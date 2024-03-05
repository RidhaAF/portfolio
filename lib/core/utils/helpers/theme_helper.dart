import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ThemeHelper {
  static final box = GetStorage();
  static const String _themePreferenceKey = 'isDarkMode';

  static Future<AdaptiveThemeMode?> getSavedThemeMode() async {
    final savedThemeMode = isDarkMode();

    return savedThemeMode ? AdaptiveThemeMode.dark : AdaptiveThemeMode.light;
  }

  static bool isDarkMode() {
    return box.read(_themePreferenceKey) ?? false;
  }

  static void setDarkMode(bool value) {
    box.write(_themePreferenceKey, value);
  }

  static void setDark(BuildContext context) {
    setDarkMode(true);
    AdaptiveTheme.of(context).setDark();
  }

  static void setLight(BuildContext context) {
    setDarkMode(false);
    AdaptiveTheme.of(context).setLight();
  }

  static void toggleDarkMode(BuildContext context) {
    final bool isDark = isDarkMode();

    if (isDark) {
      setLight(context);
    } else {
      setDark(context);
    }
  }
}
