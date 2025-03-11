import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class ServicesMenu extends StatelessWidget {
  const ServicesMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
          boxShadow: AppHelperMethods.isDarkMode(context)
              ? []
              : [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 0.2,
                      blurRadius: 5.6,
                      offset: const Offset(0, 4)),
                  BoxShadow(
                      color: Colors.grey.shade300,
                      spreadRadius: 0.2,
                      blurRadius: 5.6,
                      offset: const Offset(1, -1))
                ],
          color: AppHelperMethods.isDarkMode(context)
              ? AppColors.darkContainerColor
              : AppColors.lightContainerColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Сервисы и приложения",
              style: TextStyle(
                  fontSize: 16,
                  color: AppHelperMethods.isDarkMode(context)
                      ? AppColors.fontLightColor
                      : AppColors.fontDarkColor,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppImages.health,
                    height: AppSizes.imageHeight,
                    width: AppSizes.imageWidth,
                  ),
                  const SizedBox(height: AppSizes.xs),
                  const Text('Здоровье', style: TextStyle(fontSize: 12))
                ],
              ),
              const SizedBox(width: AppSizes.xs),
              Column(
                children: [
                  Image.asset(
                    AppImages.auto,
                    height: AppSizes.imageHeight,
                    width: AppSizes.imageWidth,
                  ),
                  const SizedBox(height: AppSizes.xs),
                  const Text('Авто', style: TextStyle(fontSize: 12))
                ],
              ),
              const SizedBox(width: AppSizes.xs),
              Column(
                children: [
                  Image.asset(
                    AppImages.key,
                    height: AppSizes.imageHeight,
                    width: AppSizes.imageWidth,
                  ),
                  const SizedBox(height: AppSizes.xs),
                  const Text('Госключ', style: TextStyle(fontSize: 12))
                ],
              ),
              const SizedBox(width: AppSizes.xs),
              Column(children: [
                Image.asset(
                  AppImages.menu,
                  height: AppSizes.imageHeight,
                  width: AppSizes.imageWidth,
                ),
                const SizedBox(height: AppSizes.xs),
                const Text('Другие', style: TextStyle(fontSize: 12))
              ])
            ],
          )
        ],
      ),
    );
  }
}
