import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:ridhaaf_flutter/feature/data/models/project/project_model.dart';
import 'package:ridhaaf_flutter/feature/domain/repositories/project/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  @override
  Future<ProjectModel> getProjects() async {
    String response = await rootBundle.loadString('data/projects.json');
    Map<String, dynamic> data = jsonDecode(response);

    return ProjectModel.fromJson(data);
  }
}
