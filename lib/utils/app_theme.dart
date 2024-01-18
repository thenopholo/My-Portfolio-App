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
      displayLarge: GoogleFonts.aBeeZee(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: GoogleFonts.aBeeZee(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.aBeeZee(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.aBeeZee(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.aBeeZee(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade600,
      ),
    ),
  );

  /// App Dark Theme
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.white,
    cardColor: AppColors.appDarkColor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.aBeeZee(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.aBeeZee(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: GoogleFonts.aBeeZee(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.aBeeZee(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.aBeeZee(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade600,
      ),
    ),
  );
}
