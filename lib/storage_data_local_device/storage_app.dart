import 'package:flutter/material.dart';
import 'package:flutter_app/storage_data_local_device/LanguageContext.dart';
import 'package:flutter_app/storage_data_local_device/counter_logic.dart';
import 'package:flutter_app/storage_data_local_device/state_splash_page.dart';
import 'package:flutter_app/storage_data_local_device/theme_logic.dart';
import 'package:provider/provider.dart';

Widget runStorageApp() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterLogic()),
      ChangeNotifierProvider(create: (context) => ThemeLogic()),
      ChangeNotifierProvider(create: (context) => LanguageContext()),
    ],
    child: const StateApp(),
  );
}

class StateApp extends StatelessWidget {
  const StateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int theme = context.watch<ThemeLogic>().theme;
    int counter = context.watch<CounterLogic>().counter;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StateSplashPage(),
      themeMode: theme == 0
          ? ThemeMode.dark
          : theme == 1
              ? ThemeMode.light
              : ThemeMode.system,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 18 + counter.toDouble()),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueAccent,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 18 + counter.toDouble()),
        ),
      ),
    );
  }
}
