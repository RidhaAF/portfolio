import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/core/utils/helpers/date_formatter.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectDate extends StatelessWidget {
  final Project project;
  final double fontSize;
  const ProjectDate({
    super.key,
    required this.project,
    this.fontSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    final String formattedDate = monthYearFormatter(project.date);

    return Text(
      formattedDate,
      style: TextStyle(
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: fontSize,
        fontWeight: AppConstants.light,
      ),
    );
  }
}
