import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

Widget agreementTile({
  required String title,
  required String description,
  required Function() action,
  required BuildContext context,
}) {
  return GestureDetector(
    onTap: action,
    child: Container(
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.paddingVertical + 6, horizontal: AppSizes.sm * 2),
      decoration: BoxDecoration(
          color:  AppHelperMethods.isDarkMode(context)
              ? AppColors.darkContainerColor
              : AppColors.lightContainerColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
          boxShadow: [ AppHelperMethods.isDarkMode(context)
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
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            const SizedBox(height: AppSizes.sm),
            SizedBox(
              width: AppHelperMethods.screenWidth(context) * 0.70,
              child: Text(
                description,
                style: TextStyle(color: AppHelperMethods.isDarkMode(context)? Colors.blueGrey.shade400 :Colors.grey.shade600, fontSize: 13),
              ),
            ),
          ]),
          const Icon(Icons.arrow_forward_ios,
              size: AppSizes.iconSizeXs, color: Colors.grey),
        ],
      ),
    ),
  );
}
