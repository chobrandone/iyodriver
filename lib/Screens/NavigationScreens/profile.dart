import 'package:flutter/material.dart';

import '../carlisting.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 30,left: 30),
          child:  GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CarDashboard()));
            },
            child:  Icon(Icons.arrow_back,

              size: 20,
              color: Colors.orange,),
          ),
        ),
         Container(
          decoration: BoxDecoration(

          ) ,
           child: Container(
             width: double.infinity,
             // height: 350.0,
             child: Center(
               child: Column(
                 children: [
                   CircleAvatar(
                     backgroundImage: AssetImage(
                       "assets/images/pic.png",
                     ),
                     radius: 50.0,

                   )

                 ],
               ),
             ),
           ),
         ),
         SizedBox(height:20 ),
         Container(
           child: Text(
             "cho brandone koti"
           ),
         ),
         SizedBox(height:10 ),
         Container(
           child: Text(
               "chobrandone@gmail.com"
           ),
         ),
         SizedBox(height:20 ),
         Container(
           padding: EdgeInsets.all(15),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
             gradient: LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.centerRight,
               colors: [(new  Color(0xffCEA110)), new Color(0xff2F2E41).withOpacity(0.9),]
             )
           ),
           child: Text(
             "Modifier Profil",
             style: TextStyle(
               fontSize: 18,
               color: Colors.white
             ),
           ),
         ),
         // Container(
         //   child: Table(
         //     children: [
         //       buidRow(['cell 1''cell 2','cell3'])
         //     ],
         //   ),
         // )
       ],
     ),

    );

  }
}
