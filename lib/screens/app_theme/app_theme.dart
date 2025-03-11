import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

import 'blocs/theme_changer/theme_changer_cubit.dart';

class AppThemeSettings extends StatelessWidget {
  const AppThemeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<AppThemeCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new,
              color: Colors.grey, size: AppSizes.iconSizeSm),
        ),
        title: const Text('Тема оформления',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
      ),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.paddingVertical,
                  horizontal: AppSizes.paddingHorizontal),
              child: BlocBuilder<AppThemeCubit, ThemeMode>(
                builder: (context, state) {
                  return Column(
                    children: [
                      const Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        'Тёмная тема работает\n в экспериментальном режиме',
                        style: TextStyle(fontSize: 13),
                      )),
                      const SizedBox(height: AppSizes.sizedBoxLg),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //Light Mode
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => context
                                    .read<AppThemeCubit>()
                                    .changeTheme(AppThemeMode.light),
                                child: Container(
                                  width: AppHelperMethods.screenWidth(context) *
                                      0.200,
                                  height:
                                      AppHelperMethods.screenHeight(context) *
                                          0.180,
                                  decoration: BoxDecoration(
                                      border:
                                          themeCubit.state != ThemeMode.light
                                              ? null
                                              : Border.all(
                                                  color: Colors.blueAccent,
                                                  width: 2),
                                      borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
                                      image: const DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: AssetImage(
                                              AppImages.lightModeIcon))),
                                ),
                              ),
                              Radio(
                                  activeColor: AppColors.appbarLightBackground,
                                  value: AppThemeMode.light,
                                  groupValue: state == ThemeMode.light
                                      ? AppThemeMode.light
                                      : state == ThemeMode.dark
                                          ? AppThemeMode.dark
                                          : AppThemeMode.system,
                                  onChanged: (value) =>
                                      themeCubit.changeTheme(value!)),
                              Text('Светлая',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: themeCubit.state != ThemeMode.light
                                          ? null
                                          : Colors.blueAccent.shade700,
                                      fontWeight:
                                          themeCubit.state != ThemeMode.light
                                              ? FontWeight.normal
                                              : FontWeight.bold)),
                            ],
                          ),

                          //Dark Mode
                          Column(children: [
                            GestureDetector(
                              onTap: () => context
                                  .read<AppThemeCubit>()
                                  .changeTheme(AppThemeMode.dark),
                              child: Container(
                                width: AppHelperMethods.screenWidth(context) *
                                    0.200,
                                height: AppHelperMethods.screenHeight(context) *
                                    0.180,
                                decoration: BoxDecoration(
                                    border: themeCubit.state != ThemeMode.dark
                                        ? null
                                        : Border.all(
                                            color: Colors.blueAccent, width: 2),
                                    borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
                                    image: const DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                            AppImages.darkModeIcon))),
                              ),
                            ),
                            Radio(
                                activeColor: AppColors.appbarLightBackground,
                                value: AppThemeMode.dark,
                                groupValue: state == ThemeMode.light
                                    ? AppThemeMode.light
                                    : state == ThemeMode.dark
                                        ? AppThemeMode.dark
                                        : AppThemeMode.system,
                                onChanged: (value) =>
                                    themeCubit.changeTheme(value!)),
                            Text('Тёмная',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: themeCubit.state != ThemeMode.dark
                                        ? null
                                        : Colors.blueAccent.shade700,
                                    fontWeight:
                                        themeCubit.state != ThemeMode.dark
                                            ? FontWeight.normal
                                            : FontWeight.bold)),
                          ]),

                          //System Mode
                          Column(children: [
                            GestureDetector(
                              onTap: () => context
                                  .read<AppThemeCubit>()
                                  .changeTheme(AppThemeMode.system),
                              child: Container(
                                width: AppHelperMethods.screenWidth(context) *
                                    0.200,
                                height: AppHelperMethods.screenHeight(context) *
                                    0.180,
                                decoration: BoxDecoration(
                                    border: themeCubit.state != ThemeMode.system
                                        ? null
                                        : Border.all(
                                            color: Colors.blueAccent, width: 2),
                                    borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
                                    image: const DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                            AppImages.systemModeIcon))),
                              ),
                            ),
                            Radio(
                                activeColor: AppColors.appbarLightBackground,
                                value: AppThemeMode.system,
                                groupValue: state == ThemeMode.system
                                    ? AppThemeMode.system
                                    : state == ThemeMode.light
                                        ? AppThemeMode.light
                                        : AppThemeMode.dark,
                                onChanged: (value) =>
                                    themeCubit.changeTheme(value!)),
                            Text('Как в системе',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: themeCubit.state != ThemeMode.system
                                        ? null
                                        : Colors.blueAccent.shade700,
                                    fontWeight:
                                        themeCubit.state != ThemeMode.system
                                            ? FontWeight.normal
                                            : FontWeight.bold)),
                          ]),
                        ],
                      )
                    ],
                  );
                },
              ))),
    );
  }
}
