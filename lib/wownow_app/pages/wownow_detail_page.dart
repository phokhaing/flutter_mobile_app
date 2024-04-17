/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 16.3.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/wownow_app/models/wownow_product_model.dart';
import 'package:flutter_app/wownow_app/widgets/food_list.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class WownowDetailPage extends StatefulWidget {
  final String food;
  const WownowDetailPage({Key? key, required this.food}) : super(key: key);

  @override
  State<WownowDetailPage> createState() => _WownowDetailPageState();
}

class _WownowDetailPageState extends State<WownowDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  /* Start Appbar */
  PreferredSize _buildAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          color: Colors.white,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.red,
                        ))),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              widget.food,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const Text(
                              "Saint 322",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ]))),
              Expanded(
                  flex: 2,
                  child: Container(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.redAccent,
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "Favorite",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ]),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.fileLines,
                                    color: Colors.redAccent,
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "Order",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                ]),
                          ])))
            ],
          ),
        ));
  }
  /* End Appbar */

  /* Start Body */
  Widget _buildBody() {
    return Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            _buildSearchProduct(),
            /* list food */
            _buildFavorite(),
            /* list item food */
            _buildFoodList(),
            /* list products */
            _buildProductList(),
            /* gridview item food */
            _buildProductGrid(),
          ]),
        ));
  }
  /* End Body */

  /* Start Widget */
  Widget _buildSearchProduct() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Search box
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: SizedBox(
                  height: 50,
                  width: 500,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.search,
                    autocorrect: false,
                    onFieldSubmitted: (message) {
                      print("Message $message");
                    },
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        // fillColor: Color(0xFFFEF8F3),
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search)),
                  )),
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 10),
                child: const Icon(
                  Icons.grid_view_outlined,
                  color: Colors.red,
                  size: 35,
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildFavorite() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        height: 180,
        width: double.infinity,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: buildDetailFoodList(context))));
  }

  Widget _buildFoodList() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        height: 120,
        width: double.infinity,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: buildFoodList(context))));
  }

  Widget _buildProductList() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 120,
        width: double.infinity,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: buildFoodList(context))));
  }

  Widget _buildProductGrid() {
    return Container(
      margin: EdgeInsets.all(10),
      child: _gridViewBuilder(),
    );
  }

  Widget _gridViewBuilder() {
    return GridView.builder(
      physics:
          const NeverScrollableScrollPhysics(), // use this, while scroll this blog It can cover ProfilePanel blog
      shrinkWrap: true, // use this to show this blog
      itemCount: movieList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 6 / 9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return _showData(movieList[index]);
      },
    );
  }

  Widget _showData(ProductModel movie) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          // Left item top
          Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(movie.image), fit: BoxFit.fill)),
              )),
          Expanded(
              child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(5),
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(children: [
                RoundedBackgroundTextSpan(
                    text: 'Wholesale',
                    backgroundColor: Colors.red,
                    style: const TextStyle(color: Colors.white, fontSize: 10)),
                const TextSpan(text: 'Stock your grocery with WOWNOW, buy..'),
              ], style: const TextStyle(color: Colors.black, fontSize: 12)),
            ),
          ))

          // Left item bottom
        ],
      ),
    );
    // Image.network(movie.image, fit: BoxFit.cover);
  }
  /* End Widget */

}
