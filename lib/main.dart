import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridhaaf_flutter/core/presentation/routes/app_pages.dart';
import 'package:ridhaaf_flutter/di/injection.dart';
import 'package:ridhaaf_flutter/feature/presentation/bloc/projects/projects_bloc.dart';

void main() {
  setupInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ProjectsBloc _projectsBloc = di<ProjectsBloc>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _projectsBloc),
      ],
      child: MaterialApp.router(
        title: 'ridha ahmad firdaus',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green.shade900,
          ).copyWith(
            background: Colors.white,
          ),
          useMaterial3: true,
          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
        ),
        routerConfig: AppPages.pages,
      ),
    );
  }
}
