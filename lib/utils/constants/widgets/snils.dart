import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class SnilsDocs extends StatelessWidget {
  final String title;
  final Color backgroundColor;

  const SnilsDocs(
      {super.key, required this.title, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      decoration: BoxDecoration(
          boxShadow: [
            AppHelperMethods.isDarkMode(context) ? const BoxShadow() : BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 0.2,
                blurRadius: 5.6,
                offset: const Offset(0, 4))
          ],
          color: backgroundColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:  TextStyle(
                  fontSize: 15,
                  color: AppHelperMethods.isDarkMode(context) ? AppColors.fontLightColor : AppColors.fontDarkColor,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: AppSizes.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppImages.cnlc,
                    height: AppSizes.imageHeight,
                    width: AppSizes.imageWidth,
                  ),
                  const SizedBox(height: AppSizes.xs),
                  const Text(
                    'СНИЛС',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(width: AppSizes.sizedBoxMd),
              Column(children: [
                Image.asset(
                  AppImages.wallet,
                  height: AppSizes.imageHeight,
                  width: AppSizes.imageWidth,
                ),
                const SizedBox(height: AppSizes.xs),
                const Text('Все',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))
              ])
            ],
          )
        ],
      ),
    );
  }
}
