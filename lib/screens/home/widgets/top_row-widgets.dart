import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class TopRowWidgets extends StatelessWidget {
  final String imageName;
  final Function() action;

  const TopRowWidgets(
      {super.key, required this.imageName, required this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSizes.sm),
      child: InkWell(
          onTap: action,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
            child: Image.asset(imageName,
                width: AppHelperMethods.screenWidth(context) * 0.20,
                height: AppHelperMethods.screenHeight(context) * 0.65,
                fit: BoxFit.fill),
          )),
    );
  }
}

Widget topRow(BuildContext context) {
  return SizedBox(
    height: AppHelperMethods.screenHeight(context) * 0.10,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        TopRowWidgets(
          imageName: AppImages.slideOne,
          action: () {},
        ),
        TopRowWidgets(
          imageName: AppImages.slideTwo,
          action: () {},
        ),
        TopRowWidgets(
          imageName: AppImages.slideThree,
          action: () {},
        ),
        TopRowWidgets(
          imageName: AppImages.slideFour,
          action: () {},
        ),
        TopRowWidgets(
          imageName: AppImages.slideFive,
          action: () {},
        ),
        TopRowWidgets(
          imageName: AppImages.slideSix,
          action: () {},
        ),
        TopRowWidgets(
          imageName: AppImages.slideSeven,
          action: () {},
        ),
        TopRowWidgets(
          imageName: AppImages.slideEight,
          action: () {},
        ),
        TopRowWidgets(
          imageName: AppImages.slideNine,
          action: () {},
        ),
      ],
    ),
  );
}
