import 'dart:async';
import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_Page.dart';


//import 'package:flutter_icons/flutter_icons.dart';
//import 'package:google_fonts/google_fonts.dart';

class Splash_screen extends StatefulWidget {
  _Splash_screenState createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
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
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,


      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/nileswram.png",
                height: 45,
                width: 45,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Nileshwaram.com",
                style: GoogleFonts.aclonica(
                  color: Colors.red.shade900,
                  fontSize: 11.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],


      ),
    );
  }
}
