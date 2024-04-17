/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 30.12.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/ftb/global_theme.dart';
import 'package:flutter_app/utils/helper.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final int themeColor = 0xFF0F4FA0;
  final int fontColor = 0xFFF3F3F3;
  final globalTheme = GlobalTheme();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(context),
      drawer: _buildDrawer(context),
      endDrawer: _buildEndDrawer(context),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    String profile = 'assets/images/pho_khaing.jpg';
    return AppBar(
      backgroundColor: Color(globalTheme.backgroundColor),
      leading: IconButton(
        iconSize: 40,
        onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        icon: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLaScgYUw3_QizawJCxt6KQ2Z-CR2FXz-1rdil4Rs38asyMk1j2oii0W0i8D0tzfti5oU&usqp=CAU",
          fit: BoxFit.fitWidth,
          height: 100,
        ),
        // icon: _buildImageCircle('assets/images/pho_khaing.jpg'),
        // icon: buildImageCircle(profile)),
      ),
      titleSpacing: 20,
      title: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
          iconSize: 30,
          color: Color(globalTheme.fontColor)),
      actions: <Widget>[
        const SizedBox(
          width: 10,
        ),
        IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
            iconSize: 35,
            color: Color(globalTheme.fontColor)),
        SizedBox(
          width: 20,
        ),
        IconButton(
            icon: buildImageCircle(profile),
            onPressed: () {},
            iconSize: 40,
            color: Color(globalTheme.fontColor)),
        SizedBox(
          width: 15,
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _buildProfile(context),
            _MenuList(context),
          ],
        ),
      ),
    ));
  }

  Widget _buildBody(BuildContext context) {
    String profile = "assets/images/bayern_temple.jpg";
    return Container(
      color: Color(globalTheme.backgroundColor),
    );
  }

  Widget _buildEndDrawer(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
          child: Image.network(
              "https://images.hdqwalls.com/download/mac-os-ventura-light-5k-do-1080x1920.jpg",
              fit: BoxFit.cover)),
    );
  }

  Widget _MenuList(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          top: 15,
        ),
        child: Column(
            // shows the list of menu drawer
            children: [
              menu(context, 1, "Dashboard", Icons.home),
              menu(context, 2, "Shortcut", Icons.dashboard_outlined),
              menu(context, 3, "Contact us", Icons.wifi_calling_3_outlined),
              menu(context, 4, "Setting", Icons.settings),
            ]));
  }

  Widget menu(BuildContext context, int id, String title, IconData icon) {
    return Material(
      // color: Colors.grey[300],
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfile(BuildContext context) {
    return Container(
      color: Color(globalTheme.backgroundColor),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 80,
            height: 80,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/pho_khaing.jpg",
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Pho Khaing",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "khaing.pho@ftbbank.com",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottom(BuildContext context) {
    return BottomAppBar(
      color: Color(themeColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.wifi_calling_3_rounded),
            iconSize: 30,
            color: Colors.white,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
              iconSize: 30,
              color: Colors.white),
          IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: const Icon(Icons.apps),
              iconSize: 30,
              color: Colors.white),
        ],
      ),
    );
  }

  Widget _buildBox(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
          color: Colors.blueAccent,
          // borderRadius: BorderRadius.circular(40),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.yellowAccent, Colors.blue]),
          // border:
          //     Border.all(color: Colors.blueAccent.withOpacity(0.5), width: 10),
          boxShadow: [
            BoxShadow(
                color: Colors.pink,
                blurRadius: 20,
                spreadRadius: 15,
                offset: Offset(20, 20),
                blurStyle: BlurStyle.normal),
            BoxShadow(
                color: Colors.yellowAccent,
                blurRadius: 15,
                spreadRadius: 5,
                offset: Offset(10, 10),
                blurStyle: BlurStyle.normal)
          ]),
    );
  }

  Widget _buildCircle(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
          color: Colors.blueAccent,
          shape: BoxShape.circle,
          gradient: RadialGradient(
              radius: 0.5, colors: [Colors.yellow, Colors.blue])),
    );
  }

  Widget _buildImageBox(BuildContext context) {
    return Container(
      width: 250,
      height: 300,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        // borderRadius: BorderRadius.circular(40),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bayern_temple.jpg")),
      ),
      transform: Matrix4.rotationZ(0.3),
      transformAlignment: Alignment.center,
    );
  }
}
