import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:portfolio/feature/domain/repositories/project/project_repository.dart';

class ProjectUseCase {
  final ProjectRepository _repository;

  ProjectUseCase(this._repository);

  Future<ProjectModel> getProjects() async {
    return await _repository.getProjects();
  }

  Future<Project> getProjectDetail(int id) async {
    return await _repository.getProjectDetail(id);
  }
}
