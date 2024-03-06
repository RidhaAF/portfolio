import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/app_link_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final String email;
  final String text;
  const ContactSection({super.key, required this.email, required this.text});

  @override
  Widget build(BuildContext context) {
    const String scheme = 'mailto';

    return AppLinkText(
      onTap: () => launchUrl(Uri(scheme: scheme, path: email)),
      text: text,
    );
  }
}
