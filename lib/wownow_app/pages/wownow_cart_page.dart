/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 18.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

class WownowCartPage extends StatefulWidget {
  const WownowCartPage({Key? key}) : super(key: key);

  @override
  State<WownowCartPage> createState() => _WownowCartPageState();
}

class _WownowCartPageState extends State<WownowCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Page"),
      ),
    );
  }
}
