import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'Textile_Detail.dart';

//Creating a class user to store the data;
class User {
  // final String id;
  final String name;
  final String catagory;
  final String address;
  final String phone;
  final String mobile;
  final String watsap;
  final String email;
  final String website;
  final String insta;
  final String facebook;
  final String blood;
  final String other_pro;
  final String image;

  User({
    // required this.id,
    required this.name,
    required this.catagory,
    required this.address,
    required this.phone,
    required this.mobile,
    required this.watsap,
    required this.email,
    required this.website,
    required this.insta,
    required this.facebook,
    required this.blood,
    required this.other_pro,
    required this.image,
  });
}

class Display_Textile_data extends StatefulWidget {
  @override
  _Display_Textile_dataState createState() =>
      _Display_Textile_dataState();
}

class _Display_Textile_dataState extends State<Display_Textile_data> {
//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url =
        //"https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Catagory_Display/Textile/textiledisplayoriginal.php";
        "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Main_Textile_Display.php";

    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<User> users = [];
    for (var singleUser in responseData) {
      User user = User(
        //id:  singleUser["id"].toString(),
        name: singleUser["name"].toString(),
        catagory: singleUser["catagory"].toString(),
        address: singleUser["address"].toString(),
        phone: singleUser["phone"].toString(),
        mobile: singleUser["mobile"].toString(),
        blood: singleUser["blood"].toString(),
        insta: singleUser["insta"].toString(),
        website: singleUser["website"].toString(),
        facebook: singleUser["facebook"].toString(),
        email: singleUser["email"].toString(),
        watsap: singleUser["watsap"].toString(),
        other_pro: singleUser["other_pro"].toString(),
        image: singleUser["image"].toString(),
      );

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
            "Textile Shops",
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
                  itemBuilder: (ctx, index) => Card(
                    margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: ListTile(
                        contentPadding: EdgeInsets.all(10.0),
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red.shade900),
                            image: DecorationImage(
                              image: NetworkImage(snapshot.data[index].image),
                            ),
                          ),
                        ),
                        title: Text(
                          snapshot.data[index].name,
                          style: GoogleFonts.lora(
                              fontSize: 20, color: Colors.pink.shade700),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Textile_Detail(snapshot.data[index]);
                          }));
                        }),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
