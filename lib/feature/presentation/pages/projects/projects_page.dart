import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ridhaaf_flutter/core/presentation/widgets/app_body.dart';
import 'package:ridhaaf_flutter/core/utils/constants/app_constants.dart';
import 'package:ridhaaf_flutter/core/utils/helpers/device_type.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ridha\'s projects'),
      ),
      body: AppBody(
        child: _projectsGrid(context),
      ),
    );
  }

  Widget _projectsGrid(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.defaultMargin),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile(context)
            ? 1
            : isTablet(context)
                ? 2
                : 3,
        mainAxisSpacing: AppConstants.defaultMargin,
        crossAxisSpacing: AppConstants.defaultMargin,
        childAspectRatio: 0.7,
      ),
      itemCount: 10,
      itemBuilder: (context, i) {
        return _projectCard(context);
      },
    );
  }

  Widget _projectCard(BuildContext context) {
    return InkWell(
      onTap: () {},
      radius: AppConstants.defaultRadius,
      borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _projectImage(),
              Container(
                margin: const EdgeInsets.all(AppConstants.defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _projectName(),
                    _projectDescription(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _projectImage() {
    return CachedNetworkImage(
      imageUrl: 'https://ridhaaf.github.io/dist/img/project/30.png',
      progressIndicatorBuilder: (context, url, progress) =>
          const CircularProgressIndicator.adaptive(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      width: double.infinity,
      fit: BoxFit.cover,
      useOldImageOnUrlChange: true,
    );
  }

  Widget _projectName() {
    return const Text(
      'Project Name',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _projectDescription() {
    return Text(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio vitae libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio vitae libero.',
      style: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 14,
      ),
      softWrap: true,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
