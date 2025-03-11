import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

Widget notificationTile({
  required Function() action,
  required String title,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: action,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
          color: AppHelperMethods.isDarkMode(context)
              ? AppColors.darkContainerColor
              : AppColors.lightContainerColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
          boxShadow: [
            AppHelperMethods.isDarkMode(context)
                ? const BoxShadow()
                :
            BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 0.2,
                blurRadius: 5.6,
                offset: const Offset(0, 4)),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
          const Icon(Icons.arrow_forward_ios, size: 13, color: Colors.grey),
        ],
      ),
    ),
  );
}
