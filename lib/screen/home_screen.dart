import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorKey = 0xFFFFC436;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(colorKey),
        leading: IconButton(
          icon: const Icon(Icons.apple),
          iconSize: 35,
          onPressed: () {},
        ),
        title: const Text(
          'Apple Store',
          style: TextStyle(fontSize: 22),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              iconSize: 30,
              color: Colors.white),
          IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
              iconSize: 30,
              color: Colors.white),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Image.network(
            "https://images.hdqwalls.com/download/mac-os-ventura-light-5k-do-1080x1920.jpg"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
              iconSize: 30,
              color: Colors.white,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.ondemand_video),
                iconSize: 30,
                color: Colors.white),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.apple),
                iconSize: 30,
                color: Colors.white),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.account_circle),
                iconSize: 30,
                color: Colors.white),
          ],
        ),
      ),
    );
  }
}
