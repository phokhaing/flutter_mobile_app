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
import 'package:flutter_app/movie_app/pages/HomePage.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      home: const HomePage(),

      // set theme for all app pages
      theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.white, // canvas is background of content app
          appBarTheme: const AppBarTheme(backgroundColor: Colors.pink),
          textTheme: const TextTheme(
              bodyText2: TextStyle(
                  // fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          floatingActionButtonTheme:
              const FloatingActionButtonThemeData(backgroundColor: Colors.pink),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              // type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.pink,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true)),
    );
  }
}
