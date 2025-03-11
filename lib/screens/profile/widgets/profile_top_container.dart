import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

Widget profileTopContainer(
  Function() action,
  BuildContext context,
) {
  return InkWell(
    onTap: action,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: AppSizes.xs),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: AppHelperMethods.isDarkMode(context)
              ? AppColors.darkContainerColor
              : AppColors.lightContainerColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
          boxShadow: [
            AppHelperMethods.isDarkMode(context)
                ? const BoxShadow()
                : BoxShadow(
                    color: Colors.grey.withAlpha(70),
                    spreadRadius: 3,
                    blurRadius: 10)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImages.iconsUser,
            height: AppSizes.imageHeight - 10,
            color: Colors.grey.shade500,
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: AppHelperMethods.screenWidth(context) * 0.605,
                  child: const Text('ДИКЕ-НДУЛУЕ \nДЖОНПОЛ СОМТОЧУКВУ',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                ),
                const SizedBox(height: AppSizes.sm),
                Row(children: [
                  Image.asset(
                    AppImages.verified,
                    width: 18,
                  ),
                  const SizedBox(width: AppSizes.xs),
                  const Text('подтверждённая учётная запись',
                      style: TextStyle(fontSize: 12)),
                ]),
              ]),
          const SizedBox(width: AppSizes.sm),
          const Icon(
            Icons.arrow_forward_ios,
            size: AppSizes.iconSizeXs,
          )
        ],
      ),
    ),
  );
}
