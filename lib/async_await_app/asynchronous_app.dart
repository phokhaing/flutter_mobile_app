import 'package:flutter/material.dart';
import 'package:flutter_app/async_await_app/context/TodoContext.dart';
import 'package:flutter_app/async_await_app/views/initialize_page.dart';
import 'package:provider/provider.dart';

Widget runAsynchronousApp() {
  return MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => TodoContext())],
    child: const AsynchronousApp(),
  );
}

class AsynchronousApp extends StatelessWidget {
  const AsynchronousApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitializePage(),
    );
  }
}
