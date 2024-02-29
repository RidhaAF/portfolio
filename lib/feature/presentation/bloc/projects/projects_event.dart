part of 'projects_bloc.dart';

@immutable
sealed class ProjectsEvent {}

final class GetProjects extends ProjectsEvent {}
