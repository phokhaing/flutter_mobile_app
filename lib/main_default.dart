// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   int? b; // null default
//   String? s;
//   late int x; // late can assign value next time & must assign value
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     int? a;
//     a = 10;
//     b = 20;
//     s = "flutter";
//
//     int total = a + (b ?? 0); // if b == null then b = 0
//     int len = (s ?? "").length; // if s == null then s = ""
//
//     print("Output is: $total");
//     print("Length of s is: $len");
//
//     double temp = 36.2;
//     String status = "";
//
//     /* -------------------------*/
//     /* condition operator       */
//     /* -------------------------*/
//     if (temp >= 75.5) {
//       status = "Warm";
//     } else if (temp >= 35 && temp < 75.5) {
//       status = "Good";
//     } else {
//       status = "Cool";
//     }
//
//     /* -------------------------*/
//     /* Ternary operator        */
//     /* -------------------------*/
//     status = ((temp >= 75.5)
//         ? "Warm"
//         : (temp >= 35 && temp < 75.5)
//         ? "Good"
//         : "Cool");
//     print(status);
//
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     const colorKey = 0xFFFFC436;
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(colorKey),
//         leading: IconButton(
//           icon: const Icon(Icons.apple),
//           iconSize: 35,
//           onPressed: () {},
//         ),
//         title: const Text(
//           'Apple Store',
//           style: TextStyle(fontSize: 22),
//         ),
//         actions: <Widget>[
//           IconButton(
//               icon: const Icon(Icons.search),
//               onPressed: () {},
//               iconSize: 30,
//               color: Colors.white),
//           IconButton(
//               icon: const Icon(Icons.account_circle),
//               onPressed: () {},
//               iconSize: 30,
//               color: Colors.white),
//         ],
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         child: Image.network(
//             "https://images.hdqwalls.com/download/mac-os-ventura-light-5k-do-1080x1920.jpg"),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.amber,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.home),
//               iconSize: 30,
//               color: Colors.white,
//             ),
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.ondemand_video),
//                 iconSize: 30,
//                 color: Colors.white),
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.apple),
//                 iconSize: 30,
//                 color: Colors.white),
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.account_circle),
//                 iconSize: 30,
//                 color: Colors.white),
//           ],
//         ),
//       ),
//     );
//   }
// }
