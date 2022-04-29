import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

//Creating a class user to store the data;
class User {
  // final String id;
  final String name;
  final String address;
  final String phone;
  final String mobile;
  final String watsap;
  final String email;
  final String website;
  final String insta;
  final String facebook;
  final String blood;

  User({
    // required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.mobile,
    required this.watsap,
    required this.email,
    required this.website,
    required this.insta,
    required this.facebook,
    required this.blood,
  });
}

class Display_Kids_data extends StatefulWidget {
  @override
  _Display_Kids_dataState createState() => _Display_Kids_dataState();
}

class _Display_Kids_dataState extends State<Display_Kids_data> {
//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url =
        "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/sub_catagory_Display/kids.php";
    // old  table textile
    // "https://astrasoftware.in/directoryapp/Nileswaram.com/Catagory_Display/Textile/textile_display.php";

    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<User> users = [];
    for (var singleUser in responseData) {
      User user = User(
          //id:  singleUser["id"].toString(),
          name: singleUser["name"].toString(),
          address: singleUser["address"].toString(),
          phone: singleUser["phone"].toString(),
          mobile: singleUser["mobile"].toString(),
          blood: singleUser["blood"].toString(),
          insta: singleUser["insta"].toString(),
          website: singleUser["website"].toString(),
          facebook: singleUser["facebook"].toString(),
          email: singleUser["email"].toString(),
          watsap: singleUser["watsap"].toString());

      //Adding user to the list.
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink.shade800,
          title: Text(
            "Kids Catagory",
            style: GoogleFonts.prompt(fontSize: 22),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: FutureBuilder(
            future: getRequest(),
            builder: (BuildContext ctx, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          color: Colors.red.shade900,
                          strokeWidth: 5,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Data Loading Please Wait!",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (ctx, index) => SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height:
                                    MediaQuery.of(context).size.height / 2.5,
                                width: MediaQuery.of(context).size.width / 1,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children:[
                                            Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: AssetImage('assets/kids.png'),
                                                    fit: BoxFit.fill
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 15,),
                                            Text(
                                              snapshot.data[index].name,
                                              style: GoogleFonts.lora(
                                                  fontSize: 25,
                                                  color: Colors.pink.shade700),
                                            ),
                                        ],),
                                      ),
                                      Text(
                                        snapshot.data[index].address,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400, fontSize: 13),
                                      ),
                                      SizedBox(height: 15,),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/tele.png",
                                            height: 30,
                                            width: 20,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(snapshot.data[index].phone),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/mobile.png",
                                            height: 30,
                                            width: 20,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(snapshot.data[index].mobile),
                                        ],
                                      ),
                                      // Row(
                                      //   children: [
                                      //     Text("Blood Group:"),
                                      //     Text(snapshot.data[index].blood),
                                      //   ],
                                      // ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/internet.png",
                                            height: 20,
                                            width: 18,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            snapshot.data[index].website,
                                            style: GoogleFonts.prompt(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/email.png",
                                            height: 20,
                                            width: 18,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            snapshot.data[index].email,
                                            style: GoogleFonts.prompt(
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            "assets/blood.png",
                                            height: 30,
                                            width: 20,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text("Blood Group:",style: GoogleFonts.prompt(),),
                                          SizedBox(width: 5,),
                                          Text(snapshot.data[index].blood,style: GoogleFonts.prompt(color: Colors.red.shade900),),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                "assets/watsap.png",
                                                height: 50,
                                                width: 30,
                                              ),
                                              Text(snapshot.data[index].watsap),
                                            ],
                                          ),
                                          Column(children: [
                                            Image.asset(
                                              "assets/facebook.png",
                                              height: 50,
                                              width: 30,
                                            ),
                                            Text(snapshot.data[index].facebook),
                                          ]),
                                          Column(children: [
                                            Image.asset(
                                              "assets/instagram.png",
                                              height: 50,
                                              width: 30,
                                            ),
                                            Text(snapshot.data[index].insta),
                                          ]),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
              }
            },
          ),
        ),
      ),
    );
  }
}
//
