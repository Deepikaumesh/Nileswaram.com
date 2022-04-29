import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Carousel/AdCarousel.dart';
import 'package:untitled1/view_more.dart';
import 'About_Us.dart';
import 'Catagory/Catagory_image_buttons.dart';
import 'Display Catagory/news_Display.dart';
import 'Drawer.dart';
import 'Dummy/Searchbar.dart';
import 'Event_carousel.dart';
import 'News_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Nileshwaram.com",
          style: GoogleFonts.aclonica(
            color: Colors.red.shade900,
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.red.shade900),
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey.shade700,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                )),
            label: 'Home',
          ),


          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => View_More()));
                },
                child: Icon(
                  Icons.menu_open_rounded,
                  size: 30,
                )),
            label: 'Catagory',
          ),


          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => About_Us()));
                },
                child: Icon(
                  Icons.menu,
                  size: 30,
                )),
            label: 'About',
          ),
        ],
        currentIndex: _selectedIndex,

      ),




      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Column(
        children: [
          Search_Bar(),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Adcarousel(),
                    Text(
                      "News",
                      style: GoogleFonts.prompt(
                        fontSize: 18,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                    // Carousel(),

                    News(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => News_Display()));
                        },
                        child: Text(
                          "View More News>>",
                          style: GoogleFonts.quicksand(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Select Catagory",
                      style: GoogleFonts.prompt(
                          fontSize: 18, color: Colors.blueGrey.shade900),
                    ),
                    // Carousel(),
                    SizedBox(
                      height: 10,
                    ),
                    CatagoryimageButton(),
                    SizedBox(
                      height: 30,
                    ),
                    // Text(
                    //   "Ads",
                    //   style: GoogleFonts.prompt(
                    //       fontSize: 18, color: Colors.blueGrey.shade700),
                    // ),
                    Text(
                      "Events",
                      style: GoogleFonts.prompt(
                          fontSize: 18, color: Colors.blueGrey.shade900),
                    ),

                    Events_Carousel(),
                    TextButton(
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => View_More()));
                        },
                        child: Text(
                          "View More>>",
                          style: GoogleFonts.quicksand(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
