import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ridhaaf_flutter/core/presentation/widgets/app_body.dart';
import 'package:ridhaaf_flutter/core/presentation/widgets/default_spacer.dart';
import 'package:ridhaaf_flutter/core/utils/constants/app_constants.dart';
import 'package:ridhaaf_flutter/core/utils/helpers/date_formatter.dart';
import 'package:ridhaaf_flutter/core/utils/helpers/device_type.dart';
import 'package:ridhaaf_flutter/feature/data/models/project/project_model.dart';
import 'package:ridhaaf_flutter/feature/presentation/bloc/projects/projects_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  void _onRefresh() {
    context.read<ProjectsBloc>().add(GetProjects());
  }

  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ridha\'s projects'),
      ),
      body: AppBody(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 1));
            _onRefresh();
          },
          child: _projectsContent(context),
        ),
      ),
    );
  }

  Widget _projectsContent(BuildContext context) {
    return BlocBuilder<ProjectsBloc, ProjectsState>(
      builder: (context, state) {
        if (state is ProjectsLoading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is ProjectsLoaded) {
          final ProjectModel projectsModel = state.projectsModel;

          return _projectsGrid(context, projectsModel);
        } else if (state is ProjectsError) {
          return Center(
            child: Text(state.message),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  Widget _projectsGrid(BuildContext context, ProjectModel projectsModel) {
    final int crossAxisCount = isMobile(context)
        ? 1
        : isTablet(context)
            ? 2
            : 3;
    final List<Project> projects = projectsModel.projects;
    final List<Project> reversedProjects = projects.reversed.toList();

    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.defaultMargin),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: AppConstants.defaultMargin,
        crossAxisSpacing: AppConstants.defaultMargin,
        childAspectRatio: 0.7,
      ),
      itemCount: reversedProjects.length,
      itemBuilder: (context, i) {
        final Project project = reversedProjects[i];
        return _projectCard(context, project);
      },
    );
  }

  Widget _projectCard(BuildContext context, Project project) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(project.url)),
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
              _projectImage(project),
              Padding(
                padding: const EdgeInsets.all(AppConstants.defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _projectName(project),
                    const DefaultSpacer(size: 4),
                    _projectDescription(project),
                    const DefaultSpacer(size: 4),
                    _projectDate(project),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _projectImage(Project project) {
    return CachedNetworkImage(
      imageUrl: project.image,
      progressIndicatorBuilder: (context, url, progress) =>
          const CircularProgressIndicator.adaptive(),
      errorWidget: (context, url, error) => Image.asset(
        'assets/images/image_load_failed.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      width: double.infinity,
      fit: BoxFit.cover,
      useOldImageOnUrlChange: true,
    );
  }

  Widget _projectName(Project project) {
    return Text(
      project.name,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _projectDescription(Project project) {
    return Text(
      project.description,
      style: TextStyle(
        color: Colors.grey.shade600,
        fontSize: 12,
      ),
      softWrap: true,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _projectDate(Project project) {
    final String formattedDate = monthYearFormatter(project.date);

    return Text(
      formattedDate,
      style: TextStyle(
        color: Colors.grey.shade500,
        fontSize: 10,
        fontWeight: AppConstants.light,
      ),
    );
  }
}
