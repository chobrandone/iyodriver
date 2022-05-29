import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/welcome/onboarding/onboarding_screen.dart';
import 'package:iyodriver/utils/hex_color.dart';
// import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

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
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          ("assets/images/homescreen.png"),
        ),
        fit: BoxFit.cover,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Image.asset("assets/images/logowhite.png"),
          ),
          Image.asset(
            "assets/images/homecar.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Bienvenue chez iyodriver",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Center(
            child: Text(
              "Faites un tour en quelque clics ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, OnboardingScreen.routeName);
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              textColor: HexColor('#CEA110'),
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: h * 0.03,
                width: w,
                padding: const EdgeInsets.all(0),
                child: const Text(
                  "COMMENCER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // child: Center(
      // child: Image.asset("assets/images/homecar.png"),
      // ),
    ));
  }
}
