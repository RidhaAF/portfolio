part of 'projects_bloc.dart';

@immutable
sealed class ProjectsState {}

final class ProjectsInitial extends ProjectsState {}

final class ProjectsLoading extends ProjectsState {}

final class ProjectsLoaded extends ProjectsState {
  final ProjectModel projectsModel;

  ProjectsLoaded(this.projectsModel);
}

final class ProjectsError extends ProjectsState {
  final String message;

  ProjectsError(this.message);
}
