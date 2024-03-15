import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/shimmer_box.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';

class ProjectNameShimmer extends StatelessWidget {
  const ProjectNameShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerBox(
      width: 184,
      height: 16,
      borderRadius: BorderRadius.all(
        Radius.circular(AppConstants.defaultRadius),
      ),
    );
  }
}
