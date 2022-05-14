import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //to incremet the numberos second that the splash screen will take
//   void initState(){
//     super.initState();
//     startTime();
//   }
//   //setting the duration
//   startTime() async {
//     var duration = Duration(seconds: 4);
//     return new Timer(duration, route);
//   }
// // routing to the next page
//   route() {
//     Navigator.pushReplacement(context, MaterialPageRoute(
//         builder: (context) => WelcomeSreen()
//     ));
//   }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xffF5fceb)
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/logowhite.png"),
            ),
          )
        ],
      ),
    );
  }
}
