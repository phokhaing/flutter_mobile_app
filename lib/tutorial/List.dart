/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 13.1.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

class ListTutorial extends StatelessWidget {
  const ListTutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dynamic list
    List items = [
      'khorng',
      30,
      'male',
      true,
      [1, 2, 3]
    ];

    // empty list
    List myList = List.empty();
    myList.add(12);
    myList.add('hi');
    myList.add(true);

    // myList.add("dart"); // insert String dart to list
    // myList.length // 1 length of list
    // myList.contains(“dart”) // true
    // myList.remove("dart"); // remove dart from list
    // myList.isEmpty
    print(myList);

    // List Type
    List<int> data = [4, 2, 4, 1, 5];

    // List method
    data.forEach((n) => print("number: $n"));
    data.insert(1, 6);
    print(data); // [4, 6, 2, 4, 1, 5]
    data.removeAt(0);
    print(data); // [6, 2, 4, 1, 5]
    List<int> list1 = data.reversed.toList();
    print(list1); // [5, 1, 4, 2, 6]
    data.sort((a, b) => a.compareTo(b));
    print(data); // [1, 2, 4, 5, 6]
    List<int> list2 = data.where((x) => x > 2).toList();
    print(list2);

    List<String> fruits = [
      "Coconut",
      "Apple",
      "Pear",
      "មៀន",
      "Pineapple",
      "ដូង",
      "Duran",
      "Mango"
    ];
    fruits.add("Kiwi");

    String word = "aPPlE";
    List<String> result = fruits
        .where((element) => element.toLowerCase().contains(word))
        .toList();
    print("Product Iphone: $result}");

    // Map
    List<String> listToMap = fruits.map((value) => "key: $value").toList();
    print(listToMap);

    return Scaffold(
      body: Container(),
    );
  }
}
