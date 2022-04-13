import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/view_more.dart';

class CatagoryimageButton extends StatefulWidget {
  @override
  CatagoryimageButtonState createState() => new CatagoryimageButtonState();
}

class CatagoryimageButtonState extends State<CatagoryimageButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      decoration: BoxDecoration(
          color: Color(0xfffad4d4),
          borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      height: 200,
      width: 340,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  new Image.asset(
                    'assets/cloth.png',
                    height: 80.0,
                    width: 80.0,
                  ),
                  TextButton(onPressed: () {}, child: Text("Textile",style:GoogleFonts.quicksand(color: Colors.pinkAccent,fontWeight: FontWeight.bold),))
                
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new Image.asset(
                    'assets/restaurant.png',
                    height: 80.0,
                    width: 80.0,
                  ),
                  TextButton(onPressed: () {}, child: Text("Hotel",style:GoogleFonts.quicksand(color: Colors.teal,fontWeight: FontWeight.bold),))
                  // new Text(
                  //   "shop",
                  //   style:
                  //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  // )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  new Image.asset(
                    'assets/grow1.png',
                    height: 90.0,
                    width: 80.0,
                  ),
                  TextButton(onPressed: () {}, child: Text("Grocery",style:GoogleFonts.quicksand(color: Colors.deepOrange,fontWeight: FontWeight.bold),))
                  // new Text(
                  //   "shop",
                  //   style:
                  //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  // )
                ],
              ),
            ],
          ),
          // Padding(
          //     padding: EdgeInsets.only(left: 220),
          //     child: Text(
          //       " View More>>",
          //       style: GoogleFonts.quicksand(
          //           fontSize: 15,
          //           color: Colors.red.shade900,
          //           fontWeight: FontWeight.bold),
          //
          //    )),
          Padding(padding: EdgeInsets.only(left: 210),
          child: TextButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => View_More()));
          }, child: Text("View More>>",style:GoogleFonts.quicksand(color: Colors.blue,fontWeight: FontWeight.bold),))),
        ],
      ),
    );
  }
}
