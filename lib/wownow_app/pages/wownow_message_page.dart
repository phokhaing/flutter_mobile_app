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

class WownowMessagepage extends StatefulWidget {
  const WownowMessagepage({Key? key}) : super(key: key);

  @override
  State<WownowMessagepage> createState() => _WownowMessagepageState();
}

class _WownowMessagepageState extends State<WownowMessagepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message Page"),
      ),
    );
  }
}
