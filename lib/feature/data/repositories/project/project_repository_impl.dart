import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:portfolio/feature/domain/repositories/project/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  @override
  Future<ProjectModel> getProjects() async {
    try {
      String response =
          await rootBundle.loadString('assets/data/projects.json');
      Map<String, dynamic> data = jsonDecode(response);

      return ProjectModel.fromJson(data);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Project> getProjectDetail(int id) async {
    try {
      String response =
          await rootBundle.loadString('assets/data/projects.json');
      Map<String, dynamic> data = jsonDecode(response);
      int index = id - 1;

      return Project.fromJson(data['projects'][index]);
    } catch (e) {
      throw Exception(e);
    }
  }
}
