
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'News_Details.dart';

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
            icon: Icon(Icons.arrow_back_rounded,size: 35,),
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
                        child:Card(
                          color: Colors.grey.shade300,
                          margin: EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),),
                          child: ListTile(
                              contentPadding: EdgeInsets.all(10.0),
                              leading: Icon(Icons.newspaper,color: Colors.red.shade900,),
                              title:Text(snapshot.data[index].name, style: GoogleFonts.lora(fontSize: 25, color: Colors.pink.shade700),),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return Detail_Screen_News(snapshot.data[index]);
                                }));
                              }  ),
                        )
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
