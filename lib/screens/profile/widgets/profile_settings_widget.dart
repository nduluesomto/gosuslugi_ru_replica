import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

Widget profileSettingTile({
  required String title,
  required Function() onAction,
  required String detailText,
  required BuildContext context,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.paddingHorizontal,
        vertical: AppSizes.paddingVertical),
    decoration: BoxDecoration(
        color: AppHelperMethods.isDarkMode(context)
            ? AppColors.darkContainerColor
            : AppColors.lightContainerColor,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        boxShadow: [
          AppHelperMethods.isDarkMode(context)
              ? const BoxShadow()
              : BoxShadow(
              color: Colors.grey.withAlpha(50), spreadRadius: 4, blurRadius: 6)
        ]),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          const SizedBox(height: AppSizes.sizedBoxSm),
          Row(
            children: [
              Icon(Icons.verified_rounded,
                  color: Colors.green.shade500, size: AppSizes.iconSizeXs),
              const SizedBox(width: AppSizes.xs),
              Text(
                detailText,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          )
        ]),
        GestureDetector(
          onTap: onAction,
          child: Text(
            'изменить',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade700,
                fontSize: 13),
          ),
        )
      ],
    ),
  );
}
