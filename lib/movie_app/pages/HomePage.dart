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
import 'package:flutter_app/movie_app/pages/MoviePage.dart';
import 'package:flutter_app/movie_app/pages/PromotionPage.dart';
import 'package:flutter_app/movie_app/pages/TicketPage.dart';
import 'package:flutter_app/telegram/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: topBar(),
      body: _buildMovieaAppBody(),
      bottomNavigationBar: bottomBar(),
    );
  }

  Widget _buildMovieaAppBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        MoviePage(),
        Container(
          color: Colors.pink,
        ),
        ChatPage(),
        PromotionPage(),
        TicketPage()
      ],
    );
  }

  /*
    Bottom bar page
   */
  int _currentIndex = 0;
  Widget bottomBar() {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        // selectedItemColor: Colors.red,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined), label: "Movies"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined), label: "Cenimas"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Contact"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined), label: "Promotion"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Ticket"),
        ]);
  }
}
