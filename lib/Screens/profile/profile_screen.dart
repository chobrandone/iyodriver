import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/cars/available_cars_screen.dart';
import 'package:iyodriver/utils/hex_color.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 30, left: 30),
            child: GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, AvailableCarsScreen.routeName);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.orange,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(),
            child: Container(
              width: double.infinity,
              // height: 350.0,
              child: Center(
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/pic.png",
                      ),
                      radius: 50.0,
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text("cho brandone koti"),
          const SizedBox(height: 10),
          const Text("chobrandone@gmail.com"),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.centerRight, colors: [
                  HexColor('#CEA110'),
                  HexColor('#2F2E41').withOpacity(0.9),
                ])),
            child: const Text(
              "Modifier Profil",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          // Container(
          //   child: Table(
          //     children: [
          //       buidRow(['cell 1''cell 2','cell3'])
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
