import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class BankCardScreen extends StatelessWidget {
  const BankCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new,
              color: Colors.grey, size: AppSizes.iconSizeSm),
        ),
        title: const Text('Банковские карты и счёт',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.paddingHorizontal,
                  vertical: AppSizes.paddingVertical),
              child: SizedBox(
                height: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: AppSizes.sm),
                      child: Text('Карты',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: AppSizes.sizedBoxSm),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: AppSizes.paddingVertical + 6,
                            horizontal: AppSizes.paddingHorizontal),
                        decoration: BoxDecoration(
                            color:  AppHelperMethods.isDarkMode(context)
                                ? AppColors.darkContainerColor
                                : AppColors.lightContainerColor,
                            borderRadius:
                                BorderRadius.circular(AppSizes.borderRadiusSm),
                            boxShadow: [  AppHelperMethods.isDarkMode(context)
                                ? const BoxShadow()
                                :
                              BoxShadow(
                                  color: Colors.grey.withAlpha(50),
                                  spreadRadius: 4,
                                  blurRadius: 6)
                            ]),
                        child: Row(children: [
                          DottedBorder(
                              strokeWidth: 0.4,
                              borderType: BorderType.RRect,
                              dashPattern: const [4, 3, 4, 3],
                              radius: const Radius.circular(
                                  AppSizes.borderRadiusSm),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppSizes.sm,
                                    vertical: AppSizes.xs),
                                child: Center(
                                  child: Icon(Icons.add,
                                      color: Colors.grey.shade600),
                                ),
                              )),
                          const SizedBox(width: AppSizes.md),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Добавить карту'),
                              Text(
                                  'для оплаты штрафов, пошлин и задолженностей',
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 11))
                            ],
                          )
                        ]))
                  ],
                ),
              ))),
    );
  }
}
