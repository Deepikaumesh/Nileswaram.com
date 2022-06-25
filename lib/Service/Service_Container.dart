import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Service_display.dart';

class Service_Container extends StatefulWidget {
  @override
  Service_ContainerState createState() => new Service_ContainerState();
}

class Service_ContainerState extends State<Service_Container> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      decoration: BoxDecoration(
          //  color: Color(0xfffad4d4),
          color: Colors.orange.shade100,
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      height: 100,
      width: 340,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/cust_serv.png',
                height: 75.0,
                width: 75.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Service_Display()));
                },
                child: Text(
                  "View Services>>",
                  style: GoogleFonts.quicksand(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
