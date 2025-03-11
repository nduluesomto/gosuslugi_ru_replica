import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/security/widgets/security_tile.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new,
                color: Colors.grey, size: AppSizes.iconSizeSm),
          ),
          title: const Text('Безопасность',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.paddingHorizontal,
                  vertical: AppSizes.paddingVertical),
              child: SizedBox(
                  height: double.maxFinite,
                  child: Column(
                    children: [
                      const SizedBox(height: AppSizes.xs),
                      securityTile(
                          title: 'Вход в систему',
                          description:
                              'Подтверждение через одноразовый код, смс, вход по эл.подписи',
                          action: () {}, context: context),
                      const SizedBox(height: AppSizes.sm),
                      securityTile(
                          title: 'Действия в системе',
                          description:
                              'Список устройств, с которых входили в приложение',
                          action: () {}, context: context),
                      const SizedBox(height: AppSizes.sm),
                      securityTile(
                          title: 'Межведомственные запросы',
                          description:
                              'Отображения запросов вашей персональной информации',
                          action: () {}, context: context),
                      const SizedBox(height: AppSizes.sm),
                      securityTile(
                          title: 'Мобильные приложения',
                          description:
                              'Список приложений и устройств, с которых входили на Госуслуги',
                          action: () {}, context: context),
                    ],
                  )),
            ),
          ),
        ));
  }
}
