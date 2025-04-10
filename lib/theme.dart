import 'package:flutter/material.dart';


class AppColors {
  static Color appOrange = Color.fromRGBO(249, 172, 79, 1.0);
  static Color appOrangeAccent = Color.fromRGBO(255, 141, 0, 1.0);
  static Color appRed = Color.fromRGBO(248, 118, 93, 1.0);
  static Color appRedAccent = Color.fromRGBO(238, 81, 50, 1);
  static Color appBlue = Color.fromRGBO(60, 121, 208, 1.0);
  static Color appBlueAccent = Color.fromRGBO(0, 86, 209, 1.0);
  static Color appLightBlue = Color.fromRGBO(229, 237, 255, 1.0);
  static Color appLightBlueAccent = Color.fromRGBO(190, 210, 255, 1.0);
  static Color appGreen = Color.fromRGBO(92, 181, 115, 1.0);
  static Color appGreenAccent = Color.fromRGBO(49, 124, 67, 1.0);
  static Color appWhite = Color.fromRGBO(250, 250, 250, 1.0);
  static Color textColor = Color.fromRGBO(31, 30, 30, 1.0);

}

ThemeData primaryTheme = ThemeData(

  // seed
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.appOrange
    ),

  // Scaffold Color
  scaffoldBackgroundColor: AppColors.appWhite,

  // Text Theme
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: AppColors.textColor,
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    ),
    bodyLarge: TextStyle(
      color: AppColors.textColor, 
      fontSize: 16, 
      fontWeight: FontWeight.w600
    ),

    headlineLarge: TextStyle(
      fontSize: 32,
      letterSpacing: 1,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      letterSpacing: 1,
      fontWeight: FontWeight.bold,
      color: AppColors.textColor
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      letterSpacing: 1,
      fontWeight: FontWeight.bold,
    ),

    displayMedium: TextStyle(
      color: Colors.black, 
      fontSize: 20, 
      fontWeight: FontWeight.w600),

    displaySmall: TextStyle(
      color: Colors.black, 
      fontSize: 20, 
      fontWeight: FontWeight.bold)
  )
  

);