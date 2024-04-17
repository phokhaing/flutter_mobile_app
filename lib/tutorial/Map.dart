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

class MapTutorial extends StatelessWidget {
  const MapTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> mapData = {};
    mapData['id'] = 1;
    mapData['name'] = "Khevin";
    print(mapData);

    return Scaffold(
      body: Container(),
    );
  }
}
