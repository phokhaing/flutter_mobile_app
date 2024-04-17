/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 23.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

class ThemeState extends ChangeNotifier {
  bool _dark = false;
  bool get dark => _dark;

  void changeDarkTheme() {
    _dark = true;
    notifyListeners();
  }

  void changeLightTheme() {
    _dark = false;
    notifyListeners();
  }

  void toggleTheme() {
    _dark = !_dark;
    notifyListeners();
  }
}
