import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//import 'getdata.dart';

class Furniture_Reg_Page extends StatefulWidget {
  @override
  _Furniture_Reg_PageState createState() => _Furniture_Reg_PageState();
}

class _Furniture_Reg_PageState extends State<Furniture_Reg_Page> {
  TextEditingController name = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController blood = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController mobile = new TextEditingController();
  TextEditingController watsap= new TextEditingController();
  TextEditingController website = new TextEditingController();
  TextEditingController facebook = new TextEditingController();
  TextEditingController insta = new TextEditingController();

  late bool status;
  late String message;
  String serverUrl = "https://astrasoftware.in/directoryapp/Nileswaram.com/Catagory_Registration/Furinuture_Reg.php";

  @override
  void initState() {
    name = TextEditingController();
    address = TextEditingController();
    blood = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    mobile = TextEditingController();
    watsap = TextEditingController();
    website = TextEditingController();
    facebook = TextEditingController();
    insta = TextEditingController();


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
      "email":email.text,
      "mobile":mobile.text,
      "watsap":watsap.text,
      "website":website.text,
      "facebook":facebook.text,
      "insta":insta.text,


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
        email.clear();
        mobile.clear();
        watsap.clear();
        website.clear();
        facebook.clear();
        insta.clear();


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
        decoration: InputDecoration(labelText: "Enter address"),
        keyboardType: TextInputType.text,
      ),
    );
  }
  Widget _buildblood() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: blood,
        decoration: InputDecoration(labelText: "Enter blood"),
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
        keyboardType: TextInputType.phone,
      ),
    );
  }
  Widget _buildemail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: email,
        decoration: InputDecoration(labelText: "Enter email"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildmobile() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: mobile,
        decoration: InputDecoration(labelText: "Enter mobile"),
        keyboardType: TextInputType.phone,
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
  Widget _buildwebsite() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: website,
        decoration: InputDecoration(labelText: "Enter Wesite Address"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildfacebook() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: facebook,
        decoration: InputDecoration(labelText: "Enter facebook Id"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildinsta() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller:insta,
        decoration: InputDecoration(labelText: "Enter Instagram Id"),
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildName(),
              _buildaddress(),
              _buildphone(),
              _buildmobile(),
              _buildwatsap(),
              _buildemail(),
              _buildwebsite(),
              _buildfacebook(),
              _buildinsta(),
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
  late String email;

  Dataa({
    required this.name,
    required this.address,
    required this.phone,
    required this.blood,
    required this.email,
    //required this.id,
  });
  factory Dataa.fromjson(Map<String,dynamic>json)
  {
    return Dataa(
        name:json['name'] ,
        address:json['email'],
        //phone: 'phone',
        blood: 'blood', phone: 'phone',
        email: 'email');
    //id: json['id']);

  }
}



//https://astrasoftware.in/directoryapp/getdata.php