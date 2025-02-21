import 'package:flutter/material.dart';
import 'package:news_app/core/theme/color_palette.dart';

abstract class AppThemeManager {
  static ThemeData lightMode = ThemeData(
      scaffoldBackgroundColor: ColorPalette.white,
      appBarTheme: AppBarTheme(color: ColorPalette.white, centerTitle: true));
}
