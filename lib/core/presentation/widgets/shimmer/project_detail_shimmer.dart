import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/default_spacer.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/button_shimmer.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/line_shimmer.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/project_image_shimmer.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/core/utils/helpers/device_type.dart';

class ProjectDetailShimmer extends StatelessWidget {
  const ProjectDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return _projectDetailSection(context);
  }

  Widget _projectDetailSection(BuildContext context) {
    final Widget projectDetailSection = (isMobile(context) || isTablet(context))
        ? _projectDetailMobile(context)
        : _projectDetailDesktop(context);

    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: AppConstants.defaultMargin * 2,
      ),
      children: [
        projectDetailSection,
      ],
    );
  }

  Widget _projectDetailMobile(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _projectImage(),
        const DefaultSpacer(),
        _projectDetailTexts(),
      ],
    );
  }

  Widget _projectDetailDesktop(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _projectImage(),
        ),
        const DefaultSpacer(isVertical: false),
        Expanded(
          child: _projectDetailTexts(),
        ),
      ],
    );
  }

  Widget _projectImage() {
    return const ProjectImageShimmer();
  }

  Widget _projectDetailTexts() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineShimmer(
          width: 184,
          itemCount: 1,
        ),
        DefaultSpacer(size: AppConstants.defaultMargin / 2),
        LineShimmer(
          width: double.infinity,
          height: 8,
        ),
        DefaultSpacer(size: AppConstants.defaultMargin / 2),
        LineShimmer(
          width: 64,
          height: 8,
          itemCount: 1,
        ),
        DefaultSpacer(size: AppConstants.defaultMargin / 2),
        Align(
          alignment: Alignment.center,
          child: ButtonShimmer(),
        ),
      ],
    );
  }
}
