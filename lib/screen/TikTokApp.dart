/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 10.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/screen/MovieDetailPage.dart';

import '../model/MovieModel.dart';

class TikTokPage extends StatefulWidget {
  const TikTokPage({Key? key}) : super(key: key);

  @override
  State<TikTokPage> createState() => _TikTokPageState();
}

class _TikTokPageState extends State<TikTokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text(
          'TikTok',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      controller: _scrollController,
      children: [
        _buildProfilePanel(),
        _buildGridViewBuilder(),
      ],
    );
  }

  Widget _buildGridViewBuilder() {
    return GridView.builder(
        physics:
            const NeverScrollableScrollPhysics(), // use this, while scroll this blog It can cover ProfilePanel blog
        shrinkWrap: true, // use this to show this blog
        itemCount: movieList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1 / 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemBuilder: (context, index) {
          return _showMovieList(movieList[index]);
        });
  }

  Widget _showMovieList(MovieModel item) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(
            //  open new page
            MaterialPageRoute(
                builder: (context) => MovieDetailPage(item),
                fullscreenDialog: true // effect of open page like new page
                ),
          );
        },
        child: Image.network(
          item.image,
          fit: BoxFit.cover,
        ));
  }

  Widget _buildProfilePanel() {
    return Container(
      height: 300,
      color: Colors.white,
      child: Column(
        children: [
          _profilePage(),
          _profileAddress(),
          _buildFlollowingPanel(),
          _buildBottomFollowing()
        ],
      ),
    );
  }

  Widget _profilePage() {
    return Stack(alignment: Alignment.center, children: [
      Container(
        margin: const EdgeInsets.only(top: 10),
        height: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage('assets/images/pho_khaing_profile.jpeg')),
        ),
      ),
      Positioned(
          top: 35,
          right: 115,
          // bottom: 10,
          child: TextButton(
            onPressed: () {},
            child: Container(
              width: 100,
              height: 100,
              child: const Icon(Icons.add_circle_sharp,
                  size: 30, color: Colors.lightBlueAccent),
            ),
          ))
    ]);
  }

  Widget _profileAddress() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: TextButton(
              onPressed: () {},
              child: const Text(
                '@khevin_khorng',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
        ),
      ],
    );
  }

  Widget _buildFlollowingPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                children: const [
                  Text(
                    '1566',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Following',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                children: const [
                  Text(
                    '97',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Follower',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                children: const [
                  Text(
                    '98',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Liked',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildBottomFollowing() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: 130,
              height: 40,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  boxShadow: [BoxShadow(spreadRadius: 1, color: Colors.red)]),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Follow',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 40,
              margin: const EdgeInsets.only(left: 1),
              decoration: const BoxDecoration(border: Border(), boxShadow: [
                BoxShadow(spreadRadius: 1, color: Colors.black12)
              ]),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.camera_alt)),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 50,
              height: 40,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(border: Border(), boxShadow: [
                BoxShadow(spreadRadius: 1, color: Colors.black12)
              ]),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_drop_down_sharp)),
            ),
          ],
        ),
      ],
    );
  }

  final ScrollController _scrollController = ScrollController();
  Widget _buildFloating() {
    return FloatingActionButton(
        // style: ElevatedButton.styleFrom(
        //     padding: const EdgeInsets.symmetric(horizontal: 40),
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(200))),
        onPressed: () {
          _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(microseconds: 400),
              curve: Curves.easeInOut);
        },
        child: const Icon(Icons.arrow_circle_up));
  }
}
