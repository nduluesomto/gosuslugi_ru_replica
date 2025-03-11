import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.scaffoldLightBackground,
      useMaterial3: true,
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.scaffoldLightBackground),
      brightness: Brightness.light);

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.scaffoldDarkBackground,
      appBarTheme: const AppBarTheme(backgroundColor: AppColors.scaffoldDarkBackground),
      useMaterial3: true,
      brightness: Brightness.dark);
}
