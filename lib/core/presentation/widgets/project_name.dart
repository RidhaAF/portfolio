import 'package:flutter/material.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectName extends StatelessWidget {
  final Project project;
  const ProjectName({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final String name = project.name;

    return Text(
      name,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
