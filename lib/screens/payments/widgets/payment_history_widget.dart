import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class PaymentHistoryWidget extends StatelessWidget {
  const PaymentHistoryWidget({super.key});

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
          'Пока здесь ничего нет',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const SizedBox(height: AppSizes.sm),
        Text(
          textAlign: TextAlign.center,
          'Тут будет отображаться информация о совершённых вами платежах через Госуслуги',
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
