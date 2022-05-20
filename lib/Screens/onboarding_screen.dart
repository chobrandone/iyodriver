import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/intro_screens/intro_page_1.dart';
import 'package:iyodriver/Screens/intro_screens/intro_page_2.dart';
import 'package:iyodriver/Screens/intro_screens/intro_page_3.dart';
import 'package:iyodriver/Screens/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // controller just to keep track on what p[age we are on
  PageController _controller =PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage= (index == 2);
              });
            },
            children: [
           IntroPage1(),
           IntroPage2(),
           IntroPage3()
            ],
          ),
          //dot indicators
          Container(
              alignment: Alignment(0,0.94),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skips
                 GestureDetector(
                   onTap: (){
                     _controller.jumpToPage(2);
                   },
                   child:  Text("SAUTER",
                   style: TextStyle(
                     color: Colors.white
                   ),),
                 ),

                  SmoothPageIndicator(controller: _controller, count: 3,
                  effect: SlideEffect(
                      spacing:  8.0,
                      radius:  4.0,
                      dotWidth:  24.0,
                      dotHeight:  8.0,
                      // paintStyle:  PaintingStyle.stroke,
                      strokeWidth:  1.5,
                      dotColor: Color(0xFF7177AB),
                      activeDotColor:  Colors.white
                  ),),

                  // next or done page
                  onLastPage?
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child:  Text("FINI",
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ):
                  GestureDetector(
                    onTap: (){
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn
                      );
                    },
                    child:  Text("SUIVANTE",
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  // next
                ],
              ),
          )
        ],
      )
    );
  }
}
