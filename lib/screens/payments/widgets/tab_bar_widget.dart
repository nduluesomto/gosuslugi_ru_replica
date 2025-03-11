import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class TabBarWidget extends StatelessWidget {
  final int tabCount;

  const TabBarWidget({super.key, required this.tabCount});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        padding: const EdgeInsets.symmetric(
            vertical: AppSizes.xs, horizontal: AppSizes.xs),
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: AppHelperMethods.isDarkMode(context)
                ? Colors.grey.shade900
                : Colors.grey.shade400.withAlpha(70),
            borderRadius: BorderRadius.circular(8)),
        child: TabBar(
            dividerHeight: 0,
            padding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            dividerColor: AppColors.transparentColor,
            indicatorWeight: 0,
            indicator: BoxDecoration(
              border: const Border(bottom: BorderSide.none),
              boxShadow: [
                AppHelperMethods.isDarkMode(context)
                    ? const BoxShadow()
                    : BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1,
                        blurRadius: 8)
              ],
              color: AppColors.lightContainerColor,
              borderRadius: BorderRadius.circular(8),
            ),
            labelColor: AppColors.fontDarkColor,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                const TextStyle(fontWeight: FontWeight.normal),
            tabs: [
              tabs(tabCount: tabCount, tabTitle: 'к оплате'),
              tabs(tabCount: tabCount, tabTitle: 'история платежей'),
            ]));
  }
}

Widget tabs({required int tabCount, required String tabTitle}) {
  return Tab(
    iconMargin: EdgeInsets.zero,
    child: Center(child: Text(tabTitle)),
  );
}
