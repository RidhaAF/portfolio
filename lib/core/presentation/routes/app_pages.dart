import 'package:go_router/go_router.dart';
import 'package:portfolio/core/presentation/routes/app_routes.dart';
import 'package:portfolio/feature/presentation/pages/home/home_page.dart';
import 'package:portfolio/feature/presentation/pages/projects/project_detail/project_detail_page.dart';
import 'package:portfolio/feature/presentation/pages/projects/projects_page.dart';

class AppPages {
  static final GoRouter pages = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'projects',
            builder: (context, state) => const ProjectsPage(),
            routes: [
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final int id = int.parse(state.pathParameters['id'] ?? '0');

                  return ProjectDetailPage(id: id);
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
