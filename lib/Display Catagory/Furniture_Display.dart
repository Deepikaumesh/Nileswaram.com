import 'dart:convert';

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

class Furniture_Display extends StatefulWidget {
  @override
  _Furniture_DisplayState createState() => _Furniture_DisplayState();
}

class _Furniture_DisplayState extends State<Furniture_Display> {
//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url =
        "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Catagory_Display/Furniture/furniture.php";
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
            "Furniture Shops",
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
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Loading Please Wait",
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
                            padding: EdgeInsets.all(30),
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
                                  Row(
                                    children: [
                                      Text("Name:"),
                                      Text(snapshot.data[index].name),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Address:"),
                                      Text(snapshot.data[index].address),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Phone No:"),
                                      Text(snapshot.data[index].phone),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Mobile No:"),
                                      Text(snapshot.data[index].mobile),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Watsap No:",
                                        style: GoogleFonts.prompt(
                                            fontSize: 15,
                                            color: Colors.red.shade900),
                                      ),
                                      Text(
                                        snapshot.data[index].watsap,
                                        style: GoogleFonts.prompt(
                                            fontSize: 15,
                                            color: Colors.red.shade900),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Email Id:",
                                        style: GoogleFonts.prompt(
                                            fontSize: 15,
                                            color: Colors.red.shade900),
                                      ),
                                      Text(
                                        snapshot.data[index].email,
                                        style: GoogleFonts.prompt(
                                            fontSize: 15,
                                            color: Colors.red.shade900),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Website Address:",
                                          style: GoogleFonts.prompt(
                                              fontSize: 15,
                                              color: Colors.red.shade900)),
                                      Text(
                                        snapshot.data[index].website,
                                        style: GoogleFonts.prompt(
                                            fontSize: 15,
                                            color: Colors.red.shade900),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Instagram Id:",
                                        style: GoogleFonts.prompt(
                                            fontSize: 15,
                                            color: Colors.red.shade900),
                                      ),
                                      Text(
                                        snapshot.data[index].insta,
                                        style: GoogleFonts.prompt(
                                            fontSize: 15,
                                            color: Colors.red.shade900),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Facebook Id:"),
                                      Text(snapshot.data[index].facebook),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("Blood Group:"),
                                      Text(snapshot.data[index].blood),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  //     ListTile(
                  //   title: Text(snapshot.data[index].name),
                  //   subtitle: Text(snapshot.data[index].address),
                  //   trailing: Text(snapshot.data[index].phone),
                  //
                  //   contentPadding: EdgeInsets.only(bottom: 20.0),
                  // ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
//
