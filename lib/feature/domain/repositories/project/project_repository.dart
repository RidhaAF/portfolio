import 'package:portfolio/feature/data/models/project/project_model.dart';

abstract class ProjectRepository {
  Future<ProjectModel> getProjects();
  Future<Project> getProjectDetail(int id);
}
