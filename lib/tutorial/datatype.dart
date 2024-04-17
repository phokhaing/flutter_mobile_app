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

class DataType extends StatelessWidget {
  // Dart data type can declare with or without datatype but must have default value

  // 1. With datatype
  int a = 10;
  double c = 1.5;
  bool d = false;
  String title = "Cambodia";

  // 2. Without datatype
  var b = 7.5;
  dynamic subtitle = 'Kingdom of Wonder'; // dynamic value type flexible

  // 3. Nullable
  int? aa;
  int bb = 2;
  // total = bb + (aa ?? 0); // if b == null then b = 0

  // 4. Late
  // no default value
  late int total;
  // total = bb + (aa ?? 0); // if b == null then b = 0

  // 5. Var
  // can't change to other value type
  var dd = 10; // integer
  // dd = "string"; // error can't change to string

  // 6. Dynamic
  // can change to any value type
  dynamic ee = 10; // integer
  // ee = "string"; // no error

  // 7. Const
  // value can't change and can use outside class only
  // const double salary = 1459.50; // error cos declare in class

  // 8. Final
  // value can't change and can use in/out class
  final double income = 1500.50;

  DataType({super.key});

  @override
  Widget build(BuildContext context) {
    // nullable
    total = bb + (aa ?? 0); // if b == null then b = 0

    return Scaffold(
      body: Container(),
    );
  }
}
