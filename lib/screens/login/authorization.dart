import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/login/widgets/registration_modal_sheet.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/app_button.dart';
import 'package:gos_uslugi/utils/constants/widgets/persistent_navbar.dart';

class Authorization extends StatelessWidget {
  const Authorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: AppSizes.sm),
          child: Image.asset(AppImages.robot, fit: BoxFit.cover),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: AppSizes.sm),
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                border: Border.all(
                    color: AppHelperMethods.isDarkMode(context)
                        ? AppColors.lightContainerColor
                        : AppColors.darkContainerColor),
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusXs)),
            child: Text(
              'госкан',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppHelperMethods.isDarkMode(context)
                      ? AppColors.fontLightColor
                      : AppColors.fontDarkColor),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.paddingHorizontal,
            vertical: AppSizes.paddingVertical),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Image.asset(AppImages.appLogo,
                width: AppHelperMethods.screenWidth(context) * 0.3),
            const Spacer(),
          //
            AppButton(buttonTitle: 'Войти', onTap: ()=>  Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const PersistentTabScreen()))),
            const SizedBox(height: AppSizes.sizedBoxSm),
            InkWell(
                onTap: () {
                  showModalBottomSheet(
                      showDragHandle: true,
                      context: context,
                      builder: (context) => const RegistrationModalSheet());
                },
                child: Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                      color: Colors.blue.shade700, fontWeight: FontWeight.w600),
                ))
          ],
        ),
      )),
    );
  }
}
