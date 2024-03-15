import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/line_shimmer.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/project_image_shimmer.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';

class ProjectCardShimmer extends StatelessWidget {
  const ProjectCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return _cardSection();
  }

  Widget _cardSection() {
    const double radius = AppConstants.defaultRadius;

    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: _cardContent(),
      ),
    );
  }

  Widget _cardContent() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectImageShimmer(),
        Padding(
          padding: EdgeInsets.all(AppConstants.defaultMargin / 2),
          child: LineShimmer(
            width: 184,
            itemCount: 1,
          ),
        ),
      ],
    );
  }
}
