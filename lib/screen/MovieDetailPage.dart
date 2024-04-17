/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 17.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/model/MovieModel.dart';

class MovieDetailPage extends StatefulWidget {
  MovieModel item;
  MovieDetailPage(this.item); // constructor

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(widget.item.title), // use keyword widget
      ),
      body: _showDetailData(),
    );
  }

  Widget _showDetailData() {
    return ListView(
      children: [
        Image.network(
          widget.item.image,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            widget.item.des,
            style: const TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }
}
