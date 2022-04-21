import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Business_Registration_Page extends StatefulWidget {
  @override
  _Business_Registration_PageState createState() => _Business_Registration_PageState();
}

class _Business_Registration_PageState extends State<Business_Registration_Page> {
  TextEditingController catagory = new TextEditingController();
  TextEditingController  name= new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController watsap = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController phone_second = new TextEditingController();
  TextEditingController blood = new TextEditingController();
  late bool status;
  late String message;
  String serverUrl = "https://astrasoftware.in/directoryapp/business_catagory_reg.php";

  @override
  void initState() {
    catagory = TextEditingController();
    name = TextEditingController();
    address = TextEditingController();
    watsap = TextEditingController();
    phone = TextEditingController();
    phone_second = TextEditingController();
    blood = TextEditingController();

    status = false;
    message = "";

    super.initState();
  }

  Future<void> submitData() async {
    var send = await http.post(Uri.parse(serverUrl), body: {
      "catagory": catagory.text,
      "name": name.text,
      "address": address.text,
      "watsap": watsap.text,
      "phone": phone.text,
      "phone_second": phone_second.text,
      "blood": blood.text,
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
        catagory.clear();
        name.clear();
        address.clear();
        watsap.clear();
        phone.clear();
        phone_second.clear();
        blood.clear();


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

  Widget _buildcatagory() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: catagory,
        decoration: InputDecoration(labelText: "Enter Business Catagory"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildname() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: name,
        decoration: InputDecoration(labelText: "Enter Business Name"),
        keyboardType: TextInputType.text,
      ),
    );
  }
  Widget _buildaddress() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: address,
        decoration: InputDecoration(labelText: "Enter Business Address"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildwatsap() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: watsap,
        decoration: InputDecoration(labelText: "Enter Watsap Number"),
        keyboardType: TextInputType.number,
      ),
    );
  }
  Widget _buildphone(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: phone,
        decoration: InputDecoration(labelText: "Enter Phone Number"),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildphone_second() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: phone_second,
        decoration: InputDecoration(labelText: "Enter Second Phone "),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildblood() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: blood,
        decoration: InputDecoration(labelText: "Enter Blood Group"),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildcatagory(),
            _buildname(),
            _buildaddress(),
            _buildwatsap(),
            _buildphone(),
            _buildphone_second(),
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
    );
  }
}
class Data {
  //late int id;
  late String catagory;
  late String name;
  late String address;
  late String watsap;
  late String phone;
  late String phone_second;
  late String blood;


  Data({
    required this.name,
    required this.catagory,
    required this.address,
    required this.watsap,
    required this.phone_second,
    required this.phone,
    required this.blood,
    //required this.id,
  });
  factory Data.fromjson(Map<String,dynamic>json)
  {
    return Data(
      catagory:json['catagory'] ,
      name:json['name'],
    address:json['address'] ,
    watsap:json['watsap'],
    phone:json['phone'] ,
    phone_second:json['phone_second'],
  blood:json['blood'] ,);



    //id: json['id']);
  }
}

//https://astrasoftware.in/directoryapp/getdata.php