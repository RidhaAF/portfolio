import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/helpers/theme_helper.dart';

class DarkModeButton extends StatelessWidget {
  const DarkModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = AdaptiveTheme.of(context).mode.isDark;
    final Icon icon = isDark
        ? Icon(
            Icons.light_mode_rounded,
            color: Colors.yellow.shade600,
          )
        : Icon(
            Icons.dark_mode_rounded,
            color: Colors.yellow.shade700,
          );

    return IconButton(
      onPressed: () => ThemeHelper.toggleDarkMode(context),
      icon: icon,
      tooltip: isDark ? 'light mode' : 'dark mode',
    );
  }
}
