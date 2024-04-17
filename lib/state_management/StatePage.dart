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
import 'package:flutter_app/state_management/StateData.dart';
import 'package:flutter_app/state_management/StateDetailPage.dart';
import 'package:flutter_app/state_management/ThemeState.dart';
import 'package:provider/provider.dart';

class StatePage extends StatefulWidget {
  const StatePage({Key? key}) : super(key: key);

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  @override
  Widget build(BuildContext context) {
    bool themeColor = context.watch<ThemeState>().dark;
    Color mainColor = themeColor ? Colors.pink : Colors.black;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor ? Colors.black : Colors.pink,
        title: const Text("State Management"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StateDetailPage()));
              },
              icon: const Icon(
                Icons.new_label_outlined,
                size: 35,
              )),
          IconButton(
              onPressed: () {
                // call method set state management at StateData
                context.read<ThemeState>().toggleTheme();
              },
              icon: Icon(
                Icons.toggle_off_rounded,
                size: 40,
                color: mainColor,
              )),
          IconButton(
              onPressed: () {
                // call method set state management at StateData
                context.read<ThemeState>().changeDarkTheme();
              },
              icon: const Icon(
                Icons.dark_mode_outlined,
                size: 30,
                // color: Colors.black,
              )),
          IconButton(
              onPressed: () {
                // call method set state management at ThemeState
                context.read<ThemeState>().changeLightTheme();
              },
              icon: const Icon(
                Icons.light_mode_rounded,
                size: 30,
                color: Colors.yellowAccent,
              ))
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    // get data from state management
    int counter = context.watch<StateData>().counter;
    bool themeColor = context.watch<ThemeState>().dark;
    Color mainColor = themeColor ? Colors.black : Colors.pink;

    return Container(
      alignment: Alignment.center,
      color: mainColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            themeColor ? 'Theme (Dark)' : 'Theme (Light)',
            style: TextStyle(
                fontSize: 20 + counter.toDouble(), color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // call method set state management at StateData
                    context.read<StateData>().decrease();
                  },
                  child: const Icon(Icons.remove)),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    // call method set state management at StateData
                    context.read<StateData>().increase();
                  },
                  child: const Icon(Icons.add)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Font Size: $counter',
            style: TextStyle(
                fontSize: 20 + counter.toDouble(), color: Colors.white),
          ),
        ],
      ),
    );
  }
}
