import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/core/utils/helpers/theme_helper.dart';

class AppCopyright extends StatelessWidget {
  const AppCopyright({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> lightModeGradient = [
      Colors.white.withOpacity(0.01),
      Colors.white.withOpacity(1),
    ];
    final List<Color> darkModeGradient = [
      Colors.black87.withOpacity(0.01),
      Colors.black87.withOpacity(1),
    ];
    final List<Color> gradientColors =
        ThemeHelper.isDarkMode(context) ? darkModeGradient : lightModeGradient;
    final String year = DateTime.now().year.toString();

    return Container(
      width: double.infinity,
      height: 32,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultMargin / 2),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            '© $year ridha. all rights reserved.',
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}
