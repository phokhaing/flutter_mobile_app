/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 29.6.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/readapi/context/user_context.dart';
import 'package:flutter_app/readapi/pages/loading_page.dart';
import 'package:provider/provider.dart';

Widget runReadAPIApp() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => UserContext()),
    ],
    child: const ReadAPIApp(),
  );
}

class ReadAPIApp extends StatelessWidget {
  const ReadAPIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoadingPage(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
