import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//import 'getdata.dart';

class test_more extends StatefulWidget {
  @override
  _test_moreState createState() => _test_moreState();
}

class _test_moreState extends State<test_more> {
  TextEditingController name = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController blood = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  late bool status;
  late String message;
  String serverUrl = "https://astrasoftware.in/directoryapp/more_insert_test.php";

  @override
  void initState() {
    name = TextEditingController();
    address = TextEditingController();
    blood = TextEditingController();
    phone = TextEditingController();

    status = false;
    message = "";

    super.initState();
  }



  Future<void> submitData() async {
    var send = await http.post(Uri.parse(serverUrl), body:
    {
      "name": name.text,
      "address": address.text,
      "blood": blood.text,
      "phone":phone.text,

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
        address.clear();
        blood.clear();
        phone.clear();
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

  Widget _buildaddress() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: address,
        decoration: InputDecoration(labelText: "Enter email"),
        keyboardType: TextInputType.text,
      ),
    );
  }
  Widget _buildphone() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: phone,
        decoration: InputDecoration(labelText: "Enter phone"),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildblood() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: blood,
        decoration: InputDecoration(labelText: "Enter blood group"),
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
              _buildaddress(),
       _buildphone(),
              _buildblood(),

              RaisedButton(
                child: Text("Post"),
                onPressed: () {
                  setState(() {
                  });
                  submitData();
                },
              ),
              Text( status?message:message),

            ],
          ),
        ),
      ),
    );
  }
}
class Dataa {
  //late int id;
  late bool name;
  late bool address;
 late String phone;
  late String blood;

  Dataa({
    required this.name,
    required this.address,
    required this.phone,
    required this.blood,
    //required this.id,
  });
  factory Dataa.fromjson(Map<String,dynamic>json)
  {
    return Dataa(
      name:json['name'] ,
      address:json['email'],
      //phone: 'phone',
      blood: 'blood', phone: 'phone',);
    //id: json['id']);

  }
}



//https://astrasoftware.in/directoryapp/getdata.php