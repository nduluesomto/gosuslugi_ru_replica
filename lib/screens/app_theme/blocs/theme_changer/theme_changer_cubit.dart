import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum AppThemeMode { light, dark, system }

class AppThemeCubit extends Cubit<ThemeMode> {
  AppThemeCubit() : super(ThemeMode.system);

  void changeTheme(AppThemeMode theme) {
    if (theme == AppThemeMode.light) {
      emit(ThemeMode.light);
    } else if (theme == AppThemeMode.dark) {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.system);
    }
  }
}
