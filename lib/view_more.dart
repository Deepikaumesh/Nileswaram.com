import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class View_More extends StatefulWidget {
  @override
  View_MoreState createState() => new View_MoreState();
}

class View_MoreState extends State<View_More> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text("View More Catagory",style: GoogleFonts.prompt(color: Colors.blueGrey),),backgroundColor: Color(0xfffad4d4), elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xfffad4d4),
            borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    new Image.asset(
                      'assets/furniture.png',
                      height: 140.0,
                      width: 140.0,
                    ),
                    TextButton(onPressed: () {}, child: Text("Furniture",style:GoogleFonts.quicksand(color: Colors.pinkAccent,fontWeight: FontWeight.bold),))

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Image.asset(
                      'assets/wrench.png',
                      height: 140.0,
                      width: 140.0,
                    ),
                    TextButton(onPressed: () {}, child: Text("Hardware",style:GoogleFonts.quicksand(color: Colors.teal,fontWeight: FontWeight.bold),))
                    // new Text(
                    //   "shop",
                    //   style:
                    //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                    // )
                  ],
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     new Image.asset(
                //       'assets/pharmacy.png',
                //       height: 90.0,
                //       width: 80.0,
                //     ),
                //     TextButton(onPressed: () {}, child: Text("Medical Shop",style:GoogleFonts.quicksand(color: Colors.deepOrange,fontWeight: FontWeight.bold),))
                //     // new Text(
                //     //   "shop",
                //     //   style:
                //     //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                //     // )
                //   ],
                // ),
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

          ],
        ),
      ),
    );
  }
}
