import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

Widget personalDocsTile(
    {required String iconName,
    required String titleName,
    required String content,
    required BuildContext context,
    required bool isCenterAlign,
    required Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(
          vertical: AppSizes.paddingVertical + 6, horizontal: AppSizes.sm * 2),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
              crossAxisAlignment: isCenterAlign
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                Image.asset(iconName, height: 32, width: 32),
                const SizedBox(width: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: AppHelperMethods.screenWidth(context) * 0.7,
                        child: Text(
                          titleName,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        )),
                    const SizedBox(height: 6),
                    Text(content,
                        style: TextStyle(
                          fontSize: 12,
                          color: AppHelperMethods.isDarkMode(context)
                              ? Colors.blueGrey.shade400
                              : Colors.grey.shade600,
                        ))
                  ],
                )
              ]),
          Icon(Icons.arrow_forward_ios, size: 13, color: Colors.grey.shade500)
        ],
      ),
    ),
  );
}

Widget personalSecondTile(
    {required String iconName,
    required String titleName,
    required String content,
    required BuildContext context,
    required String reason,
    required Function() onTap}) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(iconName, height: 32, width: 32),
            const SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: AppHelperMethods.screenWidth(context) * 0.7,
                    child: Text(
                      titleName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 17),
                    )),
                const SizedBox(height: 8),
                SizedBox(
                  width: AppHelperMethods.screenWidth(context) * 0.7,
                  child: Text(content,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppHelperMethods.isDarkMode(context)
                            ? Colors.blueGrey.shade400
                            : Colors.grey.shade600,
                      )),
                ),
                const SizedBox(height: 15),
                InkWell(
                    onTap: () {},
                    child: Text(
                      reason,
                      style: TextStyle(
                          color: Colors.blueAccent.shade700,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            )
          ]),
          Icon(Icons.arrow_forward_ios, size: 13, color: Colors.grey.shade500)
        ],
      ));
}

Widget personalThirdTile(
    {required String titleName,
    required String actionText,
    required BuildContext context,
    required String actionTextTwo,
    required Function() firstAction,
    required Function() secondAction,
    required bool notRequired}) {
  return DottedBorder(
    strokeWidth: 0.5,
    borderType: BorderType.RRect,
    dashPattern: const [4, 3, 4, 3],
    radius: const Radius.circular(AppSizes.borderRadiusSm),
    color: Colors.blue.shade300,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 13),
      decoration: BoxDecoration(
          color: AppHelperMethods.isDarkMode(context)
              ? Colors.transparent
              : AppColors.lightContainerColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 200,
              child: Text(
                titleName,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              )),
          const SizedBox(height: 12),
          InkWell(
              onTap: firstAction,
              child: Text(
                actionText,
                style: TextStyle(
                    color: Colors.blue.shade300,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              )),
          notRequired
              ? const SizedBox(height: 0)
              : Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: InkWell(
                      onTap: secondAction,
                      child: Text(
                        actionTextTwo,
                        style: TextStyle(
                            color: Colors.blue.shade300,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      )),
                ),
        ],
      ),
    ),
  );
}
