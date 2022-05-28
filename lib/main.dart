import 'package:flutter/material.dart';
import 'package:iyodriver/Screens/splash_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.orangeAccent,
        primarySwatch: Colors.orange
      ),
      home: const SplashScreen(),
    );
  }
}
