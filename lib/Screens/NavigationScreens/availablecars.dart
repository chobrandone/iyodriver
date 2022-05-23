// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_project/FavoritePage.dart';
// import 'package:flutter_project/HomePage.dart';
// import 'package:flutter_project/IdentityPage.dart';
// import 'package:flutter_project/MessagePage.dart';
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() =&gt; _MyAppState();
// }
//
// class _MyAppState extends State {
//
//   GlobalKey _NavKey = GlobalKey();
//
//   var PagesAll = [HomePage(),MessagePage(),FavoritePage(),IdentityPage()];
//
//   var myindex =0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//         backgroundColor: Colors.transparent,
//         key: _NavKey,
//         items: [
//           Icon((myindex == 0) ? Icons.home_outlined : Icons.home),
//           Icon((myindex == 1) ? Icons.message : Icons.message_outlined),
//           Icon((myindex == 2) ? Icons.favorite_border : Icons.favorite),
//           Icon((myindex == 3) ? Icons.perm_identity : Icons.perm_contact_cal_rounded)
//         ],
//         buttonBackgroundColor: Colors.white,
//         onTap: (index){
//           setState(() {
//             myindex = index;
//           });
//         },
//         animationCurve: Curves.fastLinearToSlowEaseIn, color: Colors.orange,
//       ),
//       body: PagesAll[myindex],
//     );
//   }
// }
// HomePage.dart
