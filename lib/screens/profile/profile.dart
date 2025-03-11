import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/login/authorization.dart';
import 'package:gos_uslugi/screens/profile/profile_settings.dart';
import 'package:gos_uslugi/screens/profile/widgets/profile_tiles.dart';
import 'package:gos_uslugi/screens/profile/widgets/profile_top_container.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new,
                color: Colors.grey, size: AppSizes.iconSizeSm),
          ),
          title: const Text(
            'Профиль',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.paddingHorizontal,
                    vertical: AppSizes.paddingVertical),
                child: Column(
                  children: [
                    const SizedBox(height: AppSizes.sm),
                    profileTopContainer(() {
                      pushWithoutNavBar(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileSetting()));
                    }, context),
                    const SizedBox(height: AppSizes.sizedBoxMd),
                    const ProfileTileStack(),
                    const SizedBox(height: AppSizes.sizedBoxSm),
                    Center(
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Authorization()),
                                  (Route route) => false);
                            },
                            child: Text(
                              'Выйти',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue.shade800),
                            ))),
                    const SizedBox(height: AppSizes.sizedBoxLg),
                  ],
                )),
          ),
        ));
  }
}
