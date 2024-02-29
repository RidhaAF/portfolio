import 'package:flutter/material.dart';
import 'package:ridhaaf_flutter/core/presentation/widgets/app_text.dart';

class AppLinkText extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const AppLinkText({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AppText(
        text: text,
        underline: true,
      ),
    );
  }
}
