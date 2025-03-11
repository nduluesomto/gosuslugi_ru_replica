import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class PendingPaymentWidget extends StatelessWidget {
  const PendingPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppHelperMethods.screenHeight(context) * 0.12),
        Image.asset(AppImages.notFound,
            color: AppHelperMethods.isDarkMode(context)
                ? AppColors.iconLightColor
                : null,
            width: AppHelperMethods.screenWidth(context) * 0.340,
            height: AppHelperMethods.screenHeight(context) * 0.160),
        const SizedBox(height: 30),
        const Text(
          'Ничего не найдено',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: 6),
        Text(
          textAlign: TextAlign.center,
          'Возможно недостаточно данных для поиска штрафов и задолженностей',
          style: TextStyle(
              fontSize: 14,
              color: AppHelperMethods.isDarkMode(context)
                  ? Colors.blueGrey.shade400
                  : Colors.grey.shade600),
        ),
      ],
    );
  }
}
