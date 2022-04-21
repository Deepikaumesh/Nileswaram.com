import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Carousel/AdCarousel.dart';
import 'package:untitled1/Carousel/NewsAndEventCarousel.dart';
import 'Catagory/Catagory_image_buttons.dart';
import 'Drawer.dart';
import 'Searchbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F7FF),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Nileshwaram.com",
            style: GoogleFonts.aclonica(
              color: Colors.red.shade900,
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          iconTheme: IconThemeData(color: Colors.red.shade900),
          elevation: 0.0,
          backgroundColor: Color(0xFFF6F7FF),
        ),
        drawer: Drawer(
          child: MainDrawer(),
        ),
        body: Column(
            children: [
            Search_Bar(),
        Expanded(
          child: Container(
            child:
            SingleChildScrollView(
              child: Column(
                children: [ Text(
                  "News And Events",
                  style: GoogleFonts.prompt(
                      fontSize: 18, color: Colors.blueGrey.shade700),
                ),

                  // SizedBox(
                  //   height: 5,
                  // ),
                 // CatagoryContainer(),
                //  CatagoryimageButton(),
                  Carousel(),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Select Catagory",
                    style: GoogleFonts.prompt(
                        fontSize: 18, color: Colors.blueGrey.shade700),
                  ),
                 // Carousel(),
                  SizedBox(height: 10,),
                  CatagoryimageButton(),
                  SizedBox(
                    height: 30,
                  ),
                  // Text(
                  //   "Ads",
                  //   style: GoogleFonts.prompt(
                  //       fontSize: 18, color: Colors.blueGrey.shade700),
                  // ),
                  Adcarousel(),
                ],),
            ),
          ),
        ), ],
    ),);
  }
}
