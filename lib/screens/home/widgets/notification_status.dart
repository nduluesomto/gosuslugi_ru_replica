import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

Widget notificationStatus(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(color: Colors.grey.shade300, width: AppHelperMethods.isDarkMode(context) ? 0.2 : 1.0),
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
    ),
    child: Text(
      'Уведомления и статусы заявлений теперь в колокольчике сверху',
      style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
    ),
  );
}
