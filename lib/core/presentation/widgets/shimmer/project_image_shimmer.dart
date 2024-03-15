import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/shimmer_box.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';

class ProjectImageShimmer extends StatelessWidget {
  const ProjectImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
        child: const ShimmerBox(
          width: double.infinity,
          height: 64,
        ),
      ),
    );
  }
}
