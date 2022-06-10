import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'District_display.dart';
import 'Grama_display.dart';
import 'block_display.dart';
import 'municipality_display.dart';




class Local_Body_Display extends StatelessWidget {
  const Local_Body_Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Local Body ",
            style: GoogleFonts.prompt(color: Colors.red.shade900),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.red.shade900,
              size: 35,// add custom icons also
// add custom icons also
            ),
          ),
        ),
        body: Center(
          child: Column(
            children:[
              SizedBox(height: 50,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.red.shade900,
                    padding: EdgeInsets.symmetric(
                        horizontal: 90, vertical: 18),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Grama_Panchayath_Display()),
                  );
                },
                child: Text("Grama Panchayath",
                  style: GoogleFonts.inter(fontSize: 15),),

              ),


              SizedBox(height: 30,),



              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.red.shade900,
                    padding: EdgeInsets.symmetric(
                        horizontal: 100, vertical: 18),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  block_Display()),
                  );
                },
                child: Text("Block Panchayath",
                  style: GoogleFonts.inter(fontSize: 15),),

              ),

              SizedBox(height: 30,),


              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.red.shade900,
                    padding: EdgeInsets.symmetric(
                        horizontal: 90, vertical: 18),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  District_Panchayath_Display()),
                   );
                },
                child: Text("District Panchayath",
                  style: GoogleFonts.inter(fontSize: 15),),

              ),

              SizedBox(height: 30,),




              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.red.shade900,
                    padding: EdgeInsets.symmetric(
                        horizontal: 120, vertical: 18),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  municipality_Display()),
                  );
                },
                child: Text("Municipality",
                  style: GoogleFonts.inter(fontSize: 15),),

              ),


            ],
          ),
        ),
      ),
    );
  }
}