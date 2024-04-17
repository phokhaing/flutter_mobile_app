/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 14.2.2023                                    |
 * +-------------------------------------------------------+
 */

import 'package:flutter/material.dart';

class StackTutorial extends StatefulWidget {
  const StackTutorial({Key? key}) : super(key: key);

  @override
  State<StackTutorial> createState() => _StackTutorialState();
}

class _StackTutorialState extends State<StackTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buldAppBar(),
      body: _buildStackCenter(),
    );
  }

  _buldAppBar() {
    return AppBar(
      title: const Text("Stack"),
    );
  }

  _buildStackCenter() {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(width: 300, height: 300, color: Colors.blueAccent),
          Container(width: 200, height: 200, color: Colors.pinkAccent),
          Container(width: 100, height: 100, color: Colors.yellowAccent),
          const Icon(Icons.play_circle, size: 50, color: Colors.blue),
          Positioned(
              right: 10,
              bottom: 10,
              child: TextButton(
                onPressed: () {},
                child: Container(
                  width: 100,
                  height: 100,
                  child: const Icon(Icons.arrow_circle_up,
                      size: 40, color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}

//
// /*
//  * +-------------------------------------------------------+
//  * | NAME  : PHO KHAING                                    |
//  * | EMAIL : khaing.pho@ftbbank.com                        |
//  * | DUTY  : FTB BANK (HEAD OFFICE)                        |
//  * | ROLE  : Full-Stack Software Developer                 |
//  * +-------------------------------------------------------+
//  * | Copyright (c) 2023                                    |
//  * | Released 31.1.2023                                    |
//  * +-------------------------------------------------------+
//  */
//
// import 'package:flutter/material.dart';
//
// class ChatPage extends StatefulWidget {
//   const ChatPage({Key? key}) : super(key: key);
//
//   @override
//   State<ChatPage> createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<ChatPage> {
//   final int themeColor = 0xFF0C4DA2;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: _buildAppbar(context),
//       body: _body(context),
//       // bottomNavigationBar: _buildBottombar(context),
//     );
//   }
//
//   _buildAppbar(BuildContext context) {
//     return AppBar(
//         backgroundColor: Color(themeColor),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             InkWell(
//               onTap: () {},
//               child: const Icon(
//                 Icons.arrow_back,
//               ),
//             ),
//             InkWell(
//               onTap: () {},
//               child: const Text(
//                 'Pho Khaing',
//               ),
//             ),
//             InkWell(
//               onTap: () {},
//               child: const CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/pho_khaing.jpg'),
//               ),
//             ),
//           ],
//         ));
//   }
//
//   final _txtUsername = TextEditingController();
//
//   _buildBottombar(BuildContext context) {
//     return Container(
//       // padding: const EdgeInsets.all(20),
//       // margin: const EdgeInsets.all(20),
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Container(
//               child: const Icon(Icons.attach_file),
//             ),
//
//             // Container(
//             //     // padding: const EdgeInsets.symmetric(vertical: 10),
//             //     child: TextFormField(
//             //       // controller: _txtUsername,
//             //       decoration: InputDecoration(
//             //           border: const OutlineInputBorder(),
//             //           icon: const Icon(Icons.account_circle),
//             //           labelText: "Username",
//             //           hintText: "username",
//             //           suffixIcon: IconButton(
//             //             onPressed: (){
//             //               setState((){
//             //                 _txtUsername.clear();
//             //               });
//             //             },
//             //             icon: const Icon(
//             //               Icons.cancel, color:
//             //               Colors.redAccent
//             //             ),
//             //           )
//             //       ),
//             //     )
//             // ),
//
//             Container(
//               child: const Icon(Icons.send),
//             ),
//           ],
//         ));
//   }
//
//   Widget _body(BuildContext context) {
//     return Container(
//       // alignment: Alignment.center,
//       child: Column(
//         children: [
//           Expanded(child: _showMessage()),
//           _bottomRow()
//         ],
//         // child: _buildRow(),
//         // child: _buildColumn(),
//       ),
//     );
//   }
//
//   ScrollController _scrollController = ScrollController();
//
//   _showMessage() {
//     return Stack(
//       // height: 100,
//       // color: Colors.white,
//       // alignment: Alignment.center,
//         children: [
//           SingleChildScrollView(
//             child: Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   _showChart("Hello sir!"),
//                   _showChart("Hi, what do you want to order?"),
//                   _showChart("I want a cup of Amazon Frap!"),
//                   _showChart("Okay, wait 2 minute. thanks"),
//                   _showChart("Thanks"),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//               bottom: 10,
//               child: _buildUpIcon()
//           )
//         ]
//     );
//   }
//
//   _showChart(String smg) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       margin: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(100),
//         color: Colors.blueAccent,
//       ),
//       child: Text(
//         smg,
//         style: const TextStyle(
//             fontSize: 16,
//             fontFamily: 'verdana',
//             color: Colors.white
//         ),
//       ),
//     );
//   }
//
//   Widget _buildUpIcon(){
//     return ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(horizontal: 40),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(200)
//             )
//         ),
//         onPressed: (){
//           _scrollController.animateTo(
//               _scrollController.position.maxScrollExtent,
//               duration: const Duration(microseconds: 400),
//               curve: Curves.easeInOut);
//         },
//         child: const Icon(Icons.arrow_circle_up)
//     );
//   }
//
//   _bottomRow() {
//     return Container(
//       height: 80,
//       color: Color(themeColor),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.attach_file,
//               color: Colors.white,
//             ),
//           ),
//           Expanded(child: _buildInputMessageField()),
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.mic,
//                 color: Colors.white,
//               )),
//         ],
//       ),
//     );
//   }
//
//   _buildInputMessageField() {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 15),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100), color: Colors.white),
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: TextFormField(
//         keyboardType: TextInputType.text,
//         textInputAction: TextInputAction.send,
//         autocorrect: false,
//         onFieldSubmitted: (message) {
//           print("Message $message");
//         },
//         decoration: InputDecoration(
//             border: InputBorder.none,
//             hintText: 'Write a message...',
//             // border: const OutlineInputBorder(),
//             suffixIcon: IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.emoji_emotions,
//                 color: Colors.black26,
//               ),
//             )),
//       ),
//     );
//   }
//
//   _buildColumn() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: <Widget>[
//         Container(
//           alignment: Alignment.topCenter,
//           height: 100.0,
//           color: Colors.blueAccent,
//           child: const Icon(Icons.account_circle),
//         ),
//         Container(
//           alignment: Alignment.center,
//           color: Colors.white,
//           child: const Icon(Icons.account_circle),
//         ),
//         Container(
//           alignment: Alignment.bottomCenter,
//           height: 100.0,
//           color: Colors.blueAccent,
//           child: const Icon(Icons.account_circle),
//         ),
//       ],
//     );
//   }
// }
