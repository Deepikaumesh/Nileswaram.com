import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Display Catagory/Grocery_display.dart';
import '../Display Catagory/FamilystoreDisplay.dart';
import '../Display Catagory/NonVegHotelDisplay.dart';
import '../Display_Serachable_Catagory/Second_Listview_Search.dart';

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
       //  color: Color(0xfffad4d4),
        // color: Colors.blueGrey.shade100,
        color: Colors.teal.shade100,
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

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Display_Familystore_data()));
                    },
                    child: new Image.asset(
                      'assets/cloth.png',
                      height: 80.0,
                      width: 80.0,
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Display_Familystore_data()));
  }, child: Text("Textile",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),))

  ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Display_NonVeghotel_data()));

                    },
                    child: new Image.asset(
                      'assets/restaurant.png',
                      height: 80.0,
                      width: 80.0,
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Display_NonVeghotel_data()));
                  }, child: Text("Restaurant",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery_Display()));
                    } ,
                    child: new Image.asset(
                      'assets/grow1.png',
                      height: 90.0,
                      width: 80.0,
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Grocery_Display()));
                  }, child: Text("Grocery",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),))
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 210),
          child: TextButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Display_Searchable_Catagory()));
          }, child: Text("View More>>",style:GoogleFonts.quicksand(color: Colors.blue,fontWeight: FontWeight.bold),))),
        ],
      ),
    );
  }
}
