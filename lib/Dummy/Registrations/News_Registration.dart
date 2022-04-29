import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

//import 'getdata.dart';

class News_Reg extends StatefulWidget {
  @override
  _News_RegState createState() => _News_RegState();

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Alert!!"),
          content: new Text("You are awesome!"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class _News_RegState extends State<News_Reg> {
  TextEditingController name = new TextEditingController();
  TextEditingController address = new TextEditingController();


  late bool status;
  late String message;

  //String serverUrl = "https://astrasoftware.in/directoryapp/Nileswaram.com/more_insert_test.php";
  String serverUrl =
      "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/News_Reg.php";

  @override
  void initState() {
    name = TextEditingController();
    address = TextEditingController();

    status = false;
    message = "";

    super.initState();
  }

  Future<void> submitData() async {
    var send = await http.post(Uri.parse(serverUrl), body: {
      "name": name.text,
      "address": address.text,


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
        decoration: new InputDecoration(
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal)
            ),
          labelText: 'News title',
           ),
        keyboardType: TextInputType.text,
      )
    );
  }

  Widget _buildaddress() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: TextField(
          controller: address,
          decoration: new InputDecoration(
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal)
            ),
            labelText: 'News Description',
          ),
          keyboardType: TextInputType.multiline,
          maxLines: 15,
        )
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "News Registration",
          style: GoogleFonts.prompt(color: Colors.red.shade900),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.red.shade900, // add custom icons also
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                _buildName(),
                SizedBox(height: 15,),
                _buildaddress(),

                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  shape: StadiumBorder(),
                  color: Colors.red.shade900,
                  child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.prompt(
                            color: Colors.white, fontSize: 25),
                      )),
                  onPressed: () {
                    setState(() {});
                    submitData();
                    //_showDialog(context);
                  },
                ),
                Text(status ? message : message),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Alert!!"),
          content: new Text(status ? message : message),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class Dataa {
  //late int id;
  late bool name;
  late bool address;
  late String phone;
  late String blood;
  late String email;

  Dataa({
    required this.name,
    required this.address,
    required this.phone,
    required this.blood,
    required this.email,
    //required this.id,
  });

  factory Dataa.fromjson(Map<String, dynamic> json) {
    return Dataa(
        name: json['name'],
        address: json['email'],
        //phone: 'phone',
        blood: 'blood',
        phone: 'phone',
        email: 'email');
    //id: json['id']);
  }
}
