import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/helpers/theme_helper.dart';

class DarkModeButton extends StatelessWidget {
  const DarkModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = ThemeHelper.isDarkMode(context);
    final Icon icon = dark
        ? Icon(
            Icons.light_mode_rounded,
            color: Colors.yellow.shade600,
          )
        : Icon(
            Icons.dark_mode_rounded,
            color: Colors.yellow.shade700,
          );

    return IconButton(
      onPressed: () {
        if (dark) {
          AdaptiveTheme.of(context).setLight();
        } else {
          AdaptiveTheme.of(context).setDark();
        }
      },
      icon: icon,
      tooltip: dark ? 'light mode' : 'dark mode',
    );
  }
}
