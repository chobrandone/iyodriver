import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iyodriver/Screens/NavigationScreens/booking.dart';

class CarCategoryPage extends StatefulWidget {
  const CarCategoryPage({Key? key}) : super(key: key);

  @override
  _CarCategoryPageState createState() => _CarCategoryPageState();
}

class _CarCategoryPageState extends State<CarCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  initWidget() {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child:  Column(

          children: [

            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                "Choisissez une voiture",

                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2F2E41)
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: w*0.85,
              height: h*0.15,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffFFF9EE),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                    )
                  ]

              ),

              child: Row(
                children: [
                  Column(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            // color: const Color(0xFFE8581C),
                            child: Image.asset("assets/images/toyota1.png")
                        ),
                      ),
                      // Container(
                      //
                      //   child: Image.asset("assets/images/toyota.png",
                      //
                      //     width: w*0.3,
                      //     height: h*0.095,),
                      // ),
                      SizedBox(height: 25,),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child:       RichText(text: TextSpan(
                              text: "35,000FCA",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff2F2E41)
                              ),
                              children: [
                                TextSpan(
                                  text: "/JOUR",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                              ]
                          ),)
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(left: 10,top: 9),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "TOYOTA VITZ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xff2F2E41),
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 5),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "2009",
                          textAlign: TextAlign.right,
                          style: TextStyle(

                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(top: 26,left: 46),
                        height: h*0.05,
                        width: w*0.35,
                        decoration: BoxDecoration(
                            color: Color(0xffCEA110),
                            borderRadius: BorderRadius.only(bottomRight:  Radius.circular(30),topLeft: Radius.circular(30)),
                            border: Border.all(width: 3,color: Color(0xffCEA110),style: BorderStyle.solid)
                        ),
                        child: Center(child: Text(" Réservez",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        )),
                      ),
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: w*0.85,
              height: h*0.15,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffFFF9EE),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                    )
                  ]

              ),

              child: Row(
                children: [
                  Column(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            // color: const Color(0xFFE8581C),
                            child: Image.asset("assets/images/toyota.png")
                        ),
                      ),
                      // Container(
                      //
                      //   child: Image.asset("assets/images/toyota.png",
                      //
                      //     width: w*0.3,
                      //     height: h*0.095,),
                      // ),
                      SizedBox(height: 25,),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child:       RichText(text: TextSpan(
                              text: "35,000FCA",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff2F2E41)
                              ),
                              children: [
                                TextSpan(
                                  text: "/JOUR",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                              ]
                          ),)
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(left: 10,top: 9),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "Nissan Pathfinder",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xff2F2E41),
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 5),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "2009",
                          textAlign: TextAlign.right,
                          style: TextStyle(

                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingPage()));
                        },
                        child:  Container(

                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(top: 25,left: 35),
                          height: h*0.05,
                          width: w*0.35,
                          decoration: BoxDecoration(
                              color: Color(0xffCEA110),
                              borderRadius: BorderRadius.only(bottomRight:  Radius.circular(30),topLeft: Radius.circular(30)),
                              border: Border.all(width: 3,color: Color(0xffCEA110),style: BorderStyle.solid)
                          ),
                          child: Center(child: Text(" Réservez",

                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),

                          ),

                          ),

                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: w*0.85,
              height: h*0.15,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffFFF9EE),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                    )
                  ]

              ),

              child: Row(
                children: [
                  Column(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            // color: const Color(0xFFE8581C),
                            child: Image.asset("assets/images/jeep.png",
                            )
                        ),
                      ),
                      // Container(
                      //
                      //   child: Image.asset("assets/images/toyota.png",
                      //
                      //     width: w*0.3,
                      //     height: h*0.095,),
                      // ),
                      SizedBox(height: 25,),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child:       RichText(text: TextSpan(
                              text: "35,000FCA",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff2F2E41)
                              ),
                              children: [
                                TextSpan(
                                  text: "/JOUR",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                              ]
                          ),)
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(left: 10,top: 9),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "Nissan Pathfinder",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xff2F2E41),
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 5),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "2009",
                          textAlign: TextAlign.right,
                          style: TextStyle(

                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingPage()));
                        },
                        child:  Container(

                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(top: 25,left: 52),
                          height: h*0.05,
                          width: w*0.35,
                          decoration: BoxDecoration(
                              color: Color(0xffCEA110),
                              borderRadius: BorderRadius.only(bottomRight:  Radius.circular(30),topLeft: Radius.circular(30)),
                              border: Border.all(width: 3,color: Color(0xffCEA110),style: BorderStyle.solid)
                          ),
                          child: Center(child: Text(" Réservez",

                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),

                          ),

                          ),

                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: w*0.85,
              height: h*0.15,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffFFF9EE),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                    )
                  ]

              ),

              child: Row(
                children: [
                  Column(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            // color: const Color(0xFFE8581C),
                            child: Image.asset("assets/images/toyota.png")
                        ),
                      ),
                      // Container(
                      //
                      //   child: Image.asset("assets/images/toyota.png",
                      //
                      //     width: w*0.3,
                      //     height: h*0.095,),
                      // ),
                      SizedBox(height: 25,),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child:       RichText(text: TextSpan(
                              text: "35,000FCA",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff2F2E41)
                              ),
                              children: [
                                TextSpan(
                                  text: "/JOUR",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                              ]
                          ),)
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(left: 10,top: 9),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "TOYOTA VITZ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xff2F2E41),
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 5),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "2009",
                          textAlign: TextAlign.right,
                          style: TextStyle(

                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingPage()));
                        },
                        child:  Container(

                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(top: 25,left: 35),
                          height: h*0.05,
                          width: w*0.35,
                          decoration: BoxDecoration(
                              color: Color(0xffCEA110),
                              borderRadius: BorderRadius.only(bottomRight:  Radius.circular(30),topLeft: Radius.circular(30)),
                              border: Border.all(width: 3,color: Color(0xffCEA110),style: BorderStyle.solid)
                          ),
                          child: Center(child: Text(" Réservez",

                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),

                          ),

                          ),

                        ),
                      )
                    ],
                  )

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: w*0.85,
              height: h*0.15,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Color(0xffFFF9EE),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2)
                    )
                  ]

              ),

              child: Row(
                children: [
                  Column(
                    children: [
                      Transform.scale(
                        scale: 1.2,
                        child: Container(
                            padding: const EdgeInsets.only(left: 20),
                            // color: const Color(0xFFE8581C),
                            child: Image.asset("assets/images/toyota.png")
                        ),
                      ),
                      // Container(
                      //
                      //   child: Image.asset("assets/images/toyota.png",
                      //
                      //     width: w*0.3,
                      //     height: h*0.095,),
                      // ),
                      SizedBox(height: 25,),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child:       RichText(text: TextSpan(
                              text: "35,000FCA",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff2F2E41)
                              ),
                              children: [
                                TextSpan(
                                  text: "/JOUR",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.bold
                                  ),
                                ),

                              ]
                          ),)
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.only(left: 10,top: 9),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "TOYOTA VITZ",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xff2F2E41),
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30,top: 5),
                        alignment: Alignment.bottomRight,
                        child:  Text(

                          "2009",
                          textAlign: TextAlign.right,
                          style: TextStyle(

                          ),
                        ),
                      ),
                     GestureDetector(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingPage()));
                       },
                       child:  Container(

                         alignment: Alignment.bottomRight,
                         margin: EdgeInsets.only(top: 25,left: 35),
                         height: h*0.05,
                         width: w*0.35,
                         decoration: BoxDecoration(
                             color: Color(0xffCEA110),
                             borderRadius: BorderRadius.only(bottomRight:  Radius.circular(30),topLeft: Radius.circular(30)),
                             border: Border.all(width: 3,color: Color(0xffCEA110),style: BorderStyle.solid)
                         ),
                         child: Center(child: Text(" Réservez",

                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 20
                           ),

                         ),

                         ),

                       ),
                     )
                    ],
                  )

                ],
              ),
            ),


          ],
        ),
      ),


    );
  }
}
