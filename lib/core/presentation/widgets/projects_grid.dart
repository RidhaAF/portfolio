import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/project_card.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/core/utils/helpers/device_type.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectsGrid extends StatelessWidget {
  final ProjectModel projectsModel;
  const ProjectsGrid({super.key, required this.projectsModel});

  @override
  Widget build(BuildContext context) {
    final int crossAxisCount = isMobile(context)
        ? 1
        : isTablet(context)
            ? 2
            : 3;
    final List<Project> projects = projectsModel.projects;
    final List<Project> reversedProjects = projects.reversed.toList();

    return GridView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: AppConstants.defaultMargin * 2,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: AppConstants.defaultMargin,
        crossAxisSpacing: AppConstants.defaultMargin,
        childAspectRatio: 0.85,
      ),
      itemCount: reversedProjects.length,
      itemBuilder: (context, i) {
        final Project project = reversedProjects[i];

        return ProjectCard(project: project);
      },
    );
  }
}
