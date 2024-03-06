import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/core/presentation/routes/app_pages.dart';
import 'package:portfolio/core/presentation/themes/app_themes.dart';
import 'package:portfolio/core/utils/helpers/theme_helper.dart';
import 'package:portfolio/di/injection.dart';
import 'package:portfolio/feature/presentation/bloc/projects/projects_bloc.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupInjection();
  setPathUrlStrategy();
  await GetStorage.init();
  final savedThemeMode = await ThemeHelper.getSavedThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  MyApp({super.key, this.savedThemeMode});

  final ProjectsBloc _projectsBloc = di<ProjectsBloc>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _projectsBloc),
      ],
      child: AdaptiveTheme(
        light: AppTheme.light,
        dark: AppTheme.dark,
        initial: savedThemeMode ?? AdaptiveThemeMode.system,
        builder: (theme, darkTheme) => MaterialApp(
          title: 'ridha ahmad firdaus',
          debugShowCheckedModeBanner: false,
          theme: theme,
          darkTheme: darkTheme,
          routes: AppPages.pages,
        ),
      ),
    );
  }
}
