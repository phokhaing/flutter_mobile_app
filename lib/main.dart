/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 10.1.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/tutorial/PageViewTutorial.dart';

import 'wownow_app/wownow_app.dart';

void main() {
  runApp(const WownowApp());
// runApp(const MovieApp());
// runApp(const MyApp());
// runApp(const NoneStateApp());
// runApp(const StateApp());
// runApp(runStateMovieApp());
// runApp(runAsynchronousApp());
// runApp(runRandomUserApp());
//   runApp(runStorageApp());
//   runApp(runStudentApp());
//   runApp(runStudentApp())
//   runApp(runReadAPIApp());

  // runApp(const FTBApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      // home: HomePage()
      // home: const TikTokPage(),
      // home: const ListViewTutorial(),
      // home: const GridViewTutorial(),
      // home: const RowColumnPage(),
      // home: const GridViewPage(),
      // home: const ChatPage(),
      // home: const StackPage(),
      // home: const ChatPage(),
      // home: const ChartPage(),
      // home: const RowColumn(),
      home: const PageViewTutorial(),

      // set theme for all app pages
      theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.black, // canvas is background of content app
          appBarTheme: const AppBarTheme(backgroundColor: Colors.pink),
          textTheme: const TextTheme(
              bodyText2: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.pink)),
    );
  }
}
