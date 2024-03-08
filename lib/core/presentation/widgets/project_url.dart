import 'package:flutter/material.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectUrl extends StatelessWidget {
  final Project project;
  const ProjectUrl({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final String url = project.url;

    return ElevatedButton(
      onPressed: () => launchUrl(Uri.parse(url)),
      child: const Text(
        'view project ->',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
