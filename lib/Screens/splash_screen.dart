import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/onboarding_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

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
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ("assets/images/homescreen.png"),

            ),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image.asset("assets/images/logowhite.png"),
            ),
            Container(
              child: Image.asset("assets/images/homecar.png",fit: BoxFit.cover,),


            ),
            SizedBox(height: 50,),
            Center(
              child: Container(
                child: Text(
                  "Bienvenue chez iyodriver",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),
                ),

              ),
            ),
            SizedBox(height: 25,),
            Center(
              child: Container(
                  child: Text(
                    "Faites un tour en quelque clics ",
                    style: TextStyle(
                      fontSize: 20,

                      color: Colors.white,

                    ),
                  ),

              ),
            ),
            SizedBox(height: 50,),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),

              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
                },

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                textColor: new Color(0xffcea110),
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: h*0.03,
                  width: w,

                  padding: EdgeInsets.all(0),
                  child: Text(
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
      )
    );
  }
}
