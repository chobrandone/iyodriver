import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/cars/available_cars_screen.dart';
// import 'package:iyodriver/Screens/screens.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  //form key
  final _formkey = GlobalKey<FormState>();

  //ediiting controller
  final NameEditingController  = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final phoneNumberEditingController  = new TextEditingController();
  final passwordeEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

      //firstNameField
      final nameField =TextFormField(

        autofocus: false,
        controller: NameEditingController,
        keyboardType: TextInputType.emailAddress,

        // validator: () {},
        onSaved :(value){
          NameEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(

            hintText: "First Name",
            prefixIcon: Icon(
              Icons.person,
              color: Color(0xffCEA110),
            ),
            contentPadding: EdgeInsets.fromLTRB(20, 15 , 20, 15),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),

      );



      //emailField
      final emailField =TextFormField(

        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,

        // validator: () {},
        onSaved :(value){
          emailEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(

            hintText: "email",
            prefixIcon: Icon(
              Icons.email,
              color: Color(0xffCEA110),
            ),
            contentPadding: EdgeInsets.fromLTRB(20, 15 , 20, 15),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),

      );
      //secondtNameField
      final phoneNumberField =TextFormField(

        autofocus: false,
        controller: phoneNumberEditingController,
        keyboardType: TextInputType.emailAddress,

        // validator: () {},
        onSaved :(value){
          phoneNumberEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(

            hintText: "second Name",
            prefixIcon: Icon(
              Icons.call,
              color: Color(0xffCEA110),
            ),
            contentPadding: EdgeInsets.fromLTRB(20, 15 , 20, 15),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),

      );

      //passwordField
      final passwordField =TextFormField(
        obscureText: true,
        autofocus: false,
        controller: passwordeEditingController,


        // validator: () {},
        onSaved :(value){
          passwordeEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(

            hintText: "password",
            prefixIcon: Icon(
              Icons.password_outlined,
              color: Color(0xffCEA110),
            ),
            contentPadding: EdgeInsets.fromLTRB(20, 15 , 20, 15),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),

      );

      //confirmPasswordField
      final confirmPasswordField =TextFormField(
        obscureText: true,
        autofocus: false,
        controller: confirmPasswordEditingController,


        // validator: () {},
        onSaved :(value){
          confirmPasswordEditingController.text=value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(

            hintText: "confirm password",
            prefixIcon: Icon(
              Icons.password_outlined,
              color: Color(0xffCEA110),
            ),
            contentPadding: EdgeInsets.fromLTRB(20, 15 , 20, 15),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),

      );

      final signUpButton= Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Color(0xffCEA110),
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15 , 20, 15),
          minWidth: 350,
          onPressed:() {},
          child: Text("Inscrire",textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
      );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child:Container(
            // margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            //  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30), boxShadow: [
            //    BoxShadow(blurRadius: 10,spreadRadius: 7,offset: Offset(1,1), color: Colors.grey.withOpacity(0.2))
            //  ]),
            // color: Colors.white,
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Container(
                  //   child: Image.asset("assets/logo.png"),
                  // ),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                      color: new Color(0xffF5591F),
                      gradient: LinearGradient(
                        colors: [
                          (new Color(0xffCEA110)),
                          new Color(0xff2F2E41),
                        ],
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
                              // margin: EdgeInsets.only(top: ),
                              child: Image.asset(
                                "assets/images/logowhite.png",
                                height: 200,
                                width: 200,
                              ),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, top: 20),
                    alignment: Alignment.center,
                    child: Text(
                      "SE CONNECTER",
                      style: TextStyle(fontSize: 20, color: Color(0xffCEA110)),
                    ),
                  ),
                  SizedBox(height: 20,),
               Container(
                 margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                 child: Column(
                   children: [
                     Container(
                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
                         BoxShadow(blurRadius: 10, spreadRadius: 7, offset: Offset(1, 1), color: Colors.grey.withOpacity(0.2))
                       ]),
                       child: nameField,
                     ),
                     SizedBox(height: 20,),
                     Container(
                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
                         BoxShadow(blurRadius: 10, spreadRadius: 7, offset: Offset(1, 1), color: Colors.grey.withOpacity(0.2))
                       ]),
                       child: emailField,
                     ),
                     SizedBox(height: 20,),
                     Container(
                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
                         BoxShadow(blurRadius: 10, spreadRadius: 7, offset: Offset(1, 1), color: Colors.grey.withOpacity(0.2))
                       ]),
                       child: phoneNumberField,
                     ),

                     SizedBox(height: 20,),
                     Container(
                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
                         BoxShadow(blurRadius: 10, spreadRadius: 7, offset: Offset(1, 1), color: Colors.grey.withOpacity(0.2))
                       ]),
                       child: passwordField,
                     ),
                     SizedBox(height: 20,),
                     Container(
                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
                         BoxShadow(blurRadius: 10, spreadRadius: 7, offset: Offset(1, 1), color: Colors.grey.withOpacity(0.2))
                       ]),
                       child: confirmPasswordField,
                     ),
                     SizedBox(height: 30,),
                     Container(child: signUpButton,),
                   ],
                 ),
               ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text(
                      "ou",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                        margin: EdgeInsets.only(right: 20, left: 20),
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      Text("Vousavez un compte? "),
                      SizedBox(width: 10,),
                      GestureDetector(

                        onTap: (){
                          Navigator.pushNamed(context, AvailableCarsScreen.routeName);
                        },
                        child: Text("Connecte Vouz",style: TextStyle(fontSize: 20,color: Color(0xffCEA110),fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),

                ],),
            ),
          ) ,

        ),
      ),

    );
  }


}
