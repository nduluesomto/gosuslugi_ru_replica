import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/home/widgets/services_menu.dart';
import 'package:gos_uslugi/screens/home/widgets/top_row-widgets.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/snils.dart';
import 'package:gos_uslugi/utils/constants/widgets/subaction_container.dart';

import 'notification_status.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(children: [
          const SubAction(),
          const SizedBox(height: AppSizes.sizedBoxMd),
          topRow(context),
          const SizedBox(height: AppSizes.sizedBoxMd),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: AppHelperMethods.screenHeight(context) * 0.10,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: AppSizes.paddingVertical + 4),
              decoration: BoxDecoration(
                border: Border.all(
                    color: AppColors.lightContainerColor, width: 0.4),
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
                color: AppColors.transparentColor,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Нет задолженностей',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: AppColors.fontLightColor),
                  ),
                  SizedBox(height: AppSizes.xs),
                  Text(
                    'уточните данные',
                    style: TextStyle(color: AppColors.fontLightColor),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSizes.sizedBoxMd),
          SnilsDocs(
              title: 'Документы для предъявления',
              backgroundColor: AppHelperMethods.isDarkMode(context)
                  ? AppColors.darkContainerColor
                  : AppColors.lightContainerColor),
          const SizedBox(height: AppSizes.sm),
          const ServicesMenu(),
          const SizedBox(height: AppSizes.sizedBoxSm),
          notificationStatus(context),
          const SizedBox(height: AppSizes.sizedBoxLg),
        ]));
  }
}
