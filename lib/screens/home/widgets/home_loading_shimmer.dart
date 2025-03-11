import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:shimmer/shimmer.dart';

class HomeLoadingShimmer extends StatelessWidget {
  const HomeLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHelperMethods.screenHeight(context),
      child: Column(
        children: [
          SizedBox(
            height: AppSizes.sizedBoxLg,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, index) {
                  return subActionShimmer(context: context);
                }),
          ),
          const SizedBox(height: AppSizes.sizedBoxMd),
          SizedBox(
            height: AppHelperMethods.screenHeight(context) * 0.10,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return topRowShimmer(context: context);
                }),
          ),
          const SizedBox(height: AppSizes.sizedBoxMd),
          subContainerShimmer(context: context),
          const SizedBox(height: AppSizes.sizedBoxMd),
          containerShimmer(context: context),
          const SizedBox(height: AppSizes.sizedBoxSm),
          containerShimmer(context: context),
        ],
      ),
    );
  }
}

Widget subActionShimmer({required BuildContext context}) {
  return Shimmer.fromColors(
    baseColor: AppHelperMethods.isDarkMode(context)
        ? AppColors.darkContainerColor
        : Colors.grey[300]!,
    highlightColor: AppHelperMethods.isDarkMode(context)
        ? Colors.black38
        : Colors.grey[100]!,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      height: AppSizes.sm,
      width: AppHelperMethods.screenWidth(context) * 0.3,
      margin: const EdgeInsets.only(right: AppSizes.sm),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    ),
  );
}

Widget topRowShimmer({required BuildContext context}) {
  return Shimmer.fromColors(
    baseColor: AppHelperMethods.isDarkMode(context)
        ? AppColors.darkContainerColor
        : Colors.grey[300]!,
    highlightColor: AppHelperMethods.isDarkMode(context)
        ? Colors.black38
        : Colors.grey[100]!,
    child: Padding(
      padding: const EdgeInsets.only(right: AppSizes.sm),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        child:  Container( width: AppHelperMethods.screenWidth(context) * 0.20,
            height: AppHelperMethods.screenHeight(context) * 0.65, color: Colors.grey[300]),
      ),
    ),
  );
}

Widget subContainerShimmer({required BuildContext context}) {
  return Shimmer.fromColors(
    baseColor: AppHelperMethods.isDarkMode(context)
        ? AppColors.darkContainerColor
        : Colors.grey[300]!,
    highlightColor: AppHelperMethods.isDarkMode(context)
        ? Colors.black38
        : Colors.grey[100]!,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      ),
      width: double.infinity,
      height: AppHelperMethods.screenHeight(context) * 0.10,
    ),
  );
}

Widget containerShimmer({required BuildContext context}) {
  return Shimmer.fromColors(
    baseColor: AppHelperMethods.isDarkMode(context)
        ? AppColors.darkContainerColor
        : Colors.grey[300]!,
    highlightColor: AppHelperMethods.isDarkMode(context)
        ? Colors.black38
        : Colors.grey[100]!,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[300],
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      ),
      width: double.infinity,
      height: AppHelperMethods.screenHeight(context) * 0.16,
    ),
  );
}
