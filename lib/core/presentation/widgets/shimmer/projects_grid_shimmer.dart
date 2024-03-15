import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/project_card_shimmer.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/core/utils/helpers/device_type.dart';

class ProjectsGridShimmer extends StatelessWidget {
  const ProjectsGridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final int crossAxisCount = isMobile(context)
        ? 1
        : isTablet(context)
            ? 2
            : 3;

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
      itemCount: 10,
      itemBuilder: (context, i) {
        return const ProjectCardShimmer();
      },
    );
  }
}
