import 'package:flutter/material.dart';
import 'package:flutter_app/api/splash_page.dart';
import 'package:flutter_app/api/tasks/student_context.dart';
import 'package:provider/provider.dart';

Widget runStudentApp() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => StudentContext()),
    ],
    child: const TaskApp(),
  );
}

class TaskApp extends StatelessWidget {
  const TaskApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
