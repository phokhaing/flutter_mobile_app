/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 6.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/wownow_app/models/wownow_food_model.dart';
import 'package:flutter_app/wownow_app/pages/wownow_detail_page.dart';

List<Widget> listFoodDelivery(BuildContext context) {
  List<Widget> list = [];

  for (var i = 0; i < foodList.length; i++) {
    FoodModel item = foodList[i];
    list.add(GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => WownowDetailPage(food: item.title),
            ),
          );
        },
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
            Expanded(
                child: Text(
              item.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ))
          ],
        )));
  }

  return list;
}
