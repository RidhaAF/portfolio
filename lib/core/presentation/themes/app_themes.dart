import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/core/utils/constants/app_constants.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Colors.green.shade900,
      secondary: Colors.black54,
      tertiary: Colors.black38,
      background: Colors.white,
      error: Colors.red,
    ),
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.jetBrainsMono(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      bodyMedium: GoogleFonts.jetBrainsMono(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      bodySmall: GoogleFonts.jetBrainsMono(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      displayLarge: GoogleFonts.jetBrainsMono(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      displayMedium: GoogleFonts.jetBrainsMono(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      displaySmall: GoogleFonts.jetBrainsMono(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),
      headlineLarge: GoogleFonts.jetBrainsMono(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
      headlineMedium: GoogleFonts.jetBrainsMono(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
      headlineSmall: GoogleFonts.jetBrainsMono(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
      labelLarge: GoogleFonts.jetBrainsMono(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      labelMedium: GoogleFonts.jetBrainsMono(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      labelSmall: GoogleFonts.jetBrainsMono(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      titleLarge: GoogleFonts.jetBrainsMono(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      titleMedium: GoogleFonts.jetBrainsMono(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      titleSmall: GoogleFonts.jetBrainsMono(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.jetBrainsMono(
        color: Colors.black87,
        fontSize: 16,
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
      ),
    ),
  );

  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black87,
    primaryColor: Colors.black87,
    colorScheme: ColorScheme.dark(
      primary: Colors.green.shade900,
      secondary: Colors.white60,
      tertiary: Colors.white38,
      background: Colors.black87,
      error: Colors.red,
    ),
    fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.jetBrainsMono(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.jetBrainsMono(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.jetBrainsMono(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      displayLarge: GoogleFonts.jetBrainsMono(
        fontSize: 32,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.jetBrainsMono(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.jetBrainsMono(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      headlineLarge: GoogleFonts.jetBrainsMono(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      headlineMedium: GoogleFonts.jetBrainsMono(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      headlineSmall: GoogleFonts.jetBrainsMono(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      labelLarge: GoogleFonts.jetBrainsMono(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      labelMedium: GoogleFonts.jetBrainsMono(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      labelSmall: GoogleFonts.jetBrainsMono(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      titleLarge: GoogleFonts.jetBrainsMono(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleMedium: GoogleFonts.jetBrainsMono(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      titleSmall: GoogleFonts.jetBrainsMono(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.jetBrainsMono(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
    cardTheme: CardTheme(
      color: Colors.black54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
      ),
    ),
  );
}
