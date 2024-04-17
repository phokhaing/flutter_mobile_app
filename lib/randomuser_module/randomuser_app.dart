import 'package:flutter/material.dart';
import 'package:flutter_app/randomuser_module/randomuser_context.dart';
import 'package:flutter_app/randomuser_module/randomuser_splash_page.dart';
import 'package:provider/provider.dart';

Widget runRandomUserApp() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => RandomUserContext()),
    ],
    child: RandomUserApp(),
  );
}

class RandomUserApp extends StatelessWidget {
  const RandomUserApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomUserSplashPage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
