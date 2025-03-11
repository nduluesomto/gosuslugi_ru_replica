import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class PopupWidget extends StatelessWidget {
  const PopupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      menuPadding: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
      ),
      color: AppHelperMethods.isDarkMode(context)
          ? AppColors.darkContainerColor
          : AppColors.lightContainerColor,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
      position: PopupMenuPosition.under,
      icon: Icon(
        CupertinoIcons.share_up,
        size: AppSizes.iconSizeSm,
        color: Colors.grey.shade500,
      ),
      itemBuilder: (BuildContext context) => [
        customPopupMenuItem(
          value: 'passport',
          text: 'Документ инностранного гражданина',
          context: context,
          dividerDisplay: true,
        ),
        customPopupMenuItem(
          value: 'snils',
          text: 'СНИЛС',
          context: context,
          dividerDisplay: true,
        ),
        customPopupMenuItem(
          value: 'inn',
          text: 'ИНН',
          context: context,
          dividerDisplay: true,
        ),
        customPopupMenuItem(
          value: 'address',
          text: 'Адрес',
          context: context,
          dividerDisplay: true,
        ),
        customPopupMenuItem(
          value: 'insurance',
          text: 'Полис ОМС',
          context: context,
          dividerDisplay: false,
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 'passport':
            debugPrint('Passport selected');
            break;
          case 'snils':
            debugPrint('Снилс selected');
            break;
          case 'inn':
            debugPrint('ИНН selected');
            break;
          case 'address':
            debugPrint('Адрес selected');
            break;
          case 'insurance':
            debugPrint('Полис ОМС selected');
            break;
        }
      },
    );
  }

  /// Custom PopupMenuItem to prevent shadow effect on selection
  PopupMenuItem<String> customPopupMenuItem({
    required String value,
    required String text,
    required BuildContext context,
    required bool dividerDisplay,
  }) {
    return PopupMenuItem<String>(
      value: value,
      padding: EdgeInsets.zero, // Removes extra padding
      child: InkWell(
        onTap: () {
          Navigator.pop(context, value); // Closes popup on tap
        },
        splashColor: Colors.transparent, // Removes highlight effect
        highlightColor: Colors.transparent, // Removes shadow effect
        child: popUpItem(
            text: text, context: context, dividerDisplay: dividerDisplay),
      ),
    );
  }

  /// Widget for each menu item with optional divider
  Widget popUpItem({
    required String text,
    required BuildContext context,
    required bool dividerDisplay,
  }) {
    return Column(
      children: [
        Container(
          width: AppHelperMethods.screenWidth(context) * 0.52,
          margin: EdgeInsets.zero,
          padding: const EdgeInsets.symmetric(vertical: AppSizes.xs),
          child: Padding(
            padding: const EdgeInsets.only(left: AppSizes.sm),
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        if (dividerDisplay) const Divider(color: Colors.grey, thickness: 1),
        // Shows divider only if needed
      ],
    );
  }
}
