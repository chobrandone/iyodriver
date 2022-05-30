import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/screens.dart';
import 'package:iyodriver/utils/hex_color.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main';

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  void _onChangePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const AvailableCarsScreen(),
      const ProfileScreen(),
      const BookNowScreen(),
    ];

    return Scaffold(
      body: SafeArea(

          child: IndexedStack(
        index: _currentIndex,
        children: pages,
      )),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: _currentIndex,
        items: const [
          Icon(Icons.dashboard, size: 30, color: Colors.white),
          Icon(Icons.perm_identity_rounded, size: 30, color: Colors.white),
          Icon(Icons. phone_in_talk_rounded, size: 30, color: Colors.white)
        ],
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: HexColor('#CEA110'),
        onTap: _onChangePage,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        color: HexColor('#CEA110'),
      ),
    );
  }
}
