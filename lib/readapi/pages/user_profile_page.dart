/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 29.6.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/readapi/models/user_model.dart';

class UserProfilePage extends StatefulWidget {
  Data user;

  UserProfilePage(this.user);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink, title: const Text("User Profile")),
      body: _buildContent(),
    );
  }

  _buildContent() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildProfile(),
          _buildUserInfo(),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage("${widget.user.avatar}"),
              radius: 70, // Adjust the radius of the avatar as needed
            ),
          ),
          SizedBox(
              height: 10), // Add some spacing between the avatar and username
          Center(
            child: Text(
              "${widget.user.firstName} ${widget.user.lastName}",
              style: const TextStyle(
                fontSize: 20, // Adjust the font size of the username as needed
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ListView(
        children: [
          ListTile(
              leading: Text("ID"),
              trailing: Text(
                "${widget.user.id}",
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Text("Frist Name"),
              trailing: Text(
                "${widget.user.firstName}",
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Text("Last Name"),
              trailing: Text(
                "${widget.user.lastName}",
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )),
          ListTile(
              leading: Text("Email"),
              trailing: Text(
                "${widget.user.email}",
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
