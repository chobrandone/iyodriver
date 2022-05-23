import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/carlisting.dart';
import 'package:iyodriver/Screens/login.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return initWidget();

  }
  initWidget() {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                    color: new Color(0xffF5591F),
                    gradient: LinearGradient(colors: [(new  Color(0xffCEA110)), new Color(0xff2F2E41).withOpacity(0.9),],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // margin: EdgeInsets.only(top: 50),
                            child: Image.asset(
                              "assets/images/logowhite.png",
                              height: 150,
                              width: 2500,
                            ),
                          ),

                        ],
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "S'INSCRIRE",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffCEA110)
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
                  margin: const EdgeInsets.only(left: 20, right: 20,top: 20),
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
                  margin: const EdgeInsets.only(left: 20, right: 20,top: 20),
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
                Container(
                  width: w*0.85,
                  height: h*0.065,
                  margin: const EdgeInsets.only(left: 20, right: 20 ,top: 20),
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
                        hintText: "Mot de passe",
                        prefixIcon: Icon(Icons.password_outlined,color: Color(0xffCEA110),),
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
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Write Click Listener Code Here
                    },
                    child: Text("Mot de passe oublié?"),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CarDashboard()));
                  },
                  child:  Container(
                    width: w*0.7,
                    height: h*0.06,
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
                        "S'inscrire",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("ou",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(

                      child: Image.asset(
                        "assets/images/call.png",
                        // height: 200,
                        // width: 300,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20,left: 20),
                      child: Image.asset(
                        "assets/images/google.png",
                        // height: 200,
                        // width: 300,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/facebook.png",
                        // height: 200,
                        // width: 300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Avoir un compte?.    "),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                        },
                        child: Text(
                          "Connecter Vous",
                          style: TextStyle(
                              color: Color(0xffCEA110)
                          ),
                        ),

                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
