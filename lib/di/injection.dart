import 'package:get_it/get_it.dart';
import 'package:portfolio/feature/data/repositories/project/project_repository_impl.dart';
import 'package:portfolio/feature/domain/repositories/project/project_repository.dart';
import 'package:portfolio/feature/domain/usecases/project/project_use_case.dart';
import 'package:portfolio/feature/presentation/bloc/projects/project_detail/project_detail_bloc.dart';
import 'package:portfolio/feature/presentation/bloc/projects/projects_bloc.dart';

final GetIt di = GetIt.instance;

void setupInjection() {
  di.registerLazySingleton<ProjectRepository>(() => ProjectRepositoryImpl());

  di.registerLazySingleton(() => ProjectUseCase(di<ProjectRepository>()));

  di.registerFactory(() => ProjectsBloc(di<ProjectUseCase>()));
  di.registerFactory(() => ProjectDetailBloc(di<ProjectUseCase>()));
}
