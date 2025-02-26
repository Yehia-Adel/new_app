import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  final List<String> _languagesList = <String>[
    "English",
    "عربي",
  ];

  final List<String> _themeModeList = <String>[
    "Light",
    "Dark",
  ];

  List<String> get languagesList => _languagesList;

  List<String> get themeModeList => _themeModeList;

  String currentLanguage = "en";
  ThemeMode currentThemeMode = ThemeMode.light;

  void setCurrentLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  void setCurrentThemeMode(ThemeMode newThemeMode) {
    if (currentThemeMode == newThemeMode) return;
    currentThemeMode = newThemeMode;
    notifyListeners();
  }

  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }
}
