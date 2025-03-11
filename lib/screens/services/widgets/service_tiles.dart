import 'package:flutter/material.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';
import 'package:gos_uslugi/utils/constants/widgets/custom_tiles.dart';

class ServiceTileStack extends StatelessWidget {
  const ServiceTileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHelperMethods.screenHeight(context) * 0.860,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          customTiles(
              imageName: AppImages.account,
              barTitle: 'Популярные услуги',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.medicals,
              barTitle: 'Здоровье',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.agreement,
              barTitle: 'Справки Выписки',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.payments,
              barTitle: 'Пенсии Пособия',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.transport,
              barTitle: 'Транспорт Права',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.family,
              barTitle: 'Семья',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.education,
              barTitle: 'Образование Дети',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.docs,
              barTitle: 'Регистрация Паспорт',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.justice,
              barTitle: 'Штрафы Налоги',
              onTap: () {},
              context: context),
          customTiles(
              imageName: AppImages.estate,
              barTitle: 'Земиля Дом',
              onTap: () {},
              context: context),
        ],
      ),
    );
  }
}
