import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/presentation/widgets/app_loading_indicator.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';

class ProjectImage extends StatelessWidget {
  final Project project;
  const ProjectImage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final String image = project.image;
    const double imageWidth = double.infinity;
    const BoxFit imageFit = BoxFit.cover;
    const String failedImage = 'assets/images/image_load_failed.png';
    final Color tertiaryColor = Theme.of(context).colorScheme.tertiary;

    return AspectRatio(
      aspectRatio: 1,
      child: CachedNetworkImage(
        imageUrl: image,
        placeholder: (context, url) => Container(
          color: tertiaryColor,
          width: imageWidth,
          child: const AppLoadingIndicator(),
        ),
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
    );
  }
}
