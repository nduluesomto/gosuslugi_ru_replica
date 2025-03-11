import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/profile/widgets/profile_settings_widget.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new,
                color: Colors.grey, size: AppSizes.iconSizeSm),
          ),
          title: const Text(
            'Настройка учётной записи',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              right: AppSizes.paddingHorizontal,
              left: AppSizes.paddingHorizontal,
              bottom: AppSizes.xl),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.iconsUser,
                height: 100,
                fit: BoxFit.cover,
                color: Colors.grey.shade500,
              ),
              const SizedBox(height: AppSizes.sm),
              Text('Добавить фото',
                  style: TextStyle(color: Colors.blue.shade700, fontWeight: FontWeight.bold, fontSize: 13)),
              const SizedBox(height: AppSizes.sizedBoxSm),
              Center(
                  child: SizedBox(
                width: AppHelperMethods.screenWidth(context) * 0.650,
                child: Text(
                  textAlign: TextAlign.center,
                  'Дике-Ндулуе Джонпол Сомточукву'.toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
              )),
              const SizedBox(height: AppSizes.sm),
              Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.xs, vertical: AppSizes.xs),
                  width: AppHelperMethods.screenWidth(context) * 0.600,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade200.withAlpha(50),
                      borderRadius:
                          BorderRadius.circular(AppSizes.borderRadiusMd)),
                  child: Row(
                    children: [
                      Icon(Icons.verified_rounded,
                          color: Colors.green.shade500,
                          size: AppSizes.iconSizeXs),
                      const SizedBox(width: AppSizes.xs),
                      const Text(
                        ' подтверждённая учётная запись',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )),
              const SizedBox(height: AppSizes.sizedBoxLg),
              profileSettingTile(
                  title: 'Электронная почта',
                  onAction: () {},
                  detailText: 'dikenduluesomto.jp@gmail.com'.toUpperCase(), context: context),
              const SizedBox(height: AppSizes.sm),
              profileSettingTile(
                  title: 'Номер телефона',
                  onAction: () {},
                  detailText: '+7 911 000-00-00'.toUpperCase(), context: context),
              const Spacer(),
              Text('Сменить пароль',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent.shade700,
                      fontSize: 13)),
              const SizedBox(height: AppSizes.sm),
              Text(
                'Удалить профиль',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.red.shade700,
                    fontSize: 13),
              ),
              const SizedBox(height: AppSizes.lg),
            ],
          ),
        ));
  }
}
