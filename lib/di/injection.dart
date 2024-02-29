import 'package:get_it/get_it.dart';
import 'package:ridhaaf_flutter/feature/data/repositories/project/project_repository_impl.dart';
import 'package:ridhaaf_flutter/feature/domain/repositories/project/project_repository.dart';
import 'package:ridhaaf_flutter/feature/domain/usecases/project/project_use_case.dart';
import 'package:ridhaaf_flutter/feature/presentation/bloc/projects/projects_bloc.dart';

final GetIt di = GetIt.instance;

void setupInjection() {
  di.registerLazySingleton<ProjectRepository>(() => ProjectRepositoryImpl());

  di.registerLazySingleton(() => ProjectUseCase(di<ProjectRepository>()));

  di.registerFactory(() => ProjectsBloc(di<ProjectUseCase>()));
}
