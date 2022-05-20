import 'package:flutter/material.dart';
class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: 20,),
          Container(
            child: Image.asset("assets/images/logodark.png"),
            // child: AssetImage("assets/images/logodark.png"),
          ),

          SizedBox(height: 50,),
          Container(
            child: Image.asset("assets/images/screen2.png"),
            // child: AssetImage("assets/images/logodark.png"),
          ),
          SizedBox(height: 155,),
          Container(
            padding: const EdgeInsets.only(top: 0,left: 25,right: 25),
            width: w,
            height: h*0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)
                ),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/Rectangle.png"
                    ),
                    fit: BoxFit.cover
                )
            ),
            child: Column(

              children: [

                SizedBox(height: 30,),
                Text(

                  "Demander un trajet",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white
                  ),
                ),
                SizedBox(height: 30,),
                Text(
                  "inscrivez-vous à l'application et réservez pour une voiture en choisissant à l'avance votre lieu de prise en charge exact et la marque de votre voiture.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.white
                  ),
                ),
                SizedBox(height: 30,),
                // Container(
                //   width: w*0.5,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.only(
                //         topRight: Radius.circular(30.0),
                //         topLeft: Radius.circular(30.0)
                //     ),
                //
                //   ),
                //   child: RaisedButton(
                //
                //     onPressed: () {},
                //     color: Colors.white,
                //     child: Row(
                //
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children:[
                //         Text(
                //           'Continue',
                //
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.w400,
                //             color: Color(0xffCEA110),
                //           ),
                //         ),
                //         Icon(
                //           Icons.arrow_forward,
                //           color: Color(0xffCEA110),
                //         )
                //       ],
                //     ),
                //   ),
                // ),




              ],

            ),
          ),
        ],
      ),
    );
  }
}
