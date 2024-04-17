/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 8.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/wownow_app/models/wownow_food_model.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

Widget AdvertisementSlice(BuildContext context) {
  List<Widget> _listImages = [];
  for (var i = 0; i < foodList.length; i++) {
    FoodModel item = foodList[i];
    _listImages.add(Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image: DecorationImage(
                image: NetworkImage(item.image), fit: BoxFit.fill))));
  }

  return ImageSlideshow(
    /// Width of the [ImageSlideshow].
    width: double.infinity,

    /// Height of the [ImageSlideshow].
    height: 200,

    /// The page to show when first creating the [ImageSlideshow].
    initialPage: 0,

    /// The color to paint the indicator.
    indicatorColor: Colors.pink,

    /// The color to paint behind th indicator.
    indicatorBackgroundColor: Colors.grey,

    /// Called whenever the page in the center of the viewport changes.
    onPageChanged: (value) {
      // print('Page changed: $value');
    },

    /// Auto scroll interval.
    /// Do not auto scroll with null or 0.
    autoPlayInterval: 3000,

    /// Loops back to first slide.
    isLoop: true,

    /// The widgets to display in the [ImageSlideshow].
    /// Add the sample image file into the images folder
    children: _listImages,
  );
}
