import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/Carousel/AdCarousel.dart';
import '../New_News_Container/News_Container.dart';
import '../Service/Service_Container.dart';
import 'About_Us.dart';
import '../Carousel/Event_Carousel.dart';
import '../Catagory/Catagory_image_buttons.dart';
import '../Cust_DropdownSearch/Searchbar.dart';
import '../Display_Other_Catagory/Public_Tourist_Local_Display_Container.dart';
import '../Display_Serachable_Catagory/Second_Listview_Search.dart';
import 'Drawer.dart';



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
                      context, MaterialPageRoute(builder: (context) => Display_Searchable_Catagory()));
                },
                child: Icon(
                  Icons.menu_open_rounded,
                  size: 30,
                )),
            label: 'Category',
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


          Cust_Search_Bar(),



          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Adcarousel(),


                    SizedBox(height:20 ,),


                    Text(
                      "News",
                      style: GoogleFonts.prompt(
                        fontSize: 18,
                        color: Colors.blueGrey.shade900,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  //  News_Display(),

                    News_Container(),
                    SizedBox(
                      height: 15,
                    ),


                    Text(
                      "Select Category",
                      style: GoogleFonts.prompt(
                          fontSize: 18, color: Colors.blueGrey.shade900),
                    ),
                    // Carousel(),
                    SizedBox(
                      height: 10,
                    ),


                    CatagoryimageButton(),


                    SizedBox(
                      height: 40,
                    ),
                    // Text(
                    //   "Ads",
                    //   style: GoogleFonts.prompt(
                    //       fontSize: 18, color: Colors.blueGrey.shade700),
                    // ),
                    Text(
                      "Other Catagory",
                      style: GoogleFonts.prompt(
                          fontSize: 18, color: Colors.blueGrey.shade900),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Public_Tourist_Local_Display_Container(),
                    Text(
                      "Services",
                      style: GoogleFonts.prompt(
                          fontSize: 18, color: Colors.blueGrey.shade900),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Service_Container(),

                    SizedBox(height: 20,),
                    Text(
                      "Events",
                      style: GoogleFonts.prompt(
                          fontSize: 18, color: Colors.blueGrey.shade900),
                    ),

                  //  EventDisplay(),


                    CustEventDisplay(),


                    //
                    // TextButton(onPressed: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>Read_More()));
                    // }, child: Text("read more"))

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
