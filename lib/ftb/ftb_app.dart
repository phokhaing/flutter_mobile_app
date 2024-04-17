/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 30.12.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/ftb/global_theme.dart';
import 'package:flutter_app/ftb/pages/home_page.dart';

class FTBApp extends StatelessWidget {
  const FTBApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final global = GlobalTheme();
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: const Color(0xFFF4F5F8),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(global.backgroundColor),
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
