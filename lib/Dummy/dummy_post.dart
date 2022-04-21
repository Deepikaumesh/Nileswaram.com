import 'dart:convert';
import 'package:flutter/material.dart';
import 'InputDeco_design.dart';
import 'package:http/http.dart' as http;
class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}
class _FormPageState extends State<FormPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();
 // final _formKey = GlobalKey<FormState>();
  //final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  // @override
  // void initState() {
  //   _name = TextEditingController();
  //   _email = TextEditingController();
  //   _phone = TextEditingController();
  //   _password= TextEditingController();
  //   _confirmpassword = TextEditingController();

  //
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
           // key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  child: Image.network("https://protocoderspoint.com/wp-content/uploads/2020/10/PROTO-CODERS-POINT-LOGO-water-mark-.png"),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    controller: _name,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Full Name"),
                    // validator: (String value){
                    //   if(value.isEmpty)
                    //   {
                    //     return "Please enter name";
                    //   }
                    //   return null;
                    // },
                    // onSaved: (String name){
                    // },
                    // validator: (value) {
                    //   if (value?.isEmpty ?? true) {
                    //     return 'Please Enter Name';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   _name = value as TextEditingController;
                    // },




                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.email,"Email"),
                    // validator: (String value){
                    //   if(value.isEmpty)
                    //   {
                    //     return "Please enter  email";
                    //   }
                    //   if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
                    //   {
                    //     return "Please enter valid email";
                    //   }
                    //   return null;
                    // },
                    // onSaved: (String email){
                    // },
                    // validator: (value) {
                    //   if (value?.isEmpty ?? true) {
                    //     return 'Please Enter Name';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   _email = value as TextEditingController;
                    // },

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: _phone,
                    keyboardType: TextInputType.number,
                    decoration:buildInputDecoration(Icons.phone,"Phone No"),
                    // validator: (value){
                    //   if(value.isEmpty)
                    //   {
                    //     return "Please enter  phone";
                    //   }
                    //   if(value.length < 9)
                    //   {
                    //     return "Please enter valid phone";
                    //   }
                    //   return null;
                    // },
                    // onSaved: (String phone){
                    // },
                    // validator: (value) {
                    //   if (value?.isEmpty ?? true) {
                    //     return 'Please Enter Name';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   _phone = value as TextEditingController;
                    // },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: _password,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Password"),
                    // validator: (String value){
                    //   if(value.isEmpty)
                    //   {
                    //     return "Please enter password";
                    //   }
                    //   return null;
                    // },
                    // validator: (value) {
                    //   if (value?.isEmpty ?? true) {
                    //     return 'Please Enter Name';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   _password = value as TextEditingController;
                    // },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: _confirmpassword,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Confirm Password"),
                    // validator: (String value){
                    //   if(value.isEmpty)
                    //   {
                    //     return "Please enter re-password";
                    //   }
                    //   if(_password.text != _confirmpassword.text)
                    //   {
                    //     return "Password Do not match";
                    //   }
                    //   return null;
                    // // },
                    // validator: (value) {
                    //   if (value?.isEmpty ?? true) {
                    //     return 'Please Enter Name';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   _confirmpassword = value as TextEditingController;
                    // },
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: (){
                      // if(_formKey.currentState.validate())
                      // {
                      setState(() {

                      });
                        RegistrationUser();
                        //print("Successful");
                      // }else
                      // {
                      //   print("Unsuccessfull");
                      // }

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue,width: 2)
                    ),
                    textColor:Colors.white,child: Text("Submit"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future RegistrationUser()  async{
    // url to registration php script
    var APIURL = "https://astrasoftware.in/directoryapp/dummy/registration.php";
    //json maping user entered details
    Map mapeddate ={
      'name':_name.text,
      'email':_email.text,
      'phone':_phone.text,
      'password':_password.text
    };
    print("json data:${mapeddate}");
       //send  data using http post to our php code
    http.Response reponse = await http.post(Uri.parse(APIURL),body: mapeddate);
    //getting response from php code, here
    var data = jsonDecode(reponse.body);
    print("DATA: ${data}");
  }
}
