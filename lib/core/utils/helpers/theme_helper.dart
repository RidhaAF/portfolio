import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ThemeHelper {
  static bool isDarkMode(BuildContext context) {
    return AdaptiveTheme.of(context).brightness == Brightness.dark;
  }
}
