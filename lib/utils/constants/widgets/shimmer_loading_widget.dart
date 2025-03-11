import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget extends StatelessWidget {
  const ShimmerLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHelperMethods.screenHeight(context) * 0.8,
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: AppHelperMethods.isDarkMode(context) ? AppColors.darkContainerColor : Colors.grey[300]!,
                  highlightColor: AppHelperMethods.isDarkMode(context) ? Colors.black38 : Colors.grey[100]!,
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ));
          }),
    );
  }
}
