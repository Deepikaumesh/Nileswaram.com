import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'New_News_Display.dart';


class News_Container extends StatefulWidget {
  @override
  News_ContainerState createState() => new News_ContainerState();
}

class News_ContainerState extends State<News_Container> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        decoration: BoxDecoration(
          //  color: Color(0xfffad4d4),
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        height: 100,
        width: 340,
        child: Column(
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Image.asset(
          'assets/read.png',
          height: 75.0,
          width: 75.0,
        ),


        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>New_News_Display()));
          },
          child: Text(
            "Read News>>",
            style: GoogleFonts.quicksand(
                fontSize: 20,
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold),
          ),
        )

    ]
    ,
    )
    ,
    ],),
    );
  }
}
