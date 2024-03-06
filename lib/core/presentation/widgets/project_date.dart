import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/core/utils/helpers/date_formatter.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectDate extends StatelessWidget {
  final Project project;
  const ProjectDate({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final String formattedDate = monthYearFormatter(project.date);

    return Text(
      formattedDate,
      style: TextStyle(
        color: Theme.of(context).colorScheme.tertiary,
        fontSize: 10,
        fontWeight: AppConstants.light,
      ),
    );
  }
}
