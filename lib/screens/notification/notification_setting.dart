import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/notification/widgets/notification_tile.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new,
              color: Colors.grey, size: AppSizes.iconSizeSm),
        ),
        title: const Text('Настройки уведомлений',
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
                      notificationTile(
                          action: () {}, title: 'Электронная почта', context: context),
                      const SizedBox(height: AppSizes.sm),
                      notificationTile(
                          action: () {}, title: 'Push-уведомленияы', context: context),
                      const SizedBox(height: AppSizes.sm),
                    ],
                  ))),
        ),
      ),
    );
  }
}
