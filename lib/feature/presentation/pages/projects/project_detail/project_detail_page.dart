import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/presentation/widgets/app_body.dart';
import 'package:portfolio/core/presentation/widgets/app_loading_indicator.dart';
import 'package:portfolio/core/presentation/widgets/app_refresh_indicator.dart';
import 'package:portfolio/core/presentation/widgets/dark_mode_button.dart';
import 'package:portfolio/core/presentation/widgets/default_spacer.dart';
import 'package:portfolio/core/presentation/widgets/error_text.dart';
import 'package:portfolio/core/presentation/widgets/project_date.dart';
import 'package:portfolio/core/presentation/widgets/project_description.dart';
import 'package:portfolio/core/presentation/widgets/project_image.dart';
import 'package:portfolio/core/presentation/widgets/project_name.dart';
import 'package:portfolio/core/presentation/widgets/project_url.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/core/utils/helpers/device_type.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:portfolio/feature/presentation/bloc/projects/project_detail/project_detail_bloc.dart';

class ProjectDetailPage extends StatefulWidget {
  final int id;
  const ProjectDetailPage({super.key, required this.id});

  @override
  State<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage> {
  void _onRefresh() {
    context.read<ProjectDetailBloc>().add(GetProjectDetail(id: widget.id));
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
        title: const Text('project detail'),
        actions: const [
          DarkModeButton(),
        ],
      ),
      body: AppBody(
        child: AppRefreshIndicator(
          refresh: _onRefresh,
          child: _projectDetailContent(context),
        ),
      ),
    );
  }

  Widget _projectDetailContent(BuildContext context) {
    return BlocBuilder<ProjectDetailBloc, ProjectDetailState>(
      builder: (context, state) {
        if (state is ProjectDetailLoading) {
          return const AppLoadingIndicator();
        } else if (state is ProjectDetailLoaded) {
          final Project project = state.project;

          return _projectDetailSection(context, project);
        } else if (state is ProjectDetailError) {
          return ErrorText(message: state.message);
        }

        return const SizedBox.shrink();
      },
    );
  }

  Widget _projectDetailSection(BuildContext context, Project project) {
    final Widget projectDetailSection = (isMobile(context) || isTablet(context))
        ? _projectDetailMobile(context, project)
        : _projectDetailDesktop(context, project);

    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: AppConstants.defaultMargin * 2,
      ),
      children: [
        projectDetailSection,
      ],
    );
  }

  Widget _projectDetailMobile(BuildContext context, Project project) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _projectImage(project),
        const DefaultSpacer(),
        _projectDetailTexts(project),
      ],
    );
  }

  Widget _projectDetailDesktop(BuildContext context, Project project) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _projectImage(project),
        ),
        const DefaultSpacer(isVertical: false),
        Expanded(
          child: _projectDetailTexts(project),
        ),
      ],
    );
  }

  Widget _projectImage(Project project) {
    return ProjectImage(
      project: project,
      radius: AppConstants.defaultRadius * 2,
    );
  }

  Widget _projectDetailTexts(Project project) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectName(project: project),
        const DefaultSpacer(size: AppConstants.defaultMargin / 2),
        ProjectDescription(project: project, maxLines: 0),
        const DefaultSpacer(size: AppConstants.defaultMargin / 2),
        ProjectDate(project: project),
        const DefaultSpacer(size: AppConstants.defaultMargin / 2),
        Align(
          alignment: Alignment.center,
          child: ProjectUrl(project: project),
        ),
      ],
    );
  }
}
