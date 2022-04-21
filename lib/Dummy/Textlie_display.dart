import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


//Creating a class user to store the data;
class User {
  final String name;
  final String address;
  final String phone;
  final String blood;

  User({
    required this.name,
    required this.address,
    required this.phone,
    required this.blood,
  });
}

class DisplayTextile extends StatefulWidget {
  @override
  _DisplayTextileState createState() => _DisplayTextileState();
}

class _DisplayTextileState extends State<DisplayTextile> {
//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url = "https://astrasoftware.in/directoryapp/Nileswaram.com/display.php";
    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<User> users = [];
    for (var singleUser in responseData) {
      User user = User(
          name: singleUser["name"].toString(),
          address: singleUser["address"].toString(),
          phone: singleUser["phone"].toString(),
          blood: singleUser["blood"].toString());

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
          title: Text("Http Get Request."),
          leading: Icon(
            Icons.get_app,
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
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      Text(snapshot.data[index].name),
                      Text(snapshot.data[index].address),
                      Text(snapshot.data[index].phone),
                      Text(snapshot.data[index].blood),

                    ],
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
