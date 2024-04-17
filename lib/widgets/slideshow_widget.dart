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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/model/MovieModel.dart';

class SlideShowWidget extends StatefulWidget {
  const SlideShowWidget({Key? key}) : super(key: key);

  @override
  State<SlideShowWidget> createState() => _SlideShowWidgetState();
}

class _SlideShowWidgetState extends State<SlideShowWidget> {
  Timer? _timer;
  int _counter = 0;

  final _pageControl = PageController();

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      _counter++;

      if (_counter >= movieList.length) {
        _counter = 0;
      }
      print('counter $_counter');

      _pageControl.animateToPage(_counter,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  // stop counter when page close
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildPageView();
  }

  Widget _buildPageView() {
    return SizedBox(
        height: 350,
        child: PageView.builder(
            controller: _pageControl,
            physics: const BouncingScrollPhysics(),
            // scrollDirection: Axis.horizontal, // scroll vertical/horizontal
            itemCount: movieList.length,
            onPageChanged: (index) {
              setState(() {
                _counter = index;
              });
            },
            itemBuilder: (context, index) {
              return _showAllMovies(movieList[index]);
            }));
  }

  Widget _showAllMovies(MovieModel movie) {
    return Image.network(movie.image, fit: BoxFit.cover);
  }
}
