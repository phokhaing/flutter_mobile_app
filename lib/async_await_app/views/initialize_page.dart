/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 8.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/async_await_app/context/TodoContext.dart';
import 'package:flutter_app/async_await_app/views/async_await_page.dart';
import 'package:provider/provider.dart';

class InitializePage extends StatefulWidget {
  const InitializePage({Key? key}) : super(key: key);

  @override
  State<InitializePage> createState() => _InitializePageState();
}

class _InitializePageState extends State<InitializePage> {
  _init() async {
    await context.read<TodoContext>().listTodoData();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () => _init());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildLoading(),
    );
  }

  Widget _buildLoading() {
    bool initialized = context.watch<TodoContext>().initialized;
    if (initialized == false) {
      return _buildSplashLogo();
    } else {
      return const AsyncAwaitPage();
    }
  }

  // first loading app
  Widget _buildSplashLogo() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: Image.network(
          "https://www.wownow-kh.com/img/food-delivery-logo.d0675ee.png"),
    );
  }
}
