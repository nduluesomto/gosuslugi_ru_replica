import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/personal_docs/personal_docs.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/custom_tiles.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class DocumentTileStack extends StatelessWidget {
  const DocumentTileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppHelperMethods.screenWidth(context),
        height: AppHelperMethods.screenHeight(context) * 1.1,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            customTiles(
                imageName: AppImages.docs,
                barTitle: 'Личные документы',
                onTap: () {
                  pushWithoutNavBar(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalDocs()));
                },
                context: context),
            customTiles(
                imageName: AppImages.family,
                barTitle: 'Семья и дети',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.transport,
                barTitle: 'Транспорт',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.medicals,
                barTitle: 'Здоровье',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.estate,
                barTitle: 'Недвижимость',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.work,
                barTitle: 'Работа и пенсия',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.education,
                barTitle: 'Образование',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.payments,
                barTitle: 'Льготы и выплаты',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.earnings,
                barTitle: 'Доходы и налоги',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.justice,
                barTitle: 'Правопорядок',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.tickets,
                barTitle: 'Карта болельщика билеты',
                onTap: () {},
                context: context),
            customTiles(
                imageName: AppImages.archive,
                barTitle: 'Цифровой архив',
                onTap: () {},
                context: context),
            const SizedBox(height: AppSizes.lg),
          ],
        ));
  }
}
