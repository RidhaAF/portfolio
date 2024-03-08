import 'package:flutter/material.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectDescription extends StatelessWidget {
  final Project project;
  final double fontSize;
  final int maxLines;
  const ProjectDescription({
    super.key,
    required this.project,
    this.fontSize = 12,
    this.maxLines = 3,
  });

  @override
  Widget build(BuildContext context) {
    final String description = project.description;

    return Text(
      description,
      style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: fontSize,
      ),
      softWrap: true,
      maxLines: maxLines == 0 ? null : maxLines,
      overflow: maxLines == 0 ? TextOverflow.visible : TextOverflow.ellipsis,
    );
  }
}
