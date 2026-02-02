import 'package:flutter/material.dart';
import '../colors/colors.app.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryBlue,
        secondary: AppColors.secondaryBlue,
        surface: Colors.white,
        onSecondary: AppColors.bgLight,
        onPrimary: AppColors.textWhite,
        onSurface: AppColors.textMain,
      ),

      // Configuration globale de l'AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryBlue,
        foregroundColor: AppColors.textWhite,
        centerTitle: true,
        elevation: 0,
      ),
      // Style global des textes
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          color: AppColors.textMain,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        bodyLarge: TextStyle(color: AppColors.textMain, fontSize: 16),
      ),

      // Style des boutons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          foregroundColor: AppColors.textWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      // Dans votre ThemeData lightTheme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.primaryBlue,
        selectedItemColor: AppColors.textWhite,
        unselectedItemColor: AppColors.textWhite.withOpacity(0.54),
        elevation: 10,
        selectedIconTheme: const IconThemeData(size: 25),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
      ),
      cardTheme: CardThemeData(
        color: AppColors.lightBlue,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
      ),
    );
  }
}
