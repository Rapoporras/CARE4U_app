import 'package:Care4U/Component/config.dart';
import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  static bool _isDark = false;

  MyTheme() {
    if (box.containsKey('currentTheme')) {
      _isDark = box.get('currentTheme');
    } else {
      box.put('currentTheme', _isDark);
    }
  }

  ThemeMode currentTheme() {
    // print("hola");
    return _isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
