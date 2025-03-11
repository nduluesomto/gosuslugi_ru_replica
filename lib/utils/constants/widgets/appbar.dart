import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/profile/profile.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import "package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart";

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key, required this.appBar});

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppHelperMethods.isDarkMode(context) ? AppColors.scaffoldDarkBackground : AppColors.appbarLightBackground,
      elevation: 0,
      title: InkWell(
        onTap: () => pushWithoutNavBar(context,
            MaterialPageRoute(builder: (context) => const ProfileView())),
        child: Row(
          children: [
            const ImageIcon(
              AssetImage(
                AppImages.iconsUser,
              ),
              size: AppSizes.iconSizeSm,
              color: AppColors.iconLightColor,
            ),
            const SizedBox(width: 6),
            SizedBox(
                width: AppHelperMethods.screenWidth(context) * 0.33,
                child: const Text(
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.fontLightColor),
                  'ДЖОНПОЛ СОМТОЧУКВКУ',
                  overflow: TextOverflow.ellipsis,
                )),
            const SizedBox(width: AppSizes.xs),
            const Icon(CupertinoIcons.forward, color: AppColors.iconLightColor),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage(AppImages.search),
            size: AppSizes.iconSizeSm,
            color: AppColors.iconLightColor,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(AppImages.notification),
              size: AppSizes.iconSizeSm,
              color: AppColors.iconLightColor,
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.lightContainerColor),
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusXs)),
          child: const Text(
            'госкан',
            style: TextStyle(
                fontWeight: FontWeight.w500, color: AppColors.fontLightColor),
          ),
        ),
        const SizedBox(width: AppSizes.sm),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
