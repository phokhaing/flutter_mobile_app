/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 22.2.2023                                    |
 * +-------------------------------------------------------+
 */
import 'package:flutter/material.dart';
import 'package:flutter_app/state_management/StateData.dart';
import 'package:flutter_app/state_management/StatePage.dart';
import 'package:flutter_app/state_management/ThemeState.dart';
import 'package:provider/provider.dart';

class StateApp extends StatelessWidget {
  const StateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => StateData(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeState(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StatePage(),
        theme:
            ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.pink)),
      ),
    );
  }
}
