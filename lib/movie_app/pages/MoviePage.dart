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
import 'package:flutter_app/movie_app/TopBar.dart';
import 'package:flutter_app/widgets/slideshow_widget.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(),
      body: _buildBody(),
    );
  }

  final ScrollController _scroller = ScrollController();
  Widget _buildBody() {
    return ListView(
      controller: _scroller,
      physics: const BouncingScrollPhysics(),
      children: [const SlideShowWidget(), _gridViewBuilder()],
    );
  }

  Widget _showPageView() {
    return PageView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal, // scroll vertical/horizontal
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return _showAllMovies(movieList[index]);
        });
  }

  Widget _showAllMovies(MovieModel movie) {
    return Image.network(movie.image, fit: BoxFit.cover);
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
