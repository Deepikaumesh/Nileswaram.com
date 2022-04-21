import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Registrations/Registration_Sub_catagory/Beautyparler_Registration.dart';
import 'package:untitled1/Registrations/Registration_Sub_catagory/Furniture_Registration.dart';
import 'package:untitled1/Registrations/Registration_Sub_catagory/Grocery_Registration.dart';
import 'package:untitled1/Registrations/Registration_Sub_catagory/Hardware_Registration.dart';
import 'package:untitled1/Registrations/Registration_Sub_catagory/Home_Appliance_Registration.dart';
import 'package:untitled1/Registrations/Registration_Sub_catagory/MedicalShop_Registration.dart';
import 'package:untitled1/Registrations/Registration_Sub_catagory/barbershop_Registration.dart';
import 'package:untitled1/Registrations/Registration_Sub_catagory/fruits&veg_Registration.dart';

import '../Dummy/more_test.dart';
import '../Sub_Catagory_Registrations/Furniture_Sub_Catagory.dart';
import '../Sub_Catagory_Registrations/Hotel_Sub_Catagory.dart';
import '../Sub_Catagory_Registrations/Textile_Sub_Catagory.dart';
import 'Registration_Sub_catagory/Hotel_Registration.dart';
import 'Registration_Sub_catagory/Textile_Registration.dart';
import 'Registration_Sub_catagory/hospital_Registration.dart';

class Business_Reg_Catagory extends StatefulWidget {
  const Business_Reg_Catagory({Key? key}) : super(key: key);

  @override
  _Business_Reg_CatagoryState createState() => _Business_Reg_CatagoryState();
}

class _Business_Reg_CatagoryState extends State<Business_Reg_Catagory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Registration Catagory",style: GoogleFonts.prompt(color: Colors.red.shade900),),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () { Navigator.pop(context);},
            child: Icon(
              Icons.arrow_back_rounded,color: Colors.red.shade900,  // add custom icons also
            ),
          ), ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               //SizedBox(height: 20,),
                Card(
                  margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12)
          ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                    }, child:Text("Textile",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                   // margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child:TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Hotel_Sub()));
                    }, child:Text("Hotel",style: GoogleFonts.prompt(fontSize: 21,),))),),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Grocery_Reg_Page()));
                    }, child:Text("Grocery",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                  margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child:Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Furniture_Sub()));
                    }, child:Text("Furniture",style: GoogleFonts.prompt(fontSize: 21,),))),),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Hardware_Reg_Page()));
                    }, child:Text("Hardware",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child:Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Beauty_Parler_RegPage()));
                    }, child:Text("Beauty Parler",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Barbershop_RegPage()));
                    }, child:Text("Barber Shop",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeAplliance_RegPage()));
                    }, child:Text("Home Appliance",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>MedicalShop_RegPage()));
                    }, child:Text("Medical Shop",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child:Center(child:  TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Fruits$Veg_RegPage()));
                    }, child:Text("Fruits and Vegitables",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child:Center(child:  TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>hospital_Reg_Page()));
                    }, child:Text("Hospital",style: GoogleFonts.prompt(fontSize: 21,),)))),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
