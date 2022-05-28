

import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/NavigationScreens/category.dart';

import '../carlisting.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  // Initial Selected Value
  String dropdownvalue = 'Item 1';
  String dropdownpayment = 'Comment vous voulez payer';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var payments =[
    'Comment vous voulez payer',
    'Cash',
    'Mobile Money'
  ];

    TextEditingController _date = TextEditingController();
  
  //SHOW THE DATE PICKER METHOD
  void _showDatePicker(){
    showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2022), lastDate: DateTime(2025));
  }
  final String _url= 'https://youtube.com';
  @override
  Widget build(BuildContext context) {
    final _dateController = TextEditingController();

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
              Container(

                padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                child: Row(
                  children: [
                 GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CarCategoryPage()));
                   },
                   child:  Icon(Icons.arrow_back,

                     size: 20,
                     color: Colors.orange,),
                 ),
                    Expanded(child:  Container()),
                    Icon(Icons.person,
                      size: 20,
                      color: Colors.orange,),

                  ],
                ),
              ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "RÉSERVE",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffCEA110),
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),

                SizedBox(height: 35,),
                Container(
                  width: w*0.85,
                  height: h*0.065,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Nom et Prénom",
                        prefixIcon: Icon(Icons.person,color: Color(0xffCEA110),),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),

                Container(
                  width: w*0.85,
                  height: h*0.065,
                  margin: const EdgeInsets.only(left: 20, right: 20,top: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "E-mail",
                        prefixIcon: Icon(Icons.email_outlined,color: Color(0xffCEA110),),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                Container(
                  width: w*0.85,
                  height: h*0.065,
                  margin: const EdgeInsets.only(left: 20, right: 20,top: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Numéro de téléphone",
                        prefixIcon: Icon(Icons.phone_android_outlined,color: Color(0xffCEA110),),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                ),
                Row(

                  children: [
                    Container(

                      width: w*0.4,
                      height: h*0.065,
                      margin: const EdgeInsets.only(left: 30,top: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                      child: TextField(
                        controller: _date,
                  onTap: _showDatePicker,
                  // controller: _dateController,
                  // readOnly: true,

                  decoration: InputDecoration(
                      hintText: "Date",

                      prefixIcon: Icon(Icons.calendar_today_rounded,color: Color(0xffCEA110),),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),



                ),

                    ),
                    Expanded(child:  Container()),
                    Container(
                      width: w*0.4,
                      height: h*0.065,
                      margin: const EdgeInsets.only( top: 30,right: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Heure",
                            prefixIcon: Icon(Icons.event,color: Color(0xffCEA110),),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Colors.white
                                )
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                Container(

                  width: w*0.85,
                  height: h*0.065,
                  margin: const EdgeInsets.only(left: 20, right: 20,top: 30),
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                  child: DropdownButtonHideUnderline(

                    child: DropdownButton(  value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down,size: 30, ),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },),

                    // Initial Value

                  ),
                ),
                Container(

                  width: w*0.85,
                  height: h*0.065,
                  margin: const EdgeInsets.only(left: 20, right: 20,top: 30),
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                  child: DropdownButtonHideUnderline(

                    child: DropdownButton(  value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down,size: 30, ),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },),

                    // Initial Value

                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CarDashboard()));
                      },
                      child:  Container(
                        width: w*0.5,
                        height: h*0.06,
                        margin: EdgeInsets.only(left: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/button.png"
                                ),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Center(
                          child: Text(
                            "RÉSERVE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: Text("Ou"),
                          // child: AssetImage("assets/images/logodark.png"),
                        ),

                        // width: 200,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CarDashboard()));
                      },
                      child:  Container(

                        // width: w*0.5,
                        height: h*0.06,
                        margin: EdgeInsets.only(right: 40),
                      child: GestureDetector(
                        onTap: () async {

                        },
                        child: Image.asset("assets/images/calls.png"),
                      )

                      ),
                    ),
                  ],
                ),


              ],
            )
        )

    );

  }
}

//
//
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//
// class CarCategoryPage extends StatefulWidget {
//   const CarCategoryPage({Key? key}) : super(key: key);
//
//   @override
//   _CarCategoryPageState createState() => _CarCategoryPageState();
// }
//
// class _CarCategoryPageState extends State<CarCategoryPage> {
//
//   List<String> _options=[
//     "HOME","CART","MENU","SETTINGS","FAVORITES"
//   ];
//   int _currentIndex=0;
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       backgroundColor:Color(0xffCEA110),
//       body: Container(
//         color: Colors.red,
//         child: Center(
//             child: Text(_options[_currentIndex],
//               style: TextStyle(
//                   color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
//             )),
//       ),
//
//
//
//
//
//
//       // bottomNavigationBar: CurvedNavigationBar(
//       //   buttonBackgroundColor: Colors.white,
//       //   backgroundColor: Colors.red,
//       //   animationDuration: Duration(seconds: 1),
//       //   // animationCurve: Curves.bounceOut,
//       //   items: <Widget>[
//       //     Icon(Icons.home,color:Color(0xffCEA110),),
//       //     Icon(Icons.shopping_cart,color: Color(0xffCEA110),),
//       //     Icon(Icons.restaurant_menu,color: Color(0xffCEA110),),
//       //
//       //   ],
//       //   onTap: (index){
//       //     setState(() {
//       //       _currentIndex=index;
//       //     });
//       //   },
//       // ),
//
//     );
//   }
// }
