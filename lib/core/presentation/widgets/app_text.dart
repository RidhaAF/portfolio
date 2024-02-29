import 'package:flutter/material.dart';
import 'package:ridhaaf_flutter/core/utils/constants/app_constants.dart';

class AppText extends StatelessWidget {
  final String text;
  final bool bold;
  final bool underline;
  const AppText({
    super.key,
    required this.text,
    this.bold = false,
    this.underline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: bold ? AppConstants.bold : AppConstants.medium,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
