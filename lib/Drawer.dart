import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/About_Us.dart';
import 'package:untitled1/Version.dart';
import 'Dummy/Dummy/DetailscreenS_firstpage.dart';
import 'Dummy/Dummy/test2_frstpage.dart';
import 'Dummy/Registrations/Event_Registration.dart';
import 'Dummy/Registrations/News_Registration.dart';
import 'Registrations/Ad_Registration.dart';
import 'Registrations/Shop_Registration.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage(
                    "assets/nileswram.png",
                  ),
                  // NetworkImage(
                  //   "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                  // ),
                ),
                // SizedBox(
                //   height: 20.0,
                // ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Nileswaram.com",
                    style: GoogleFonts.aclonica(
                      color: Colors.red.shade900,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        //Now let's Add the button for the Menu
        //and let's copy that and modify it

        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => About_Us()));
          },
          leading: Icon(
            Icons.menu,
            color: Colors.blueGrey.shade900,
          ),
          title: Text("About Us",
              style: GoogleFonts.prompt(
                fontSize: 15,
              )),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Version()));
          },
          leading: Icon(
            Icons.mobile_friendly_outlined,
            color: Colors.blueGrey.shade900,
          ),
          title: Text(
            "Version",
            style: GoogleFonts.prompt(fontSize: 15),
          ),
        ),

        // ListTile(
        //   onTap: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => Business_Reg_Catagory()));
        //   },
        //   leading: Icon(
        //     Icons.business,
        //     color: Colors.blueGrey.shade900,
        //   ),
        //   title: Text("Business/Shop Registration",
        //       style: GoogleFonts.prompt(fontSize: 15)),
        // ),
        //
        // ListTile(
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => News_Reg()));
        //   },
        //   leading: Icon(
        //     Icons.newspaper_rounded,
        //     color: Colors.blueGrey.shade900,
        //   ),
        //   title: Text("News Registration",
        //       style: GoogleFonts.prompt(fontSize: 15)),
        // ),
        // ListTile(
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => EventReg()));
        //   },
        //   leading: Icon(
        //     Icons.image,
        //     color: Colors.blueGrey.shade900,
        //   ),
        //   title: Text("Event Registration",
        //       style: GoogleFonts.prompt(fontSize: 15)),
        // ),
        //
        // ListTile(
        //   onTap: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => AdRegistration()));
        //   },
        //   leading: Icon(
        //     Icons.web_asset_sharp,
        //     color: Colors.blueGrey.shade900,
        //   ),
        //   title: Text("Advertaisement Registration",
        //       style: GoogleFonts.prompt(fontSize: 15)),
        // ),
        // ListTile(
        //   onTap: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => Listview()));
        //   },
        //   leading: Icon(
        //     Icons.web_asset_sharp,
        //     color: Colors.blueGrey.shade900,
        //   ),
        //   title: Text("Index Passing",
        //       style: GoogleFonts.prompt(fontSize: 15)),
        // ),

        //
        // ListTile(
        //   onTap: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => Listview2()));
        //   },
        //   leading: Icon(
        //     Icons.web_asset_sharp,
        //     color: Colors.blueGrey.shade900,
        //   ),
        //   title: Text("Index Passing Test2",
        //       style: GoogleFonts.prompt(fontSize: 15)),
        // ),
            ]),
    );
  }
}
