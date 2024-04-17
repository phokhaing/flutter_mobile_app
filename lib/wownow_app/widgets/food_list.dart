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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/wownow_app/models/wownow_food_model.dart';
import 'package:flutter_app/wownow_app/pages/wownow_detail_page.dart';

List<Widget> buildFoodList(BuildContext context) {
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
        child: Container(
          margin: const EdgeInsets.all(5),
          alignment: Alignment.center,
          width: 95,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                item.title,
                style: TextStyle(color: Colors.black, fontSize: 14),
              )),
              // const SizedBox(height: 10,),
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(item.image), fit: BoxFit.fill),
                  ),
                ),
              ),
            ],
          )),
        )));
  }

  return list;
}

List<Widget> buildDetailFoodList(BuildContext context) {
  List<Widget> listDetail = [];

  for (var i = 0; i < foodList.length; i++) {
    FoodModel item = foodList[i];
    listDetail.add(GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => WownowDetailPage(food: item.title),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        alignment: Alignment.center,
        width: 150,
        // height: 250,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          image: DecorationImage(
              image: NetworkImage(item.image), fit: BoxFit.fill),
        ),
      ),
    ));
  }

  return listDetail;
}

/*
child: GridView.count(
                                primary: false,
                                padding: const EdgeInsets.all(5),
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 3,

                                childAspectRatio: 9 / 7,
                                // childAspectRatio: 9 / 10,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      children: const [
                                        Expanded(
                                          flex: 4,
                                          child: Image(
                                            image: NetworkImage(
                                                "https://www.thespruceeats.com/thmb/6goYw3Ag028G5Jl75Q6tcqFWJL4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/greyhound-cocktail-recipe-759306-hero-01-680428b9f8d24389a2b547a52f3c279d.jpg"),
                                            // height: 55,
                                          ),
                                        ),
                                        Expanded(
                                            child: Text(
                                          "Burger",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ))
                                      ],
                                    ),
                                  ),
                                ],
                              )
 */
