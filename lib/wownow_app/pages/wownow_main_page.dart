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
import 'package:flutter_app/wownow_app/pages/wownow_cart_page.dart';
import 'package:flutter_app/wownow_app/pages/wownow_home_page.dart';
import 'package:flutter_app/wownow_app/pages/wownow_message_page.dart';
import 'package:flutter_app/wownow_app/pages/wownow_order_page.dart';
import 'package:flutter_app/wownow_app/pages/wownow_profile_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WownowMainPage extends StatefulWidget {
  const WownowMainPage({Key? key}) : super(key: key);

  @override
  State<WownowMainPage> createState() => _WownowMainPageState();
}

class _WownowMainPageState extends State<WownowMainPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: const [
        WownowHomePage(),
        WownowCartPage(),
        WownowOrderPage(),
        WownowMessagepage(),
        WownowProfilePage(),
      ],
    );
  }

  int _currentIndex = 0;
  int _prevIndex = -1;
  Widget _buildBottomBar() {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _prevIndex = _currentIndex;
            _currentIndex = index;

            // open drawer
            // if (index == 2) {
            //   _scaffoldKey.currentState!.openEndDrawer();
            // }
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.fileLines), label: "Order"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Mine"),
        ]);
  }
}
