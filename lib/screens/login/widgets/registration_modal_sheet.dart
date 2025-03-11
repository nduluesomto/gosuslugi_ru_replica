import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/app_button.dart';
import 'package:gos_uslugi/utils/constants/widgets/persistent_navbar.dart';

class RegistrationModalSheet extends StatelessWidget {
  const RegistrationModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppHelperMethods.screenHeight(context) * 0.35,
      padding:
          const EdgeInsets.symmetric(horizontal: AppSizes.paddingHorizontal),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              'Регистрация на Госуслугах',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            const SizedBox(width: AppSizes.sm),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text('закрыть',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue.shade700)),
            )
          ]),
          const SizedBox(height: AppSizes.sizedBoxMd),
          const Text(
              textAlign: TextAlign.start,
              'Если у вас есть учётная запись, попробуйте восстановить доступ к ней',
              style: TextStyle(fontSize: 13)),
          const SizedBox(height: AppSizes.sizedBoxSm),
          const Text(
              'Если у вас не было учётной записи, продолжите регистрацию',
              style: TextStyle(fontSize: 13)),
          const SizedBox(height: AppSizes.sizedBoxLg),
          AppButton(buttonTitle: 'Продолжить регистрацию', onTap: () {}),
          const SizedBox(height: AppSizes.sizedBoxSm),
          InkWell(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const PersistentTabScreen()),
                    (Route route) => false);
              },
              child: Text(
                'Восстановить доступ',
                style: TextStyle(
                    color: Colors.blue.shade700, fontWeight: FontWeight.w600),
              ))
        ],
      ),
    );
  }
}
