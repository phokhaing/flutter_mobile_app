/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 25.1.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

const int themeColor = 0xFF0F4FA0;
const int fontColor = 0xFFF3F3F3;

Widget buildImageCircle(String pic) {
  return Container(
      width: 250,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pic))));
}

Widget buildBox(BuildContext context) {
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

Widget buildCircle(BuildContext context) {
  return Container(
    width: 200,
    height: 200,
    decoration: const BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.circle,
        gradient:
            RadialGradient(radius: 0.5, colors: [Colors.yellow, Colors.blue])),
  );
}

Widget buildImageBox(BuildContext context) {
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

final _textCtrl = TextEditingController();

Widget buildTextField() {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    child: TextFormField(
      controller: _textCtrl,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.send,
      autocorrect: false,
      onFieldSubmitted: (text) {
        print("sent $text");
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Search...",
        icon: const Icon(Icons.search),
        suffixIcon: IconButton(
          onPressed: () {
            _textCtrl.clear();
          },
          icon: const Icon(Icons.cancel),
        ),
      ),
    ),
  );
}

Widget buildSearchTextField() {
  final searchCtrl = TextEditingController();

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Colors.black38,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: TextFormField(
      controller: searchCtrl,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      autocorrect: false,
      style: const TextStyle(color: Colors.white),
      onFieldSubmitted: (text) {
        print("sent $text");
      },
      decoration: InputDecoration(
        hintText: "Search...",
        hintStyle: const TextStyle(color: Colors.white54),
        suffixIcon: IconButton(
          onPressed: () {
            searchCtrl.clear();
          },
          icon: const Icon(Icons.cancel),
        ),
        border: InputBorder.none,
      ),
    ),
  );
}

Widget buildTextButton() {
  return TextButton(
      style: TextButton.styleFrom(
        // primary: Colors.red,
        foregroundColor: const Color(fontColor),
        backgroundColor: const Color(themeColor),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {},
      child: const Text("Submit"));
}

Widget buildElevatedButton() {
  return Container(
    width: double.maxFinite,
    margin: const EdgeInsets.all(20),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        // primary: Colors.red,
        foregroundColor: const Color(fontColor),
        backgroundColor: const Color(themeColor),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {},
      child: const Text("Register new account"),
    ),
  );
}
