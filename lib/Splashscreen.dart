import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_Page.dart';


//import 'package:flutter_icons/flutter_icons.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomeApp extends StatefulWidget {
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
             body: Container(
               padding: EdgeInsets.symmetric(horizontal: 50,vertical: 300),
               height: MediaQuery.of(context).size.height,
               width: MediaQuery.of(context).size.width,
               child: Column(children:[
                 Image.asset("assets/nileswram.png",height: 70,width: 70,),
                 SizedBox(height: 10,),
                 Text(
                   "Nileshwaram.com",
                   style: GoogleFonts.aclonica(
                     color: Colors.red.shade900,
                     fontSize: 15.0,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
               ],
               ),

        ),


      ),
    );
  }
}