/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 17.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/wownow_app/models/wownow_food_model.dart';
import 'package:flutter_app/wownow_app/pages/wownow_detail_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class WownowProfilePage extends StatefulWidget {
  const WownowProfilePage({Key? key}) : super(key: key);

  @override
  State<WownowProfilePage> createState() => _WownowProfilePageState();
}

class _WownowProfilePageState extends State<WownowProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  /* Start Appbar */
  PreferredSize _buildAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/wownow/wownow_appbar_background.jpeg"),
                  fit: BoxFit.fill)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(children: [
                  Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          child: const Text(
                            "Me",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ))),
                  Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.only(right: 20),
                          child: const Icon(
                            Icons.settings_sharp,
                            color: Colors.white,
                            size: 30,
                          )))
                ]),
              ),
              Container(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // profile
                        Row(
                          children: [
                            // photo
                            const SizedBox(
                              width: 60,
                              height: 60,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/wownow/pho_khaing_profile.jpg",
                                ),
                              ),
                            ),
                            // username
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(children: [
                                    const Text(
                                      "Khorng",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                    RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(children: [
                                        RoundedBackgroundTextSpan(
                                            text: 'RoyalMember',
                                            backgroundColor: Colors.white,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16)),
                                      ]),
                                    ),
                                  ]),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(children: [
                                    const Text(
                                      "W-coin-2.9",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white60),
                                    ),
                                    RichText(
                                      textAlign: TextAlign.start,
                                      text: TextSpan(children: [
                                        RoundedBackgroundTextSpan(
                                            text: 'check-in',
                                            backgroundColor: Colors.yellow,
                                            style: const TextStyle(
                                                color: Colors.brown,
                                                fontSize: 16)),
                                      ]),
                                    ),
                                  ])
                                ],
                              ),
                            ),
                          ],
                        ),

                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        )
                      ])),
            ],
          ),
        ));
  }
  /* End Appbar */

  /* Start Body */
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildItemList(),
          _buildQA(),
          _buildItems(),
          _buildDiscover(),
        ],
      ),
    );
  }
  /* End Body */

  /*--- Start More Add-On ---*/
  Widget _buildItemList() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 25, // space x of items
          mainAxisSpacing: 25, // space y of items
          crossAxisCount: 4,
          childAspectRatio: 8 / 7,
          children: _listGridItems()),
    );
  }

  Widget _buildQA() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage("assets/wownow/wownow_qa.png"),
              fit: BoxFit.fill)),
    );
  }

  Widget _buildDiscover() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage("assets/wownow/wownow_discover.png"),
              fit: BoxFit.fill)),
    );
  }

  Widget _buildItems() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.comment, color: Colors.red),
            title: Text(
              "Market servey",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined, color: Colors.red),
            title: Text(
              "Address",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.fileLines, color: Colors.red),
            title: Text(
              "Bill",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(
              Icons.language_outlined,
              color: Colors.red,
            ),
            title: Text(
              "Language",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(
              Icons.person_add_alt_1,
              color: Colors.red,
            ),
            title: Text(
              "Invite Friend",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(
              Icons.people_outline,
              color: Colors.red,
            ),
            title: Text(
              "Recruitment",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Icon(
              Icons.comment_outlined,
              color: Colors.red,
            ),
            title: Text(
              "Feedback",
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
    );
  }

  List<Widget> _listGridItems() {
    List<Widget> list = [];

    for (var i = 0; i < foodGridView8.length; i++) {
      FoodModel item = foodGridView8[i];
      list.add(GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => WownowDetailPage(food: item.title),
              ),
            );
          },
          child: Container(
            // padding: EdgeInsets.all(value),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(image: NetworkImage(item.image)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Text(
                  item.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ))
              ],
            ),
          )));
    }

    return list;
  }
  /*--- Start More Add-On ---*/
}
