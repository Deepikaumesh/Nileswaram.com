import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About_Us extends StatelessWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(flex: 2, child: Container(color: Colors.blue.shade400)),
            Expanded(child: Container(color: Colors.white)),
          ],
        ),
        Align(
          alignment: Alignment(0, 0.2),
          child: Container(
            width:MediaQuery.of(context).size.width/1.2,
            height: MediaQuery.of(context).size.height/2.5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 12,
              child: Center(
                child: Column(
                  children:[
                    SizedBox(height: 30,),
                    Image.asset("assets/nileswram.png",height: 70,width: 70,),
                    SizedBox(height: 20,),
                    Text('Nileshwaram.com is a Shop Directory app,where users '
                        'can search and get details of all the local shops in Nileshwaram.',
                      textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
                    Text("www.astrasoftwaresolutions.com",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,),),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/mobile.png",height: 20,width: 20,),
                        SizedBox(width: 12,),
                        Text("+91 0895450639")
                      ],
                    )
                  ],),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
