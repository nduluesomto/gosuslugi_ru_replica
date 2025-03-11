import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/documents/documents.dart';
import 'package:gos_uslugi/screens/home/home.dart';
import 'package:gos_uslugi/screens/payments/payment.dart';
import 'package:gos_uslugi/screens/robot_chat/robot_chat.dart';
import 'package:gos_uslugi/screens/services/services.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class PersistentTabScreen extends StatelessWidget {
  const PersistentTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: const HomeView(),
            item: ItemConfig(
                title: 'главная',
                icon: const ImageIcon(
                  AssetImage(AppImages.home),
                  size: AppSizes.navIconSize,
                )),
          ),
          PersistentTabConfig(
            screen: const ServiceView(),
            item: ItemConfig(
                title: 'услуги',
                icon: const ImageIcon(
                  AssetImage(AppImages.menuIcon),
                  size: AppSizes.navIconSize,
                )),
          ),
          PersistentTabConfig(
            screen: const RobotChatPage(),
            item: ItemConfig(
                icon: const ImageIcon(
              AssetImage(AppImages.robot),
              size: 80,
            )),
          ),
          PersistentTabConfig(
            screen: const PaymentView(),
            item: ItemConfig(
                title: 'платежи',
                icon: const ImageIcon(
                  AssetImage(AppImages.walletIcon),
                  size: AppSizes.navIconSize,
                )),
          ),
          PersistentTabConfig(
              screen: const DocumentView(),
              item: ItemConfig(
                  title: 'документы',
                  icon: const ImageIcon(
                    AssetImage(AppImages.fileIcon),
                    size: AppSizes.navIconSize,
                  ))),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
            navBarConfig: navBarConfig,
            navBarDecoration: NavBarDecoration(
                color: AppHelperMethods.isDarkMode(context)
                    ? AppColors.scaffoldTabBarBackground
                    : Colors.grey.shade100)));
  }
}
