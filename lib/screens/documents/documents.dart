import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/documents/widgets/document_tiles.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/snils.dart';

class DocumentView extends StatelessWidget {
  const DocumentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.paddingHorizontal,
                    vertical: AppSizes.paddingVertical),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  const Text('Документы',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w800)),
                  const SizedBox(height: AppSizes.sizedBoxLg),
                  SnilsDocs(
                    title: 'Для предъявления',
                    backgroundColor: AppHelperMethods.isDarkMode(context)
                        ? AppColors.darkContainerColor
                        : AppColors.lightContainerColor,
                  ),
                  const SizedBox(height: AppSizes.sizedBoxLg),
                  const DocumentTileStack(),
                ]),
              ))),
    );
  }
}
