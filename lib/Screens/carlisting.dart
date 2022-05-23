import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CarDashboard extends StatefulWidget {
  const CarDashboard({Key? key}) : super(key: key);

  @override
  _CarDashboardState createState() => _CarDashboardState();
}

class _CarDashboardState extends State<CarDashboard> {
  GlobalKey _NavKey = GlobalKey();

  var PagesAll=[];
  var myindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        key: _NavKey,
        items: [
          Icon((myindex == 0) ? Icons.home_outlined : Icons.home),
          Icon((myindex == 1) ? Icons.message : Icons.message_outlined),
          Icon((myindex == 2) ? Icons.favorite_border : Icons.favorite),
          Icon((myindex == 3) ? Icons.perm_identity : Icons.perm_contact_cal_rounded)
        ],
        buttonBackgroundColor: Colors.white,
        onTap: (index){
          setState(() {
            myindex = index;
          });
        },
        animationCurve: Curves.fastLinearToSlowEaseIn, color: Colors.orange,
      ),
      body: PagesAll[myindex],
    );
  }
}
