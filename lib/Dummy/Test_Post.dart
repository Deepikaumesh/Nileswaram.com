import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//import 'getdata.dart';

class Test_Post extends StatefulWidget {
  @override
  _Test_PostState createState() => _Test_PostState();
}

class _Test_PostState extends State<Test_Post> {
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  late bool status;
  late String message;
  String serverUrl = "https://astrasoftware.in/directoryapp/go.php";

  @override
  void initState() {
    name = TextEditingController();
    email = TextEditingController();
    status = false;
    message = "";

    super.initState();
  }

  Future<void> submitData() async {
    var send = await http.post(Uri.parse(serverUrl), body: {
      "name": name.toString(),
      "email": email.toString(),
    });
    if (send.statusCode == 200) {
      var data = json.decode(send.body);
      var responseMessage = data["message"];
      var responseError = data["error"];
      if (responseError) {
        setState(() {
          status = false;
          message = responseMessage;
        });
      } else {
        name.clear();
        email.clear();
        setState(() {
          status = true;
          message = responseMessage;
        });
      }
    } else {
      setState(() {
        message = "Error:Server error";
        status = false;
      });
    }
  }

  Widget _buildName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: name,
        decoration: InputDecoration(labelText: "Enter name"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: email,
        decoration: InputDecoration(labelText: "Enter email"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              _buildName(),
              _buildEmail(),
              RaisedButton(
                child: Text("Post"),
                onPressed: () {
                  setState(() {
                  });
                  submitData();
                  },
              ),
              Text( status?message:message),
              RaisedButton(
                child: Text("Get data1"),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => GetData()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
