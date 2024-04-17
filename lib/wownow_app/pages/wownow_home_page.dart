/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 25.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';
import 'package:flutter_app/wownow_app/models/wownow_product_model.dart';
import 'package:flutter_app/wownow_app/pages/wownow_detail_page.dart';
import 'package:flutter_app/wownow_app/widgets/advertisment_slice.dart';
import 'package:flutter_app/wownow_app/widgets/food_list.dart';
import 'package:flutter_app/wownow_app/widgets/list_food_delivery.dart';
import 'package:flutter_app/wownow_app/wownow_theme.dart';
import 'package:rounded_background_text/rounded_background_text.dart';

class WownowHomePage extends StatefulWidget {
  const WownowHomePage({Key? key}) : super(key: key);

  @override
  State<WownowHomePage> createState() => _WownowHomePageState();
}

class _WownowHomePageState extends State<WownowHomePage> {
  final wownowTheme = WownowTheme();

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
      preferredSize: const Size.fromHeight(125.0),
      child: Container(
          color: Color(wownowTheme.topBarBackgroundColor),
          child: Column(
            children: [
              // Header Top
              Expanded(
                  child: Row(children: [
                // Logo
                Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/wownow/wownow_logo.png',
                        fit: BoxFit.cover,
                        height: 40,
                      ),
                    )),

                // Search box
                Expanded(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    color: Color(wownowTheme.topBarBackgroundColor),
                    child: SizedBox(
                        height: 40,
                        width: 250,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.search,
                          autocorrect: false,
                          onFieldSubmitted: (message) {
                            print("Message $message");
                          },
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Search...',
                              prefixIcon: Icon(Icons.search)),
                        )),
                  ),
                ),

                // QRCode
                Expanded(
                    child: Container(
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(wownowTheme.topBarBackgroundColor),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.qr_code_scanner_rounded,
                              color: Colors.white),
                        ))),
              ])),

              // Header Bottom
              Expanded(
                  child: CustomScrollView(
                      scrollDirection: Axis.horizontal,
                      slivers: [
                    SliverFillRemaining(
                        hasScrollBody: false,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Used SizeBox
                              SizedBox(
                                width: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.monetization_on_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "Top Up",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.contact_mail_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "Member",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.event_available_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "Check in",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.card_giftcard_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "Coupon",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "Favorite",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.person_add_alt_1_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    Text(
                                      "Invite",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ]))
                  ]))
            ],
          )), // here the desired height
    );
  }
  /* End Appbar */

  /* Start Body */
  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Start food delivery */
            _showFoodDelivery(),

            /* online shopping */
            _showOnlineShop(),

            /* list item food */
            _showFoodListItem(),

            /* slice show food */
            _showFoodSlices(),

            // All products
            _showAllProducts()
          ],
        ),
      ),
    );
  }
  /* End Body */

  /* Start Widgets */
  Widget _showFoodDelivery() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        height: 185,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // set x alignment of each rows
          // crossAxisAlignment: CrossAxisAlignment.center, // set y alignment of each rows
          children: [
            // Left item top
            Expanded(
                child: Column(
              children: [
                // Left item top
                Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(2),
                        margin: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: Center(
                            child: Column(children: const [
                          Text(
                            "Food Delivery",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Order your food now",
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ])))),
                // Left item bottom
                Expanded(
                    flex: 4, // 40% of height screen
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const WownowDetailPage(food: "Food Delivery"),
                            ),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://img.taste.com.au/gKH2kAqD/taste/2016/11/easy-chicken-noodle-soup-23912-1.jpeg"),
                                  fit: BoxFit.fill)),
                        ))),
              ],
            )),

            // Right item top
            Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(10),
                        crossAxisSpacing: 10, // space x of items
                        mainAxisSpacing: 10, // space y of items
                        crossAxisCount: 3,
                        // childAspectRatio: 9 / 7,
                        // childAspectRatio: 9 / 10,
                        children: listFoodDelivery(context)))),
          ],
        ));
  }

  Widget _showOnlineShop() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        height: 185,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Row(
          children: [
            // Left item top
            Expanded(
                child: Column(
              children: [
                // Left item top
                Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(2),
                        margin: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: Center(
                            child: Column(children: const [
                          Text(
                            "Online Shopping",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Buy everything you love",
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ])))),
                // Left item bottom
                Expanded(
                    flex: 4,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const WownowDetailPage(
                                  food: "Online Shopping"),
                            ),
                          );
                        }, // 40% of height screen
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://realfood.tesco.com/media/images/RFO-1400x919-NannasSoup-df1b44aa-f144-4a7c-b97a-1477cacf9e96-0-1400x919.jpg"),
                                  fit: BoxFit.fill)),
                        ))),
              ],
            )),

            // Right item top
            Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(10),
                        crossAxisSpacing: 10, // space x of items
                        mainAxisSpacing: 10, // space y of items
                        crossAxisCount: 3,
                        // childAspectRatio: 9 / 7,
                        // childAspectRatio: 9 / 10,
                        children: listFoodDelivery(context)))),
          ],
        ));
  }

  Widget _showFoodListItem() {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        height: 120,
        width: double.infinity,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: buildFoodList(context))));
  }

  Widget _showFoodSlices() {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 140,
      width: double.infinity,
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: AdvertisementSlice(context)),
    );
  }

  Widget _showAllProducts() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: _gridViewBuilder(),
    );
  }

  Widget _gridViewBuilder() {
    return GridView.builder(
      physics:
          const NeverScrollableScrollPhysics(), // use this, while scroll this blog It can cover ProfilePanel blog
      shrinkWrap: true, // use this to show this blog
      itemCount: movieList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 6 / 9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return _showData(movieList[index]);
      },
    );
  }

  Widget _showData(ProductModel movie) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => WownowDetailPage(food: movie.title),
            ),
          );
        },
        child: Container(
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
                            image: NetworkImage(movie.image),
                            fit: BoxFit.fill)),
                  )),
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(5),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(children: [
                    RoundedBackgroundTextSpan(
                        text: 'Wholesale',
                        backgroundColor: Colors.red,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 10)),
                    const TextSpan(
                        text: 'Stock your grocery with WOWNOW, buy..'),
                  ], style: const TextStyle(color: Colors.black, fontSize: 12)),
                ),
              ))

              // Left item bottom
            ],
          ),
        ));
    // Image.network(movie.image, fit: BoxFit.cover);
  }
  /* End Widgets */
}
