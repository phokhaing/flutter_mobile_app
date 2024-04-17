/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 14.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/tutorial/Theme.dart';

class RowColumnPage extends StatefulWidget {
  const RowColumnPage({Key? key}) : super(key: key);

  @override
  State<RowColumnPage> createState() => _RowColumnPageState();
}

class _RowColumnPageState extends State<RowColumnPage> {
  final theme = FTBTheme();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: theme.topBarIconSize,
        ),
        backgroundColor: Color(theme.topBarBackgroundColor),
        title: const Text(
          'FTB E-Leave',
          style: TextStyle(fontSize: 21),
        ),
        centerTitle: false,
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none_sharp,
                    size: theme.topBarIconSize,
                  )),
              Positioned(
                  left: 2,
                  bottom: 15,
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 15,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: const Text(
                        '5',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ))
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone_in_talk_rounded,
                size: theme.topBarIconSize,
              )),
        ],
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Expanded(
            flex: 2, // 40% of screen
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blueAccent,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://ftbbank.com/uploads/2019/06/JA-Banner-Mobile.jpeg'),
                      fit: BoxFit.fill)),
            )),
        Expanded(
            flex: 5, // 40% of screen
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // set x alignment of each rows
              // crossAxisAlignment: CrossAxisAlignment.center, // set y alignment of each rows
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.blueGrey),
                  child: const Text('Row (default)'),
                )),
                Expanded(
                    flex: 2, // 20% of width screen
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                          ),
                          child: const Text('Column (default)'),
                        )),
                        Expanded(
                            flex: 4, // 40% of height screen
                            child: Container(
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.green,
                              ),
                              child: const Text('Column 40% of height screen'),
                            )),
                      ],
                    )),
              ],
            )),
        Expanded(
            child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle, color: Colors.white),
          child: const Text(
            'Bottom',
            style: TextStyle(color: Colors.black),
          ),
        )),
      ],
    );
  }
}
