import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/core/presentation/widgets/project_image.dart';
import 'package:portfolio/core/presentation/widgets/project_name.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return _cardSection(context, project);
  }

  Widget _cardSection(BuildContext context, Project project) {
    const double radius = AppConstants.defaultRadius;

    return InkWell(
      onTap: () {
        int id = project.id;

        context.go(
          '/projects/$id',
          extra: project,
        );
      },
      radius: radius,
      borderRadius: BorderRadius.circular(radius),
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: _cardContent(),
        ),
      ),
    );
  }

  Widget _cardContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectImage(project: project),
        Padding(
          padding: const EdgeInsets.all(AppConstants.defaultMargin / 2),
          child: ProjectName(project: project),
        ),
      ],
    );
  }
}
