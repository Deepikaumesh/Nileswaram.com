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

  User({
    // required this.id,
    required this.name,
    required this.address,
  });
}

class News_Display extends StatefulWidget {
  @override
  _News_DisplayState createState() => _News_DisplayState();
}

class _News_DisplayState extends State<News_Display> {
//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url =
        "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/news_Display.php";
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
            "News",
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
                                  color: Colors.white30,
                                  borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 2,
                                    ),
                                ),

                                height:
                                    MediaQuery.of(context).size.height / 2.5,
                                width: MediaQuery.of(context).size.width / 1,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        snapshot.data[index].name,
                                        style: GoogleFonts.lora(
                                            fontSize: 25,
                                            color: Colors.pink.shade700),
                                      ),
                                      Text(
                                        snapshot.data[index].address,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
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
