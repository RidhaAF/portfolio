part of 'project_detail_bloc.dart';

@immutable
sealed class ProjectDetailState {}

final class ProjectDetailInitial extends ProjectDetailState {}

final class ProjectDetailLoading extends ProjectDetailState {}

final class ProjectDetailLoaded extends ProjectDetailState {
  final Project project;

  ProjectDetailLoaded({required this.project});
}

final class ProjectDetailError extends ProjectDetailState {
  final String message;

  ProjectDetailError({required this.message});
}
