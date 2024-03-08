part of 'project_detail_bloc.dart';

@immutable
sealed class ProjectDetailEvent {}

class GetProjectDetail extends ProjectDetailEvent {
  final int id;
  GetProjectDetail({required this.id});
}
