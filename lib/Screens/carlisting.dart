import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iyodriver/Screens/NavigationScreens/availablecars.dart';
import 'package:iyodriver/Screens/NavigationScreens/booking.dart';
import 'package:iyodriver/Screens/navbar_key.dart';
import 'package:iyodriver/Screens/NavigationScreens/category.dart';

import 'NavigationScreens/profile.dart';

class CarDashboard extends StatefulWidget {
  const CarDashboard({Key? key}) : super(key: key);

  @override
  _CarDashboardState createState() => _CarDashboardState();
}

class _CarDashboardState extends State<CarDashboard> {
  // GlobalKey _NavKey = GlobalKey();

    int selectedIndex=0;
    final screen =[ CarCategoryPage(), BookingPage(), ProfilePage(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(

        index: selectedIndex,
        // key: NavBarKey.getKey(),
        backgroundColor: Colors.transparent,
        // key: _NavKey,

        items: [
          Icon( Icons.dashboard ,size: 30, color: Colors.white,),
          Icon( Icons.home_outlined ,size: 30,  color: Colors.white,),
          Icon( Icons.perm_identity_rounded ,size: 30,  color: Colors.white,),

        ],
        buttonBackgroundColor: Color(0xffCEA110),
        onTap: (index){
          setState(() {
            selectedIndex =index;
          });
        },
        animationCurve: Curves.fastLinearToSlowEaseIn, color:Color(0xffCEA110)
      ),
        body : screen[selectedIndex]
    );


  }



}

