import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:portfolio/feature/domain/usecases/project/project_use_case.dart';

part 'project_detail_event.dart';
part 'project_detail_state.dart';

class ProjectDetailBloc extends Bloc<ProjectDetailEvent, ProjectDetailState> {
  final ProjectUseCase _useCase;

  ProjectDetailBloc(this._useCase) : super(ProjectDetailInitial()) {
    on<GetProjectDetail>((event, emit) => getProjectDetailToState(event, emit));
  }

  Future<void> getProjectDetailToState(
      ProjectDetailEvent event, Emitter<ProjectDetailState> emit) async {
    emit(ProjectDetailLoading());

    try {
      final project =
          await _useCase.getProjectDetail((event as GetProjectDetail).id);
      emit(ProjectDetailLoaded(project: project));
    } catch (e) {
      emit(ProjectDetailError(message: e.toString()));
    }
  }
}
