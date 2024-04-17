/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 27.1.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  final int themeColor = 0xFF0F4FA0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(themeColor),
        title: _buildAppBar(),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
          color: Colors.grey,
          child: _buildBottomBar()
      ),
    );
  }

  _buildAppBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/pho_khaing.jpg'),
          ),
        ),
        Container(
          child: const Text('Telegram', style: TextStyle(fontSize: 22))
        ),
        Container(
          child: IconButton(
            icon: const Icon(Icons.settings, size: 35,),
            onPressed: (){},
          ),
        ),
      ],
    );
  }

  _buildBody() {
    return Column(
      children: <Widget>[
        Container(

        )
      ],
    );
  }

  Widget _buildBottomBar(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.attach_file),
            iconSize: 30,
            color: Colors.white,
          ),
        ),
        Container(
          // alignment: Alignment.center,
          // margin: const EdgeInsets.all(20),
          // padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // _buildInputMessage(),
            ],
          ),
        ),
        Container(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
            iconSize: 30,
            color: Colors.white
          ),
        )
      ],
    );
  }

  bool _hidePassword = true;
  Widget _buildInputMessage() {
    return TextFormField(
        decoration: InputDecoration(
          hintText: "Write a message...",
          icon: const Icon(Icons.key),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
            icon: Icon(_hidePassword ? Icons.visibility_off : Icons.visibility),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(themeColor)
            )
          )
        ),
      );
  }
}
