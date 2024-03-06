import 'package:flutter/material.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectDescription extends StatelessWidget {
  final Project project;
  const ProjectDescription({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final String description = project.description;

    return Text(
      description,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: 12,
      ),
      softWrap: true,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
