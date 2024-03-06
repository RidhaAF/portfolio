import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/default_spacer.dart';
import 'package:portfolio/core/presentation/widgets/project_date.dart';
import 'package:portfolio/core/presentation/widgets/project_description.dart';
import 'package:portfolio/core/presentation/widgets/project_image.dart';
import 'package:portfolio/core/presentation/widgets/project_name.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return _cardSection(project);
  }

  Widget _cardSection(Project project) {
    final String url = project.url;
    const double radius = AppConstants.defaultRadius;

    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
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
          padding: const EdgeInsets.all(AppConstants.defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectName(project: project),
              const DefaultSpacer(size: 4),
              ProjectDescription(project: project),
              const DefaultSpacer(size: 4),
              ProjectDate(project: project),
            ],
          ),
        ),
      ],
    );
  }
}
