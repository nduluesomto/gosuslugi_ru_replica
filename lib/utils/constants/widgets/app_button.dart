import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class AppButton extends StatelessWidget {
  final String buttonTitle;
  final void Function() onTap;

  const AppButton({super.key, required this.buttonTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.md),
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: AppHelperMethods.isDarkMode(context)
                  ? AppColors.buttonLightColor
                  : AppColors.buttonDarkColor,
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)),
          child: Center(
              child: Text(
            buttonTitle,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppHelperMethods.isDarkMode(context)
                    ? AppColors.fontLightColor
                    : AppColors.fontLightColor),
          )),
        ));
  }
}
