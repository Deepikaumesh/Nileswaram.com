import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'Grama_Detail.dart';
import 'block_Detail.dart';







//Creating a class user to store the data;
class User {
  // final String id;
  final String name;
  final String mem_name;
  final String address;
  final String phone;
  final String mobile;
  final String website;
  final String image;

  User({
    // required this.id,
    required this.name,
    required this.mem_name,
    required this.address,
    required this.phone,
    required this.mobile,
    required this.website,
    required this.image,
  });
}



class block_Display extends StatefulWidget {
  @override
  _block_DisplayState createState() => _block_DisplayState();
}

class _block_DisplayState extends State<block_Display> {


//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url ="https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Block_Panchayath_Display.php";



    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<User> users = [];
    for (var singleUser in responseData) {
      User user = User(
        //id:  singleUser["id"].toString(),
        name: singleUser["name"].toString(),
        mem_name: singleUser["mem_name"].toString(),
        address: singleUser["address"].toString(),
        phone: singleUser["phone"].toString(),
        mobile: singleUser["mobile"].toString(),
        website: singleUser["website"].toString(),
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
            "Block Panchayath",
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
                  itemBuilder: (ctx, index) =>
                      Card(
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
                                    return block_Detail(snapshot.data[index]);
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


  void showNoMailAppsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Open Mail App"),
          content: Text("No mail apps installed"),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      },
    );
  }
}

