import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/screens.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(90)),
            color: new Color(0xffF5591F),
            gradient: LinearGradient(
              colors: [
                (new Color(0xffCEA110)),
                new Color(0xff2F2E41).withOpacity(0.9),
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
                // margin: EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/images/logowhite.png",
                  height: 150,
                  width: 2500,
                ),
              ),
            ],
          )),
        ),
        Container(
          margin: const EdgeInsets.only(right: 20, top: 20),
          alignment: Alignment.center,
          child: const Text(
            "S'INSCRIRE",
            style: TextStyle(fontSize: 20, color: Color(0xffCEA110)),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        Container(
          width: w * 0.85,
          height: h * 0.065,
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
            BoxShadow(blurRadius: 10, spreadRadius: 7, offset: const Offset(1, 1), color: Colors.grey.withOpacity(0.2))
          ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Nom et Prénom",
                prefixIcon: const Icon(
                  Icons.person,
                  color: Color(0xffCEA110),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          width: w * 0.85,
          height: h * 0.065,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
            BoxShadow(blurRadius: 10, spreadRadius: 7, offset: const Offset(1, 1), color: Colors.grey.withOpacity(0.2))
          ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "E-mail",
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Color(0xffCEA110),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          width: w * 0.85,
          height: h * 0.065,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
            BoxShadow(blurRadius: 10, spreadRadius: 7, offset: const Offset(1, 1), color: Colors.grey.withOpacity(0.2))
          ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Numéro de téléphone",
                prefixIcon: const Icon(
                  Icons.phone_android_outlined,
                  color: Color(0xffCEA110),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          width: w * 0.85,
          height: h * 0.065,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30), boxShadow: [
            BoxShadow(blurRadius: 10, spreadRadius: 7, offset: const Offset(1, 1), color: Colors.grey.withOpacity(0.2))
          ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Mot de passe",
                prefixIcon: const Icon(
                  Icons.password_outlined,
                  color: Color(0xffCEA110),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.white)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              // Write Click Listener Code Here
            },
            child: const Text("Mot de passe oublié?"),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, MainScreen.routeName);
          },
          child: Container(
            width: w * 0.7,
            height: h * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(image: AssetImage("assets/images/button.png"), fit: BoxFit.cover)),
            child: const Center(
              child: Text(
                "S'inscrire",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: const Text(
            "ou",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
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
              margin: const EdgeInsets.only(right: 20, left: 20),
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
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Avoir un compte?.    "),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: const Text(
                  "Connecter Vous",
                  style: TextStyle(color: Color(0xffCEA110)),
                ),
              )
            ],
          ),
        )
      ],
    )));
  }
}
