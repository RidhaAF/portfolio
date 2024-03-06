import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TextSpanHelper {
  static TextSpan textSpan(String text, {bool bold = false}) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  static TextSpan linkSpan(
    String url,
    String text, {
    bool bold = false,
    Function()? onTap,
  }) {
    return TextSpan(
      text: text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        decoration: TextDecoration.underline,
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = onTap ?? () => launchUrl(Uri.parse(url)),
    );
  }
}
