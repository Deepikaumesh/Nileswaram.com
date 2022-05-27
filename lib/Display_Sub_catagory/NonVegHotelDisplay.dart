import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:open_mail_app/open_mail_app.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';

final phoneNumber = '+91 9446168657';
final _url = 'https://www.astrasoftwaresolutions.com';

final landphone = '+0467 2283040';
final url = 'sms:$phoneNumber';
final urrl ='sms:$landphone';
final facebook =
    "https://www.facebook.com/dhanesh.aruvapatil";

void _launchfacebook() async {
  if (!await launch(
    facebook,
    forceWebView: false,
    enableJavaScript: true,
  )) throw 'Could not launch ';
}

void _launchPhone() async {
  if (!await launch(
    url,
  )) throw 'Could not launch $_url';
}

void _launchlandPhone() async {
  if (!await launch(
    urrl,
  )) throw 'Could not launch $_url';
}





void openwhatsapp() async {
  var whatsap = "+91 7907334477";
  var whatsapURL_android = "whatsapp://send?phone=" + whatsap + "&text=hello";
  var whatsap_Ios = "https://wa.me/$whatsap?text=${Uri.parse("hello")}";
  // if (Platform.isIOS) {
  //   if (!await launch(
  //     whatsap_Ios,
  //   ))
  //     throw 'Could not launch $_url';
  //   else {
  //     SnackBar(content: new Text("whatsapp no installed"));
  //   }
  // } else {
  if (!await launch(
    whatsapURL_android,
  ))
    throw 'Could not launch ';
  else {
    SnackBar(content: new Text("whatsapp no installed"));
  }
}




//Creating a class user to store the data;
class User {
  // final String id;
  final String name;
  final String address;
  final String phone;
  final String mobile;
  final String watsap;
  final String email;
  final String website;
  final String insta;
  final String facebook;
  final String blood;
  final String other_pro;


  User({
    // required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.mobile,
    required this.watsap,
    required this.email,
    required this.website,
    required this.insta,
    required this.facebook,
    required this.blood,
    required this.other_pro,
  });
}

class Display_NonVeghotel_data extends StatefulWidget {
  @override
  _Display_NonVeghotel_dataState createState() => _Display_NonVeghotel_dataState();
}

class _Display_NonVeghotel_dataState extends State<Display_NonVeghotel_data> {


//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url =
        "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Catagory_Display/hotel/reastaurant.php";
    // old  table textile
    // "https://astrasoftware.in/directoryapp/Nileswaram.com/Catagory_Display/Textile/textile_display.php";

    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);
     var hello= responseData;//(facebook);
   //  print(hello(phoneNumber));
    // print(hello(phoneNumber));
    // // var k =hello(phoneNumber);
    // // print(k);







    //Creating a list to store input data;
    List<User> users = [];
    for (var singleUser in responseData) {
      User user = User(
        //id:  singleUser["id"].toString(),
          name: singleUser["name"].toString(),
          address: singleUser["address"].toString(),
          phone: singleUser["phone"].toString(),
          mobile: singleUser["mobile"].toString(),
          blood: singleUser["blood"].toString(),
          insta: singleUser["insta"].toString(),
          website: singleUser["website"].toString(),
          facebook: singleUser["facebook"].toString(),
          email: singleUser["email"].toString(),
          watsap: singleUser["watsap"].toString(),
          other_pro: singleUser["other_pro"].toString());

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
            "Restaurant",
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
                              color: Colors.blueGrey.shade100,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height:
                            MediaQuery.of(context).size.height / 1.8,
                            width: MediaQuery.of(context).size.width / 1,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children:[
                                        // Container(
                                        //   width: 50,
                                        //   height: 50,
                                        //   decoration: BoxDecoration(
                                        //     shape: BoxShape.circle,
                                        //     image: DecorationImage(
                                        //         image: AssetImage('assets/nonveg.png'),
                                        //         fit: BoxFit.fill
                                        //     ),
                                        //   ),
                                        // ),
                                        // SizedBox(width: 15,),
                                        Text(
                                          snapshot.data[index].name,
                                          style: GoogleFonts.lora(
                                              fontSize: 25,
                                              color: Colors.pink.shade700),
                                        ),
                                      ],),
                                  ),
                                  Text(
                                    snapshot.data[index].address,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 6,
                                    style: GoogleFonts.prompt(
                                        color: Colors.deepOrange.shade400, fontSize: 13),
                                  ),
                                  SizedBox(height: 15,),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: _launchlandPhone,
                                        child: Image.asset(
                                          "assets/tele.png",
                                          height: 30,
                                          width: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      GestureDetector(
                                          onTap: _launchlandPhone,
                                          child: Text(snapshot.data[index].phone)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap:_launchPhone,
                                        child: Image.asset(
                                          "assets/mobile.png",
                                          height: 30,
                                          width: 20,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      GestureDetector(
                                          onTap: _launchPhone,
                                          child: Text(snapshot.data[index].mobile)),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/internet.png",
                                        height: 20,
                                        width: 18,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        snapshot.data[index].website,
                                        style: GoogleFonts.prompt(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/email.png",
                                        height: 20,
                                        width: 18,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      GestureDetector(
                                        onTap: ()async {
                                          var result = await OpenMailApp.openMailApp();
                                          if (!result.didOpen && !result.canOpen) {
                                            showNoMailAppsDialog(context);
                                          } else if (!result.didOpen && result.canOpen) {
                                            showDialog(
                                              context: context,
                                              builder: (_) {
                                                return MailAppPickerDialog(
                                                  mailApps: result.options,
                                                );
                                              },
                                            );
                                          }
                                        },


                                        child: Text(
                                          snapshot.data[index].email,
                                          style: GoogleFonts.prompt(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/blood.png",
                                        height: 30,
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text("Blood Group:",style: GoogleFonts.prompt(),),
                                      SizedBox(width: 5,),
                                      Text(snapshot.data[index].blood,style: GoogleFonts.prompt(color: Colors.red.shade900),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap:()async => await launch(
                                                "https://wa.me/${snapshot.data[index].watsap}?text=Hello"),
                                            //openwhatsapp,
                                            child: Image.asset(
                                              "assets/watsap.png",
                                              height: 50,
                                              width: 30,
                                            ),
                                          ),
                                         // Text(snapshot.data[index].watsap),
                                        ],
                                      ),
                                      Column(children: [
                                        GestureDetector(
                                         // onTap:_launchfacebook,
                                          child: Image.asset(
                                            "assets/facebook.png",
                                            height: 50,
                                            width: 30,
                                          ),
                                        ),
                                       // Text(snapshot.data[index].facebook),
                                      ]),
                                      Column(children: [
                                        Image.asset(
                                          "assets/instagram.png",
                                          height: 50,
                                          width: 30,
                                        ),
                                       // Text(snapshot.data[index].insta),
                                      ]),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 70,
                                    width: 300,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Text("Catagory:",style:TextStyle(fontSize: 17),),
                                          Text(snapshot.data[index].other_pro,style: TextStyle(color: Colors.teal.shade400,
                                              fontSize: 13),
                                          ),
                                          SizedBox(height: 10,),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.red.shade900,
                                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                                          textStyle: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                      onPressed: () => MapsLauncher.launchQuery(
                                          snapshot.data[index].name + snapshot.data[index].address),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Location'),
                                          Icon(Icons.location_on_rounded),
                                        ],
                                      )
                                  ),
                                  // RaisedButton(
                                  //   onPressed: () async => await launch(
                                  //       "https://wa.me/${snapshot.data[index].watsap}?text=Hello"),
                                  //   child: Text('Open Whatsapp'),
                                  // ),
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
//