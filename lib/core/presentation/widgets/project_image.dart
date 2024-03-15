import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/shimmer/project_image_shimmer.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectImage extends StatelessWidget {
  final Project project;
  final double width;
  final double radius;
  const ProjectImage({
    super.key,
    required this.project,
    this.width = double.infinity,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    final String image = project.image;
    final double imageWidth = width;
    const BoxFit imageFit = BoxFit.cover;
    const String failedImage = 'assets/images/image_load_failed.png';
    final Color tertiaryColor = Theme.of(context).colorScheme.tertiary;

    return AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: CachedNetworkImage(
          imageUrl: image,
          placeholder: (context, url) => const ProjectImageShimmer(),
          errorWidget: (context, url, error) => Container(
            color: tertiaryColor,
            child: Image.asset(
              failedImage,
              width: imageWidth,
              fit: imageFit,
            ),
          ),
          width: imageWidth,
          fit: imageFit,
          useOldImageOnUrlChange: true,
        ),
      ),
    );
  }
}
