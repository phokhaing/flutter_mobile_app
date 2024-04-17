import 'package:flutter/material.dart';
import 'package:flutter_app/state_movie_app/logics/movie_logic.dart';
import 'package:flutter_app/state_movie_app/pages/state_main_page.dart';
import 'package:provider/provider.dart';

Widget runStateMovieApp() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => MovieLogic()),
    ],
    child: StateMovieApp(),
  );
}

class StateMovieApp extends StatelessWidget {
  const StateMovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StateMainPage(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.pink),
      ),
    );
  }
}
