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

class WownowOrderPage extends StatefulWidget {
  const WownowOrderPage({Key? key}) : super(key: key);

  @override
  State<WownowOrderPage> createState() => _WownowOrderPageState();
}

class _WownowOrderPageState extends State<WownowOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Page"),
      ),
    );
  }
}
