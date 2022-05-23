// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//
// class CarCategoryPage extends StatefulWidget {
//   const CarCategoryPage({Key? key}) : super(key: key);
//
//   @override
//   _CarCategoryPageState createState() => _CarCategoryPageState();
// }
//
// class _CarCategoryPageState extends State<CarCategoryPage> {
//
//   List<String> _options=[
//     "HOME","CART","MENU","SETTINGS","FAVORITES"
//   ];
//   int _currentIndex=0;
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor:Color(0xffCEA110),
//       body: Container(
//         color: Colors.red,
//         child: Center(
//             child: Text(_options[_currentIndex],
//               style: TextStyle(
//                   color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
//             )),
//       ),
//
//
//
//
//
//
//       // bottomNavigationBar: CurvedNavigationBar(
//       //   buttonBackgroundColor: Colors.white,
//       //   backgroundColor: Colors.red,
//       //   animationDuration: Duration(seconds: 1),
//       //   // animationCurve: Curves.bounceOut,
//       //   items: <Widget>[
//       //     Icon(Icons.home,color:Color(0xffCEA110),),
//       //     Icon(Icons.shopping_cart,color: Color(0xffCEA110),),
//       //     Icon(Icons.restaurant_menu,color: Color(0xffCEA110),),
//       //
//       //   ],
//       //   onTap: (index){
//       //     setState(() {
//       //       _currentIndex=index;
//       //     });
//       //   },
//       // ),
//
//     );
//   }
// }
