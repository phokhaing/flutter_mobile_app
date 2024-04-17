/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 22.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

const int themeColor = 0xFF0C4DA2;

AppBar topBar() {
  return AppBar(
    backgroundColor: Colors.pink,
    centerTitle: true,
    leading: Stack(
      children: [
        Positioned(
            left: 10,
            bottom: 10,
            child: InkWell(
              onTap: () {},
              child: Container(
                  child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/pho_khaing.jpg'),
              )),
            ))
      ],
    ),
    title: const Text(
      'Major Cinema ',
      style: TextStyle(fontSize: 22),
    ),
    actions: <Widget>[
      IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
          iconSize: 30,
          color: Colors.white),
      IconButton(
          icon: const Icon(Icons.light_mode_rounded),
          onPressed: () {},
          iconSize: 30,
          color: Colors.white),
    ],
  );
}
