import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Hotel_Sub_Sections/Non_Veg_Catagory.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Hotel_Sub_Sections/Veg_Catagory.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Textile_Sub_Sections/Gents_Section.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Textile_Sub_Sections/Kids_Section.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Textile_Sub_Sections/Ladies_Section.dart';
import 'package:untitled1/Sub_Catagory_Registrations/Textile_Sub_Sections/UnderGarments_Section.dart';

import 'Textile_Sub_Sections/Family_store_Registration.dart';

class Hotel_Sub extends StatefulWidget {
  const Hotel_Sub({Key? key}) : super(key: key);

  @override
  _Hotel_SubState createState() => _Hotel_SubState();
}

class _Hotel_SubState extends State<Hotel_Sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Sub Catagory",style: GoogleFonts.prompt(color: Colors.red.shade900),),backgroundColor: Colors.white,
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
                "assets/restaurant.png",
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Veg_Catagory()));
                  }, child:Text("Veg Hotel",style: GoogleFonts.prompt(fontSize: 21,),)))),

              Card(
                  margin: EdgeInsets.all(30),
                  shape:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12)
                  ),
                  child: Center(child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Non_Veg_Catagory()));
                  }, child:Text("Non Veg Hotel",style: GoogleFonts.prompt(fontSize: 21,),)))),

            ],
          ),
        ),
      ),
    );
  }
}
