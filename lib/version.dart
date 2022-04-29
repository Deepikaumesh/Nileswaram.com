import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Version extends StatelessWidget {
  const Version({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Image.asset("assets/nileswram.png",height: 70,width: 70,),
                    SizedBox(height: 20,),
                    Text('Version: 1.0.0+1',
                      textAlign: TextAlign.center,),
                  ],),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
