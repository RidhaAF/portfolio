import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ridhaaf_flutter/core/presentation/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
    );
  }
}
