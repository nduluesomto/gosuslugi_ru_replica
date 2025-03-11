import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  //AppBar Light Background color
  static const appbarLightBackground = Color(0xFF00205B);
  static const scaffoldLightBackground = Color(0xFFF1F0F0);
  static const scaffoldDarkBackground = Color(0xFF11171E);
  static const scaffoldTabBarBackground = Color(0xFF11171E);

  //Icons Light background Color
  static const iconLightColor = Color(0xFFFFFFFF);

  //Light Background Container color
  static const lightContainerColor = Color(0xFFFDFCFC);

  //Dark Background Container color
  static const darkContainerColor = Color(0xFF383D42);

  //Font Colors
  static const fontLightColor = Color(0xFFFFFFFF);
  static const fontDarkColor = Color(0xFF000000);

  //Light Background gradient Color
  static const Gradient lightGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.center,
      colors: [
        Color(0xFF00205B),
        Color(0xFF004C97),
        Color(0xFF004C97),
        Color(0xFFFFFFFF),
      ]);

  //Dark Background gradient Color
  static const Gradient darkGradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.center,
      colors: [
        Color(0xFF11171E),
        Color(0xFF09182A),
        Color(0xFF11171E),
      ]);

  //Transparent Container Color
  static final transparentColor = Colors.white.withAlpha(51);

  //Light Button Color
  static const buttonLightColor = Color(0xFF2B88DC);

  //Dark Button Color
  static const buttonDarkColor = Color(0xFF0468BB);
}
