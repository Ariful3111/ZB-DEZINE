import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF15003B);
  static const Color darkColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color grayBorderColor = Color(0xFFBEBEBE);
  static const Color darkTextColor = Color(0xFF0A0A0F);
  static const Color titleTextColor = Color(0xFF0A0D14);
  static const Color errorTextColor = Color(0xFF733E0A);
  static const Color errorTextColor2 = Color(0xFFA65F00);
  static const Color errorBorderColor = Color(0xFFFFF085);
  static const Color errorContainerColor = Color(0xFFFEFCE8);
  static const Color errorIconColor = Color(0xFFD08700);
  static const Color buttonTextColor = Color(0xFF2E2E2E);
  static const Color fieldTextColorDark = Color(0xFF2A2A2A);
  static const Color fieldTextColor = Color(0xFF9F9F9F); 
  static const Color fieldBorderColor = Color(0xFFEAEAEA);
  static const Color fieldBorderColorLight = Color(0xFFE5E7EB);
  static const Color primaryBorderColor = Color(0xFFE9E9E9);
  static const Color fieldColor = Color(0xFFF2F2F2);
  static const Color labelColor = Color(0xFF1F1F1F);
  static const Color shadowColor = Color(0xFF14142B);
  static const Color borderColor = Color(0xFFE5E9EE);
  
  static Gradient authBG = LinearGradient(
    begin: Alignment.topCenter, 
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF6E3FF3).withValues(alpha: 0.2),
      whiteColor.withValues(alpha: 0.2),
      whiteColor,
      whiteColor,
      whiteColor,
      whiteColor,
    ],
  );
  static Gradient primaryBG = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFF6F2FF),Color(0xFFF9F2FF)]);
}
