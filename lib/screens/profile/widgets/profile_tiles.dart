import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/agreement/agreement.dart';
import 'package:gos_uslugi/screens/app_theme/app_theme.dart';
import 'package:gos_uslugi/screens/bank_card/bank_card.dart';
import 'package:gos_uslugi/screens/notification/notification_setting.dart';
import 'package:gos_uslugi/screens/security/security.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/custom_tiles.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

Widget aboutApp(
        {required String barTitle,
        required Function() onTap,
        required BuildContext context}) =>
    GestureDetector(

      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: AppSizes.sm),
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
                      color: Colors.grey.shade300,
                      spreadRadius: 0.2,
                      blurRadius: 5.6,
                      offset: const Offset(0, 4)),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              const SizedBox(width: AppSizes.sm * 4),
              Text(barTitle,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500))
            ]),
            const Icon(Icons.arrow_forward_ios,
                size: AppSizes.iconSizeXs, color: Colors.grey),
          ],
        ),
      ),
    );

class ProfileTileStack extends StatelessWidget {
  const ProfileTileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHelperMethods.screenHeight(context) * 0.92,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          customTiles(
              imageName: AppImages.account,
              barTitle: 'Банковские карты и счёт',
              onTap: () => pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BankCardScreen())),
              context: context),
          customTiles(
              imageName: AppImages.signature,
              barTitle: 'Электронная подпись',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.agreement,
              barTitle: 'Согласия и доверенности',
              onTap: () => pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AgreementScreen())),
              context: context),
          customTiles(
              imageName: AppImages.security,
              barTitle: 'Безопасность',
              onTap: () => pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecurityScreen())),
              context: context),
          customTiles(
              imageName: AppImages.biometric,
              barTitle: 'Биометрия',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.alarm,
              barTitle: 'Настройки уведомлений',
              onTap: () => pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationSettings())),
              context: context),
          customTiles(
              imageName: AppImages.envelop,
              barTitle: 'Настройки госпочты',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.location,
              barTitle: 'Отделения и МФЦ',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.question,
              barTitle: 'Помощь и поддержка',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.mode,
              barTitle: 'Тема оформления',
              onTap: () => pushWithoutNavBar(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AppThemeSettings())),
              context: context),
          const SizedBox(height: AppSizes.sizedBoxSm),
          aboutApp(barTitle: 'О приложении', onTap: () {}, context: context)
        ],
      ),
    );
  }
}
