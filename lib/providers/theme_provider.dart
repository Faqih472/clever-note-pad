import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // 🔥 default langsung dark mode
  bool isDark = true;

  void toggle() {
    isDark = !isDark;
    notifyListeners();
  }
}
