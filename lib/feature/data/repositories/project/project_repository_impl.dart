import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';
import 'package:portfolio/feature/data/models/project/project_model.dart';
import 'package:portfolio/feature/domain/repositories/project/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  @override
  Future<ProjectModel> getProjects() async {
    try {
      final String response =
          await rootBundle.loadString(AppConstants.projectPath);
      final Map<String, dynamic> data = jsonDecode(response);
      final projects = ProjectModel.fromJson(data);

      return projects;
    } catch (e) {
      throw Exception('Error fetching projects data: $e');
    }
  }

  @override
  Future<Project> getProjectDetail(int id) async {
    try {
      final String response =
          await rootBundle.loadString(AppConstants.projectPath);
      final Map<String, dynamic> data = jsonDecode(response);
      final int index = id - 1;
      final Map<String, dynamic> projectData = data['projects'][index];
      final Project project = Project.fromJson(projectData);

      return project;
    } catch (e) {
      throw Exception('Error fetching project detail data: $e');
    }
  }
}
