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
      appBar: AppBar(title: Text("View More Catagory",style: GoogleFonts.prompt(color: Colors.red.shade900),),
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
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
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
                        height: 80.0,
                        width: 80.0,
                      ),
                      TextButton(onPressed: () {
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>dummy()));
                      }, child: Text("Furniture",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),))

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      new Image.asset(
                        'assets/wrench.png',
                        height: 80.0,
                        width: 80.0,
                      ),
                      TextButton(onPressed: () {}, child: Text("Hardware",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),))
                      // new Text(
                      //   "shop",
                      //   style:
                      //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      // )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      new Image.asset(
                        'assets/makeup.png',
                        height: 80.0,
                        width: 80.0,
                      ),
                      TextButton(onPressed: () {}, child: Text("Beautyparler",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),))

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      new Image.asset(
                        'assets/barber.png',
                        height: 80.0,
                        width: 80.0,
                      ),
                      TextButton(onPressed: () {}, child: Text("Barber Shop",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold),))
                      // new Text(
                      //   "shop",
                      //   style:
                      //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      // )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Padding(
                        padding:EdgeInsets.only(right: 22),
                        child: new Image.asset(
                          'assets/home-appliance.png',
                          height: 80.0,
                          width: 80.0,
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text("Home Appliance",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold,fontSize: 13),))

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: new Image.asset(
                          'assets/pharmacy.png',
                          height: 80.0,
                          width: 80.0,
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text("Hardware",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold,fontSize: 13),))
                      // new Text(
                      //   "shop",
                      //   style:
                      //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      // )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(right: 22),
                        child: new Image.asset(
                          'assets/market.png',
                          height: 80.0,
                          width: 80.0,
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text("Fruts&Vegitables",
                        style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,
                            fontWeight: FontWeight.bold,fontSize: 13),)),

                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(right: 12),

                      child: Image.asset(
                        'assets/market.png',
                        height: 80.0,
                        width: 80.0,
                      ),),
                      TextButton(onPressed: () {}, child: Text("Hardware",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold,fontSize: 13),)),
                      // new Text(
                      //   "shop",
                      //   style:
                      //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                      // )
                    ],
                  ),
                ],
              ),






            ],
          ),
        ),
      ),
    );
  }
}
