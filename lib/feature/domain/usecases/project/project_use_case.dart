import 'package:ridhaaf_flutter/feature/data/models/project/project_model.dart';
import 'package:ridhaaf_flutter/feature/domain/repositories/project/project_repository.dart';

class ProjectUseCase {
  final ProjectRepository _repository;

  ProjectUseCase(this._repository);

  Future<ProjectModel> getProjects() async {
    return await _repository.getProjects();
  }
}
