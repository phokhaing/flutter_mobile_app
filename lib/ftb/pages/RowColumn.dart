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

import '../../utils/helper.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  final int themeColor = 0xFF0F4FA0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // title: const Text("Row Column Page"),
      backgroundColor: const Color(0xFF0F4FA0),
      title: _buildTopbarRow(),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(10),
        child: Container(),
      ),
    );
  }

  Widget _buildTopbarRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: () {},
          child: buildImageCircle('assets/images/pho_khaing.jpg'),
        ),
        InkWell(
          onTap: () {},
          child: const Text("New"),
        ),
        InkWell(
          onTap: () {},
          child: const Text("Event"),
        ),
        InkWell(
          onTap: () {},
          child: const Text("Setting"),
        ),
      ],
    );
  }

  Widget _buildBody() {
    // return _buildRow();
    // return _buildColumn();
    // return _buildLoginPanel();
    return Container(
      alignment: Alignment.center,
      child: Image.asset("assets/images/angkor_wat.jpeg"),
    );
  }

  Widget _buildColumn() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        color: Colors.blue[100],
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(width: 150, height: 120, color: Colors.blue),
              Container(width: 60, height: 100, color: Colors.cyan),
              Container(width: 180, height: 60, color: Colors.orange),
              Container(width: 50, height: 40, color: Colors.pink),
              Container(width: 180, height: 30, color: Colors.green),
              Container(width: 50, height: 5, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        color: Colors.blue[100],
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(width: 70, height: 20, color: Colors.blue),
              Container(width: 60, height: 30, color: Colors.pink),
              Container(width: 80, height: 40, color: Colors.orange),
              Container(width: 50, height: 60, color: Colors.lime),
              Container(width: 180, height: 100, color: Colors.green),
              Container(width: 50, height: 120, color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginPanel() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPasswordTextField(),
        ],
      ),
    );
  }

  bool _hidePassword = true;

  Widget _buildPasswordTextField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        obscureText: _hidePassword,
        decoration: InputDecoration(
          hintText: "Password...",
          icon: const Icon(Icons.key),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _hidePassword = !_hidePassword;
              });
            },
            icon: Icon(_hidePassword ? Icons.visibility : Icons.visibility_off),
          ),
        ),
      ),
    );
  }
}
