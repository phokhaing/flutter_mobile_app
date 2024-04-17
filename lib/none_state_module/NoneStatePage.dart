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
import 'package:flutter_app/none_state_module/NoneStateDetailPage.dart';

class NoneStatePage extends StatefulWidget {
  const NoneStatePage({Key? key}) : super(key: key);

  @override
  State<NoneStatePage> createState() => _NoneStatePageState();
}

class _NoneStatePageState extends State<NoneStatePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("None State"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NoneStateDetailPage(counter)));
              },
              icon: const Icon(Icons.new_label_outlined)),
          IconButton(
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
              icon: const Icon(Icons.remove)),
          IconButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'None State count $counter',
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
