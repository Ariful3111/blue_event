import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF353794);
  static const Color primaryColorDark = Color(0xFF000000);
  static const Color buttonTextColor = Color(0xFFFFFFFF);
  static Color secondaryColor = Color(0xFF000000);
  static const Color secondaryColorLight = Color(0xFF757171);
  static const Gradient splashBackgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFD0F0FD),
      Color(0xFFE3F6FD),
      Color(0xFFE9F8FF),
      Color(0xFFF1FAFF),
      Color(0xFF8AD3F6),
    ],
  );

  static const Gradient authBackgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFCEEEFD),
      Color(0xFFDCF2FF),
      Color(0xFFD8D9F7),
      Color(0xFF8BD7FB),
    ],
  );

  static const Gradient secondaryScaffoldBackgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFCBE7FD),
      Color(0xFFE1EFFE),
      Color(0xFFD8D9F7),
      Color(0xFFAECAFF),
    ],
  );
  static const buttonColor = Color(0xFF064B85);
  static const textFieldColor = Color(0xFFF8F8F8);
  static const homeBackgroundColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFC0E9FD),
      Color(0xFFD3F1FC),
      Color(0xFFE3F6FD),
      Color(0xFFE5F6FD),
      Color(0xFF8DD7FA),
    ],
  );
}
