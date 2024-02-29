import 'dart:convert';

class ProjectModel {
  List<Project> projects;

  ProjectModel({
    required this.projects,
  });

  factory ProjectModel.fromRawJson(String str) =>
      ProjectModel.fromJson(jsonDecode(str));

  String toRawJson() => jsonEncode(toJson());

  factory ProjectModel.fromJson(Map<String, dynamic> json) => ProjectModel(
        projects: List<Project>.from(
          json["projects"].map((x) => Project.fromJson(x)),
        ),
      );

  Map<String, dynamic> toJson() => {
        "projects": List<dynamic>.from(projects.map((x) => x.toJson())),
      };
}

class Project {
  int id;
  String name;
  String description;
  DateTime date;
  String image;
  String url;

  Project({
    required this.id,
    required this.name,
    required this.description,
    required this.date,
    required this.image,
    required this.url,
  });

  factory Project.fromRawJson(String str) => Project.fromJson(jsonDecode(str));

  String toRawJson() => jsonEncode(toJson());

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        date: DateTime.parse(json["date"]),
        image: json["image"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "image": image,
        "url": url,
      };
}
