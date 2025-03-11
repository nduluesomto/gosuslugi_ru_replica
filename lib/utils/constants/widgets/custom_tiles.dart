import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

Widget customTiles({required String imageName,
  required String barTitle,
  required BuildContext context,
  required Function() onTap}) {
  return GestureDetector(

    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.paddingHorizontal,
          vertical: AppSizes.paddingVertical + 2),
      decoration: BoxDecoration(
          color: AppHelperMethods.isDarkMode(context)
              ? AppColors.darkContainerColor
              : AppColors.lightContainerColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
          boxShadow: [
            AppHelperMethods.isDarkMode(context)
                ? const BoxShadow()
                : BoxShadow(
                color: Colors.grey.withAlpha(50),
                spreadRadius: 4,
                blurRadius: 6)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Image.asset(
                fit: BoxFit.cover,
                imageName,
                height: AppSizes.iconSizeMd,
                width: AppSizes.iconSizeMd),
            const SizedBox(width: AppSizes.sm),
            Text(barTitle,
                style:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
          ]),
          const Icon(Icons.arrow_forward_ios,
              size: AppSizes.iconSizeXs, color: Colors.grey),
        ],
      ),
    ),
  );
}