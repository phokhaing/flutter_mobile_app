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
import 'package:flutter_app/model/MovieModel.dart';

class GridViewTutorial extends StatefulWidget {
  const GridViewTutorial({Key? key}) : super(key: key);

  @override
  State<GridViewTutorial> createState() => _GridViewTutorialState();
}

class _GridViewTutorialState extends State<GridViewTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _gridViewExtent(),
    );
  }

  // GridView.extent
  Widget _gridViewExtent() {
    return GridView.extent(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(10), // padding around
      maxCrossAxisExtent: 100, // max size of each items
      crossAxisSpacing: 5, // space x between each items
      mainAxisSpacing: 5, // space y between each items
      childAspectRatio: 9 / 16, // size width/height of each items.
      children: [
        Container(
          color: Colors.redAccent,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.redAccent,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.redAccent,
        ),
        Container(
          color: Colors.blueAccent,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.yellow,
        ),
      ],
    );
  }

  Widget _gridViewBuilder() {
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
        return _showData(movieList[index]);
      },
    );
  }

  Widget _showData(MovieModel movie) {
    return Image.network(movie.image, fit: BoxFit.cover);
  }
}
