import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/app_link_text.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkSection extends StatelessWidget {
  final String path;
  final String text;
  const LinkSection({super.key, required this.path, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppLinkText(
      onTap: () => launchUrl(Uri.parse(path)),
      text: text,
    );
  }
}
