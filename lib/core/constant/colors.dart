import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF15003B);
  static const Color darkColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color grayBorderColor = Color(0xFFBEBEBE);
  static const Color buttonTextColor = Color(0xFF2E2E2E);
  static const Color fieldTextColor = Color(0xFF9F9F9F);
  static const Color fieldBorderColor = Color(0xFFEAEAEA);
  static const Color fieldColor = Color(0xFFF2F2F2);
  static Gradient primaryBG = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF6E3FF3).withValues(alpha: 0.2),
      whiteColor.withValues(alpha: 0.2),
      whiteColor,
      whiteColor,
      whiteColor,
    ],
  );
}
