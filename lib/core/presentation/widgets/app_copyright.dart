import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';

class AppCopyright extends StatelessWidget {
  const AppCopyright({super.key});

  @override
  Widget build(BuildContext context) {
    final String year = DateTime.now().year.toString();

    return Container(
      width: double.infinity,
      height: 32,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.01),
            Colors.white.withOpacity(1),
          ],
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
