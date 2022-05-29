import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Display%20Catagory/Beautyparler_Display.dart';
import 'package:untitled1/Display%20Catagory/FruitsandVeg_Display.dart';
import 'package:untitled1/Display%20Catagory/HomeAppliance_Display.dart';
import 'package:untitled1/Display%20Catagory/MedicalShop_Display.dart';
import 'Display Catagory/ACP_display.dart';
import 'Display Catagory/Accountant_display.dart';
import 'Display Catagory/Acupuncture_therapist_display.dart';
import 'Display Catagory/Ad_Film.dart';
import 'Display Catagory/Advertising_agen.dart';
import 'Display Catagory/Advocate_display.dart';
import 'Display Catagory/Agriculture_seedsy.dart';
import 'Display Catagory/Air_conditioners(industrial)_display.dart';
import 'Display Catagory/Air_conditioners_display.dart';
import 'Display Catagory/Allergist_display.dart';
import 'Display Catagory/Aluminiumfabri.dart';
import 'Display Catagory/Ambulance.dart';
import 'Display Catagory/Anchoring.dart';
import 'Display Catagory/Antiques_display.dart';
import 'Display Catagory/Apartment_display.dart';
import 'Display Catagory/Architect_building_display.dart';
import 'Display Catagory/Art&craft_display.dart';
import 'Display Catagory/Artist_display.dart';
import 'Display Catagory/Arts_college_display.dart';
import 'Display Catagory/Audio_video_Display.dart';
import 'Display Catagory/Autogas_display.dart';
import 'Display Catagory/Automation_Products_display.dart';
import 'Display Catagory/Automobile_body_display.dart';
import 'Display Catagory/Automobile_lubricant_display.dart';
import 'Display Catagory/Automobile_spare_display.dart';
import 'Display Catagory/Awards_Trophy_retaildisplay.dart';
import 'Display Catagory/Awards_display.dart';
import 'Display Catagory/Ayurveda_Doctor_display.dart';
import 'Display Catagory/BabyShop_display.dart';
import 'Display Catagory/Bakery_Productssales_display.dart';
import 'Display Catagory/BarberShop_Display.dart';
import 'Display Catagory/Beautician_training_display.dart';
import 'Display Catagory/Blazers_tie_display.dart';
import 'Display Catagory/Blogger_display.dart';
import 'Display Catagory/Books_Seller_display.dart';
import 'Display Catagory/Borewell_Contractor_display.dart';
import 'Display Catagory/Brain_Profiling_display.dart';
import 'Display Catagory/Brass_Merchants_display.dart';
import 'Display Catagory/Brickmaking_Machine_display.dart';
import 'Display Catagory/Bricks_Country_display.dart';
import 'Display Catagory/Bricks_Flyash_display.dart';
import 'Display Catagory/Builder_Commercial_display.dart';
import 'Display Catagory/Builder_Promoter_display.dart';
import 'Display Catagory/Hardware_Display.dart';
import 'Display Catagory/Hospital_Display.dart';
import 'Display Catagory/agri_Display.dart';
import 'Display Catagory/architect_interior_display.dart';
import 'Display Catagory/architect_landscaping.dart';
import 'Display_Sub_catagory/OfficefurnitureDisplay.dart';



class View_More extends StatefulWidget {
  @override
  View_MoreState createState() => new View_MoreState();
}

class View_MoreState extends State<View_More> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text("View More Category",style: GoogleFonts.prompt(color: Colors.red.shade900),),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () { Navigator.pop(context);},
          child: Icon(
            Icons.arrow_back_rounded,color: Colors.red.shade900, size: 30,
          ),
        ), ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
      //  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Accountant_Display()));
                    }, child: Text("Accountant",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ACP_Display()));
                    }, child: Text("ACP-Exterior Works",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Acupuncture_therapist()));
                    }, child: Text("Acupuncture Therapist",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Ad_Film_Maker()));
                    }, child: Text("Ad Film Maker",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Advertising_agen_Display()));
                    }, child: Text("Advertising Agency",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Advocate_Display()));
                    }, child: Text("Advocate",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Agri_Display()));
                    }, child: Text("Agriculture Machinery",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Agri_seeds_Display()));
                    }, child: Text("Agriculture Seeds",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Airconditioners_Display()));
                    }, child: Text("Air Conditioners(Domestic) Sales & Repair",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Airconditioner_Industrial_Display()));
                    }, child: Text("Air Conditioners(Industrial)Sales&Repair",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),

              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Allergist_Display()));
                    }, child: Text("Allergist",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Aluminiumfabri_Display()));
                    }, child: Text("Aluminium Fabricator",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Ambulance_Display()));
                    }, child: Text("Ambulance & Emergency Service",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Anchoring_Display()));
                    }, child: Text("Anchoring",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),

              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Antiques_Display()));
                    }, child: Text("Antiques Merchanter",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Apartment_Display()));
                    }, child: Text("Apartment (Flats)Sales",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>architect_building_Display()));
                    }, child: Text("Architect - Building Designer",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Architect_landscaping_Display()));
                    }, child: Text("Architect - Landscaping",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Architect_interior_Display()));
                    }, child: Text("Architect - Interior",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Art_craft_Display()));
                    }, child: Text("Art & Craft Supplies",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Artist_Display()));
                    }, child: Text("Artist",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Arts_college_Display()));
                    }, child: Text("Arts College",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Audio_Video_Display()));
                    }, child: Text("Audio Video Visual Media",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Auto_Gas_Display()));
                    }, child: Text("Auto  Gas",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Automation_products_therapist()));
                    }, child: Text("Automation Products & Service",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Automobile_body_Display()));
                    }, child: Text("Automobile Bodyshops",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Automobile_Lubricant_Display()));
                    }, child: Text("Automobile Lubricant Sales",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Automobile_Spare_Display()));
                    }, child: Text("Automobile Spare Parts & Accessories",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
                          Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Awards_Display()));
                    }, child: Text("Awards/Trophies Manufacturer / Wholesale",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Awards_retail_Display()));
                    }, child: Text("Awards  /Trophies Retail Sales",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Ayurveda_Display()));
                    }, child: Text("Ayurveda Doctor",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Babyshop_Display()));
                    }, child: Text("Baby Shop",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BarberShop_Display()));
                    }, child: Text("BarberShop",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BeautyParler_Display()));
                    }, child: Text("Beauty Parler",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Beautician_training_Display()));
                    }, child: Text("Beautician Training",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bakery_Productssales_Display()));
                    }, child: Text("Bakery Products Sales",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Blazers_tie_Display()));
                    }, child: Text("Blazers Tie",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Blogger_Display()));
                    }, child: Text("Blogger",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Books_Seller_Display()));
                    }, child: Text("Books Seller",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Borewell_Contractor_Display()));
                    }, child: Text("Borewell Contractor",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Brain_Profiling_Display()));
                    }, child: Text("Brain Profiling",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Brass_Merchants_Display()));
                    }, child: Text("Brass Merchants",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Brickmaking_Machine_Display()));
                    }, child: Text("Brickmaking Machine",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bricks_Country_Display()));
                    }, child: Text("Bricks Country",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bricks_Flyash_Display()));
                    }, child: Text("Bricks Flyash",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Builder_Commercial_Display()));
                    }, child: Text("Builders Commercial",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Builder_Promoter_Display()));
                    }, child: Text("Builder Promoter",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Books_Seller_Display()));
                    }, child: Text("",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Books_Seller_Display()));
                    }, child: Text("",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),

































              Row(
                children:[
                  Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Icon(Icons.camera)),
                  TextButton(onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Display_Officeurniture_data()));
                }, child: Text("Furniture",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
            ]  ),

              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Hardware_Display()));
                    }, child: Text("Hardware",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),


              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeAppliance_Display()));
                    }, child: Text("Home Apliance",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicalShop_Display()));
                    }, child: Text("Medical Shop",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),
              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Fruits_Veg_Display()));
                    }, child: Text("Fruits & Vegitables",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),

              Row(
                  children:[
                    Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Icon(Icons.camera)),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>hospital_Display()));
                    }, child: Text("Hospital",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),)),
                  ]  ),



            ],
          ),
        ),
      ),
    );
  }
}
