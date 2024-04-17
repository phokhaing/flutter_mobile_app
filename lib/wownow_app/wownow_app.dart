/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 25.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/wownow_app/pages/wownow_main_page.dart';
import 'package:flutter_app/wownow_app/wownow_theme.dart';

class WownowApp extends StatelessWidget {
  const WownowApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wownowTheme = WownowTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WownowMainPage(),
      theme: ThemeData(
          canvasColor: const Color(0xFFF4F5F8),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(wownowTheme.topBarBackgroundColor),
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              // type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.pink,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true)),
    );
  }
}
