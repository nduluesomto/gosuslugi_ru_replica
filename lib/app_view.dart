import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gos_uslugi/screens/app_theme/blocs/theme_changer/theme_changer_cubit.dart';
import 'package:gos_uslugi/screens/login/authorization.dart';
import 'package:gos_uslugi/utils/theme/theme.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppThemeCubit, ThemeMode>(
      builder: (context, state) {
        return MaterialApp(
          themeMode: state,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          home: const Authorization(),


        );
      },
    );
  }
}
