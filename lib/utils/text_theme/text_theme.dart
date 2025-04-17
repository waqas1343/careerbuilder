import 'package:flutter/material.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';

class AppTextTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Appcolors.textColor,
    fontFamily: "Oddval",
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 32, color: Appcolors.bgColor),
      displayMedium: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white),
      displaySmall: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w500, color: Appcolors.bgColor),
      headlineLarge: TextStyle(fontSize: 22, color: Appcolors.bgColor),
      headlineMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: Appcolors.bgColor),
      headlineSmall: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Appcolors.textColor),
      titleLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: Appcolors.btColorW),
      titleMedium: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: Appcolors.btColorW),
      titleSmall: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Appcolors.btColorW),
      bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Appcolors.textColor),
      bodyMedium: TextStyle(
          fontSize: 15, fontWeight: FontWeight.w900, color: Appcolors.btColorW),
      bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Appcolors.bgColor),
      labelLarge: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Appcolors.bgColor),
      labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Appcolors.mainColor),
      labelSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: Appcolors.greyColur),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Appcolors.bgColor,
    fontFamily: "Oddval",
    textTheme: TextTheme(
      displayLarge: TextStyle(fontSize: 32, color: Colors.white),
      displayMedium: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white),
      displaySmall: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white70),
      headlineLarge: TextStyle(fontSize: 22, color: Colors.white70),
      headlineMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white70),
      headlineSmall: TextStyle(
          fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white),
      titleLarge: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white70),
      titleMedium: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white70),
      titleSmall: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white60),
      bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: Appcolors.textColor),
      bodyMedium: TextStyle(
          fontSize: 15, fontWeight: FontWeight.w900, color: Colors.white),
      bodySmall: TextStyle(
          fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white60),
      labelLarge: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
      labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Appcolors.textColor),
      labelSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: Appcolors.textColor),
    ),
  );
}
