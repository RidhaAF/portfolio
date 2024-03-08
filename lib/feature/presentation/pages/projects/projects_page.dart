import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/presentation/widgets/app_body.dart';
import 'package:portfolio/core/presentation/widgets/app_loading_indicator.dart';
import 'package:portfolio/core/presentation/widgets/app_refresh_indicator.dart';
import 'package:portfolio/core/presentation/widgets/default_app_bar.dart';
import 'package:portfolio/core/presentation/widgets/error_text.dart';
import 'package:portfolio/core/presentation/widgets/projects_grid.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:portfolio/feature/presentation/bloc/projects/projects_bloc.dart';

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
      appBar: const DefaultAppBar(
        title: Text('ridha\'s projects'),
      ),
      body: AppBody(
        child: AppRefreshIndicator(
          refresh: _onRefresh,
          child: _projectsContent(context),
        ),
      ),
    );
  }

  Widget _projectsContent(BuildContext context) {
    return BlocBuilder<ProjectsBloc, ProjectsState>(
      builder: (context, state) {
        if (state is ProjectsLoading) {
          return const AppLoadingIndicator();
        } else if (state is ProjectsLoaded) {
          final ProjectModel projectsModel = state.projectsModel;

          return ProjectsGrid(projectsModel: projectsModel);
        } else if (state is ProjectsError) {
          return ErrorText(message: state.message);
        }

        return const SizedBox.shrink();
      },
    );
  }
}
