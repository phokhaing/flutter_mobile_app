/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 14.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

class ListViewTutorial extends StatefulWidget {
  const ListViewTutorial({Key? key}) : super(key: key);

  @override
  State<ListViewTutorial> createState() => _ListViewTutorialState();
}

class _ListViewTutorialState extends State<ListViewTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: _listTile(),
    );
  }

  // ListView ListTile is most used
  Widget _listTile() {
    return ListView(
      scrollDirection: Axis.vertical,
      // reverse: true, // reverse scrollDirection
      children: const <Widget>[
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-1.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-2.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-3.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-4.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-5.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-6.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-7.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-8.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-9.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-4.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-1.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-2.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-3.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-4.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-5.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-6.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-7.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-8.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-9.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-4.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-1.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-2.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-3.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-4.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-5.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-6.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-7.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-8.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-9.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-4.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-1.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-2.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-3.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-4.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-5.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-6.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-7.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-8.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-9.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        ListTile(
          leading: SizedBox(
            width: 50,
            height: 50,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/users/user-4.jpg')),
          ),
          title: Text('New promotion service'),
          subtitle: Text('This promotion from today until new year!'),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
