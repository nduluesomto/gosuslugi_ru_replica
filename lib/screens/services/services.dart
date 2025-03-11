import 'package:flutter/material.dart';
import 'package:gos_uslugi/screens/services/widgets/service_tiles.dart';
import 'package:gos_uslugi/utils/constants/dependencies.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.paddingHorizontal,
                    vertical: AppSizes.paddingVertical),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Услуги',
                        style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800)),
                    SizedBox(height: AppSizes.sizedBoxMd),
                    ServiceTileStack(),
                  ],
                ),
              ))),
    );
  }
}
