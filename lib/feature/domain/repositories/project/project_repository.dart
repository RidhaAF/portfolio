import 'package:ridhaaf_flutter/feature/data/models/project/project_model.dart';

abstract class ProjectRepository {
  Future<ProjectModel> getProjects();
}
