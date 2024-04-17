/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 23.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/state_management/StateData.dart';
import 'package:provider/provider.dart';

class StateDetailPage extends StatefulWidget {
  const StateDetailPage({Key? key}) : super(key: key);

  @override
  State<StateDetailPage> createState() => _StateDetailPageState();
}

class _StateDetailPageState extends State<StateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    int counter = context.watch<StateData>().counter;

    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Font Size:$counter',
            style: TextStyle(fontSize: 20 + counter.toDouble()),
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
                  child: const Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
