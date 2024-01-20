import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/utils/app_colors.dart';

/// App Color Theme
class AppTheme {
  AppTheme._();

  /// App Light Theme
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.black,
    cardColor: AppColors.appLightColor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.poppins(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade600,
      ),
    ),
  );

  /// App Dark Theme
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    canvasColor: Colors.white,
    cardColor: AppColors.appDarkColor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.poppins(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade600,
      ),
    ),
  );
}
