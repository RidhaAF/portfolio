import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:portfolio/feature/domain/usecases/project/project_use_case.dart';

part 'projects_event.dart';
part 'projects_state.dart';

class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  final ProjectUseCase _useCase;

  ProjectsBloc(this._useCase) : super(ProjectsInitial()) {
    on<GetProjects>((event, emit) => _getProjectsToState(event, emit));
  }

  Future<void> _getProjectsToState(
      ProjectsEvent event, Emitter<ProjectsState> emit) async {
    emit(ProjectsLoading());

    try {
      ProjectModel response = await _useCase.getProjects();
      emit(ProjectsLoaded(response));
    } catch (e) {
      emit(ProjectsError(e.toString()));
    }
  }
}
