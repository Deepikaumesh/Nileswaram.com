import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Textile_Sub_Sections/Gents_Section.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Textile_Sub_Sections/Kids_Section.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Textile_Sub_Sections/Ladies_Section.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Textile_Sub_Sections/UnderGarments_Section.dart';

import '../Sub_Catagory_Registrations/Textile_Sub_Sections/Family_store_Registration.dart';
import '../Display Catagory/FamilystoreDisplay.dart';
import 'GentsDisplay.dart';
import 'HomefurnitureDisplay.dart';
import 'KidsDisplay.dart';
import 'LadiesDisplay.dart';
import '../Display Catagory/NonVegHotelDisplay.dart';
import 'OfficefurnitureDisplay.dart';
import 'UndergarmentsDisplay.dart';
import 'VegHotelDisplay.dart';

class Furniture_Sub_Display extends StatefulWidget {
  const Furniture_Sub_Display({Key? key}) : super(key: key);

  @override
  _Furniture_Sub_DisplayState createState() => _Furniture_Sub_DisplayState();
}

class _Furniture_Sub_DisplayState extends State<Furniture_Sub_Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Select Sub Catagory",style: GoogleFonts.prompt(color: Colors.red.shade900),),backgroundColor: Colors.white,
        elevation: 0,centerTitle: true,leading: GestureDetector(
          onTap: () { Navigator.pop(context);},
          child: Icon(
            Icons.arrow_back_rounded,color: Colors.red.shade900,  // add custom icons also
          ),
        ),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/furniture.png",
                height:MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/3,
              ),
              Card(
                  margin: EdgeInsets.all(30),
                  shape:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12)
                  ),
                  child: Center(child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Display_homefurniture_data()));
                  }, child:Text("Home Furnitures",style: GoogleFonts.prompt(fontSize: 21,),)))),

              Card(
                  margin: EdgeInsets.all(30),
                  shape:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12)
                  ),
                  child: Center(child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Display_Officeurniture_data()));
                  }, child:Text("Office Furnitures",style: GoogleFonts.prompt(fontSize: 21,),)))),


            ],
          ),
        ),
      ),
    );
  }
}