import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Dummy/dummy_post.dart';
import 'Dummy/more_test.dart';
import 'Registrations/Ad_Registration.dart';
import 'Registrations/Business_registration.dart';
import 'Registrations/News_and_events_Registration.dart';
import 'Dummy/Test_Post.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
                  "Nileshwaram.com",
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
        height: 20.0,
      ),
      //Now let's Add the button for the Menu
      //and let's copy that and modify it

      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.menu,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("About",style: GoogleFonts.prompt(fontSize: 15,)),
      ),

      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.menu,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("Description",style: GoogleFonts.prompt(fontSize: 15),),
      ),

      ListTile(
        onTap: () {},
        leading: Icon(
          Icons.mobile_friendly_outlined,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("Version",style: GoogleFonts.prompt(fontSize: 15),),
      ),

      ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Business_Registration_Page()));
        },
        leading: Icon(
          Icons.business,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("Business/Shop Registration",style: GoogleFonts.prompt(fontSize: 15)),
      ),

      ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NewsAndEventsReg()));
        },
        leading: Icon(
          Icons.newspaper_rounded,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("News and Event Registration",style: GoogleFonts.prompt(fontSize: 15)),
      ),

      ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AdRegistration()));
        },
        leading: Icon(
          Icons.web_asset_sharp,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("Ad Rgistration",style: GoogleFonts.prompt(fontSize: 15)),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Test_Post()));
        },
        leading: Icon(
          Icons.album_rounded,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("Post Data Test"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormPage()));
        },
        leading: Icon(
          Icons.album_rounded,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("dummy post"),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => test_more()));
        },
        leading: Icon(
          Icons.album_rounded,
          color: Colors.blueGrey.shade900,
        ),
        title: Text("dummy post2"),
      ),
    ]);
  }
}
