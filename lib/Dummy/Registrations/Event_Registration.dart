import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class EventReg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Event Registration",style: GoogleFonts.prompt(color: Colors.red.shade900),),backgroundColor: Colors.white,
    elevation: 0,centerTitle: true,leading: GestureDetector(
    onTap: () { Navigator.pop(context);},
    child: Icon(
    Icons.arrow_back_rounded,color: Colors.red.shade900,  // add custom icons also
    ),),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 100,
          ),
          child: Column(
            children: [
              makeInput(label: "News/Event Title"),
              makeInput(label: "Upload Image "),
              SizedBox(
                height: 50,
                width: 200,
                child:
                ElevatedButton(
                  style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade900),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.red.shade900)
                )
            )
        ), onPressed: () {  },
        child: Text("Submit",style: GoogleFonts.prompt(fontSize: 22),),
            ),
          ),
       ], ),
      ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
