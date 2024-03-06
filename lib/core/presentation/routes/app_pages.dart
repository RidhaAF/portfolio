import 'package:portfolio/core/presentation/routes/app_routes.dart';
import 'package:portfolio/feature/presentation/pages/home/home_page.dart';
import 'package:portfolio/feature/presentation/pages/projects/projects_page.dart';

class AppPages {
  static final pages = {
    AppRoutes.home: (context) => const HomePage(),
    AppRoutes.projects: (context) => const ProjectsPage(),
  };
}
