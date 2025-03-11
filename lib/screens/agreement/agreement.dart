import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/agreement/widgets/agreement_tile.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class AgreementScreen extends StatelessWidget {
  const AgreementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios_new,
                color: Colors.grey, size: AppSizes.iconSizeSm),
          ),
          title: const Text('Согласия и доверенности',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        ),
        body: SafeArea(
          child: SizedBox(
            height: AppHelperMethods.screenHeight(context),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.paddingHorizontal,
                      vertical: AppSizes.paddingVertical),
                  child: SizedBox(
                    height: double.maxFinite,
                    child: Column(
                      children: [
                        const SizedBox(height: AppSizes.xs),
                        agreementTile(
                            title: 'Согласия',
                            description:
                                'Согласия на предоставление организациям ваших персональных данных',
                            action: () {},
                            context: context),
                        const SizedBox(height: AppSizes.sm),
                        agreementTile(
                            title: 'Разрешения',
                            description:
                                'Разрешения на доступ к вашим данным для авторизации',
                            action: () {},
                            context: context),
                        const SizedBox(height: AppSizes.sm),
                        agreementTile(
                            title: 'Авторизованные порталы',
                            description:
                                'Информационные системы ведомств и организаций, которые могут отображать поданные заявления на Госуслугах',
                            action: () {},
                            context: context),
                        const SizedBox(height: AppSizes.sm),
                        agreementTile(
                            title: 'Доверенности',
                            description: 'Выданные вам доверенности',
                            action: () {},
                            context: context),
                      ],
                    ),
                  )),
            ),
          ),
        ));
  }
}
