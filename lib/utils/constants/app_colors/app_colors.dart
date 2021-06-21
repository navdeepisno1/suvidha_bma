import 'package:flutter/material.dart';

MaterialColor kColorPrimary = getMaterialColor(0xFF854FCA);
MaterialColor kColorWhite = getMaterialColor(0xFFFFFFFF);
MaterialColor kColorBlack = getMaterialColor(0xFF000000);
MaterialColor kColorSecondary = getMaterialColor(0xFFF3F9FF);
MaterialColor kColorTertiary = getMaterialColor(0xFFFDD8DB);
MaterialColor kColorTertiary2 = getMaterialColor(0xFFE4D6F3);
MaterialColor kColorGrey = Colors.grey;

MaterialColor getMaterialColor(int color) {
  Map<int, Color> swatch = {
    50: Color(color).withOpacity(0.1),
    100: Color(color).withOpacity(0.2),
    200: Color(color).withOpacity(0.3),
    300: Color(color).withOpacity(0.4),
    400: Color(color).withOpacity(0.5),
    500: Color(color).withOpacity(0.6),
    600: Color(color).withOpacity(0.7),
    700: Color(color).withOpacity(0.8),
    800: Color(color).withOpacity(0.9),
    900: Color(color).withOpacity(1.0),
  };
  return MaterialColor(color, swatch);
}
