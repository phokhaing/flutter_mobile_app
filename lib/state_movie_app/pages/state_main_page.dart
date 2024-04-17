import 'package:flutter/material.dart';

import 'state_favorite_page.dart';
import 'state_movie_page.dart';

class StateMainPage extends StatefulWidget {
  const StateMainPage({Key? key}) : super(key: key);

  @override
  State<StateMainPage> createState() => _StateMainPageState();
}

class _StateMainPageState extends State<StateMainPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
      endDrawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(child: Icon(Icons.face)),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: const [
        StateMoviePage(),
        StateFavoritePage(),
      ],
    );
  }

  int _currentIndex = 0;
  int _prevIndex = -1;

  Widget _buildBottom() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _prevIndex = _currentIndex;
          _currentIndex = index;
          if (index == 2) {
            _scaffoldKey.currentState!.openEndDrawer();
          }
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "Menu"),
      ],
    );
  }
}
