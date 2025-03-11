import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/personal_docs/widgets/personal%20docs_tiles.dart';
import 'package:gos_uslugi/screens/personal_docs/widgets/popup-widget.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class PersonalDocs extends StatelessWidget {
  const PersonalDocs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: null,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey.shade500,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        actions: const [
          PopupWidget(),
          SizedBox(width: AppSizes.xs),
        ],
        title: const Text(
          'Личные документы',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: const EdgeInsets.only(
                    left: AppSizes.paddingHorizontal,
                    right: AppSizes.paddingHorizontal,
                    top: AppSizes.paddingVertical,
                    bottom: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    personalDocsTile(
                        iconName: AppImages.docs,
                        titleName: 'документ иностранного гражданина',
                        content: 'F012345678',
                        onTap: () {},
                        isCenterAlign: true,
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalDocsTile(
                        iconName: AppImages.snils,
                        titleName: 'СНИЛС',
                        content: '001-002-003 04',
                        onTap: () {},
                        isCenterAlign: false,
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalDocsTile(
                        iconName: AppImages.location,
                        titleName: 'Адреса',
                        content: 'Адрес регистрации, адрес проживания',
                        onTap: () {},
                        isCenterAlign: false,
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalDocsTile(
                        iconName: AppImages.medicals,
                        titleName: 'Полис ОМС',
                        content: '1000200003000400',
                        onTap: () {},
                        isCenterAlign: false,
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalSecondTile(
                        iconName: AppImages.education,
                        titleName: 'Книжка волонтёра',
                        content:
                            'не найдена на платформе "Добровольцы России" ',
                        reason: 'почему так произошло',
                        onTap: () {},
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalThirdTile(
                        titleName: 'ИНН',
                        actionText: 'запросить',
                        actionTextTwo: '',
                        firstAction: () {},
                        secondAction: () {},
                        notRequired: true,
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalThirdTile(
                        titleName: 'Свидетельства',
                        actionText: 'добавить',
                        actionTextTwo: '',
                        firstAction: () {},
                        secondAction: () {},
                        notRequired: true,
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalThirdTile(
                        titleName: 'Загранпаспорт',
                        actionText: 'добавить',
                        actionTextTwo: 'оформить',
                        firstAction: () {},
                        secondAction: () {},
                        notRequired: false,
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalThirdTile(
                        titleName: 'Военный билет',
                        actionText: 'добавить',
                        actionTextTwo: '',
                        firstAction: () {},
                        secondAction: () {},
                        notRequired: true,
                        context: context),
                    const SizedBox(height: AppSizes.sm),
                    personalThirdTile(
                        titleName: 'Знак отличая ГТО',
                        actionText: 'подробнее',
                        actionTextTwo: 'запросить',
                        firstAction: () {},
                        secondAction: () {},
                        notRequired: false,
                        context: context),
                    const SizedBox(height: AppSizes.md),
                  ],
                ))),
      ),
    );
  }
}
