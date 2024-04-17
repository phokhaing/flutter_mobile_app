/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 13.1.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

class CallbackFunc extends StatelessWidget {
  const CallbackFunc({Key? key}) : super(key: key);

  int sum(int a, int b, [int? c]) => a + b;
  int sub(int a, int b) => a - b;

  // 1. callback func with dynamic return type
  int calculator(int a, int b, Function callbackFun) {
    return callbackFun(a, b);
  }

  // 2. callback func with return type (int), params type (in)
  int _result(int a, int b, int Function(int, int) callbackFun) {
    return callbackFun(a, b);
  }

  // 3. callback func with required return type (int), params type (in)
  int _response(int a, int b, {required int Function(int, int) callbackFun}) {
    return callbackFun(a, b);
  }

  @override
  Widget build(BuildContext context) {
    int a = sum(10, 20);
    int total = calculator(5, 2, sum);
    int mul = calculator(5, 10, (a, b) => a * b);
    int div = calculator(10, 2, (a, b) => print("Division: ${a / b}"));

    int res = _result(10, 2, (a, b) => a * b);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
