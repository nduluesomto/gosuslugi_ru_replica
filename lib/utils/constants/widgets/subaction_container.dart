import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class SubAction extends StatelessWidget {
  const SubAction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.sizedBoxLg,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          subActionContainer(title: 'Запись к врачу', action: () {}),
          subActionContainer(title: 'Электронная трудовая', action: () {}),
          subActionContainer(title: 'Регистрация ТС', action: () {}),
          subActionContainer(title: 'Справка о судимости', action: () {}),
          subActionContainer(title: 'Приставы', action: () {})
        ],
      ),
    );
  }
}

Widget subActionContainer({required String title, required Function() action}) {
  return InkWell(
    onTap: action,
    child: Container(
      height: AppSizes.sm,
      margin: const EdgeInsets.only(right: AppSizes.sm),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.transparentColor,
        border: Border.all(color: AppColors.lightContainerColor, width: 0.4),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(AppSizes.borderRadiusMd),
            bottomRight: Radius.circular(AppSizes.borderRadiusMd),
            bottomLeft: Radius.circular(AppSizes.borderRadiusMd)),
      ),
      child: Center(
          child: Text(
        title,
        style: const TextStyle(color: AppColors.fontLightColor),
      )),
    ),
  );
}
