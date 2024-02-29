import 'package:go_router/go_router.dart';
import 'package:portfolio/core/presentation/routes/app_routes.dart';
import 'package:portfolio/feature/presentation/pages/home/home_page.dart';
import 'package:portfolio/feature/presentation/pages/projects/projects_page.dart';

class AppPages {
  static final GoRouter pages = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRoutes.projects,
        name: 'projects',
        builder: (context, state) => const ProjectsPage(),
      ),
    ],
  );
}
