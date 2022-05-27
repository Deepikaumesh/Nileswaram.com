import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;
import 'package:open_mail_app/open_mail_app.dart';
import 'package:untitled1/Cust_DropdownSearch/user_details.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';


class Cust_Searchbar_Home extends StatefulWidget {
  const Cust_Searchbar_Home({Key? key}) : super(key: key);

  @override
  _Cust_Searchbar_HomeState createState() => _Cust_Searchbar_HomeState();
}

class _Cust_Searchbar_HomeState extends State<Cust_Searchbar_Home> {
  TextEditingController controller = new TextEditingController();
  List<Cust_UserDetails> _searchResult = [];
  List<Cust_UserDetails> _userDetails = [];
  final String url =
      // "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/search.php";
      "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/tableconnection.php";

  Future<Null> getUserDetaails() async {
    final response = await http.get(Uri.parse(url));
    final responsejson = json.decode(response.body);
    setState(() {
      for (Map user in responsejson) {
        _userDetails.add(Cust_UserDetails.fromJson(user));
      }
    });
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    _userDetails.forEach((userDetail) {
      if (userDetail.name.contains(text) ||
          userDetail.address.contains(text) ||
          userDetail.blood.contains(text) ||
          userDetail.phone.contains(text) ||
          userDetail.email.contains(text) ||
          userDetail.mobile.contains(text) ||
          userDetail.watsap.contains(text) ||
          userDetail.website.contains(text) ||
          userDetail.facebook.contains(text) ||
          userDetail.insta.contains(text)) _searchResult.add(userDetail);
    });
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    getUserDetaails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor:  Colors.red.shade900,
        title: Text(
          "Search for Shops/Business",
          style: GoogleFonts.prompt(fontSize: 22),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded,size: 35,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red.shade900,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'search',
                      border: InputBorder.none,
                    ),
                    onChanged: onSearchTextChanged,
                      textCapitalization: TextCapitalization.sentences,


                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: _searchResult.length != 0 || controller.text.isNotEmpty
                  ? ListView.builder(
                      itemCount: _searchResult.length,
                      itemBuilder: (context, i) {
                        return SingleChildScrollView(
                          child: Container(
                            //height: 300,
                            height: MediaQuery.of(context).size.height/2.10,
                            child: Card(
                              child: ListTile(
                                title: Text(_searchResult[i].name,
                                    style: GoogleFonts.prompt(
                                        color: Colors.red.shade900,
                                        fontSize: 18)),
                                  subtitle: Container(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Address:-",
                                                ),
                                                Flexible(
                                                    child: Text(
                                                      _userDetails[i].address,
                                                      maxLines: 3,
                                                    ))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("mail id:-"),
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
                                                    child: Text(_userDetails[i].email))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("website:-"),
                                                GestureDetector(
                                                    onTap: () async => !await launch(_userDetails[i].website),
                                                    child: Text(_userDetails[i].website))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("facebook:-"),
                                                GestureDetector(
                                                    onTap: () async => !await launch(_userDetails[i].facebook),
                                                    child: Text(_userDetails[i].facebook,style: TextStyle(fontSize: 12),))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("Instagram  id:-"),
                                                GestureDetector(
                                                    onTap: () async => !await launch(_userDetails[i].insta),
                                                    child: Text(_userDetails[i].insta,style: TextStyle(fontSize: 12),))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("Phone no:-"),
                                                GestureDetector(
                                                    onTap: () async => !await launch('sms:' + _userDetails[i].phone),
                                                    child: Text(_userDetails[i].phone))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("Watsap no:-"),
                                                GestureDetector(
                                                    onTap: () async => await launch(
                                                        "https://wa.me/${_userDetails[i].watsap}?text=Hello"),

                                                    child: Text(_userDetails[i].watsap))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("Mobile no:-"),
                                                GestureDetector(
                                                    onTap: () async => !await launch('sms:' + _userDetails[i].mobile),
                                                    child: Text(_userDetails[i].mobile))
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("Blood group:-"),
                                                Text(_userDetails[i].blood)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text("View Location:-"),
                                                GestureDetector(
                                                    onTap: (){
                                                      MapsLauncher.launchQuery(
                                                         _userDetails[i].name +  _userDetails[i].address);
                                                    },
                                                    child: Icon(Icons.location_on)),
                                              ],
                                            ),

                                          ],
                                        ),
                                      )
                                    // leading: SingleChildScrollView(
                                    //   child: Container(
                                    //       child: Column(
                                    //     children: [
                                    //       Text(_userDetails[index].email),
                                    //       // Text(_userDetails[index].watsap),
                                    //       // Text(_userDetails[index].phone),
                                    //       // Text(_userDetails[index].address),
                                    //     ],
                                    //   )),
                                    // ),
                                    // subtitle: Container(
                                    //   child: Column(
                                    //     children: [
                                    //       Text(_userDetails[index].address,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].email,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].watsap,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].phone,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].mobile,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].website,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].facebook,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].insta,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].blood,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //
                                    //
                                    //     ],
                                    //   ),
                                    // ),
                                  )
                                // trailing: Text(_userDetails[i].phone),
                                // leading: SingleChildScrollView(
                                //   child: Container(
                                //       child: Column(
                                //     children: [
                                //       Text(_userDetails[i].email),
                                //       Text(_userDetails[i].watsap),
                                //       Text(_userDetails[i].phone),
                                //       Text(_userDetails[i].address),
                                //     ],
                                //   )),
                                // ),
                                // subtitle:   Container(
                                //   child: Column(
                                //     children:[
                                //       Text(_userDetails[i].address,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                //       Text(_userDetails[i].email,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18)),
                                //       Text(_userDetails[i].watsap,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                //       Text(_userDetails[i].phone,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                //       Text(_userDetails[i].mobile,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                //       Text(_userDetails[i].website,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18)),
                                //       Text(_userDetails[i].facebook,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18)),
                                //       Text(_userDetails[i].insta,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18)),
                                //       Text(_userDetails[i].blood,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18)),
                                //
                                //  ] ),
                                // ),
                              ),

                              //   )
                            ),
                          ),
                        );
                      },
                    )
                  : ListView.builder(
                      itemCount: _userDetails.length,
                      itemBuilder: (context, index) {
                        return SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height/2.10,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: ListTile(
                                title: Text(
                                  _userDetails[index].name,
                                  style: GoogleFonts.prompt(
                                      color: Colors.red.shade900, fontSize: 18),
                                ),

                                subtitle: Container(
                                    child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Address:-",
                                          ),
                                          Flexible(
                                              child: Text(
                                            _userDetails[index].address,
                                            maxLines: 3,
                                          ))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text("mail id:-"),
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
                                              child: Text(_userDetails[index].email))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text("website:-"),
                                          GestureDetector(
                                              onTap: () async => !await launch(_userDetails[index].website),
                                              child: Text(_userDetails[index].website))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text("facebook:-"),
                                          GestureDetector(
                                              onTap: () async => !await launch(_userDetails[index].facebook),
                                              child: Text(_userDetails[index].facebook,style: TextStyle(fontSize: 12),))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text("Instagram  id:-"),
                                          GestureDetector(
                                              onTap: () async => !await launch(_userDetails[index].insta),
                                              child: Text(_userDetails[index].insta,style: TextStyle(fontSize: 12),))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text("Phone no:-"),
                                          GestureDetector(
                                              onTap: () async => !await launch('sms:' + _userDetails[index].phone),
                                              child: Text(_userDetails[index].phone))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text("Watsap no:-"),
                                          GestureDetector(
                                              onTap: () async => await launch(
                                                  "https://wa.me/${_userDetails[index].watsap}?text=Hello"),

                                              child: Text(_userDetails[index].watsap))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text("Mobile no:-"),
                                          GestureDetector(
                                              onTap: () async => !await launch('sms:' + _userDetails[index].mobile),
                                              child: Text(_userDetails[index].mobile))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text("Blood group:-"),
                                          Text(_userDetails[index].blood)
                                        ],
                                      ),
                                      SizedBox(height: 15,),
                                      Row(
                                        children: [
                                          Text("View Location:-"),
                                          GestureDetector(
                                              onTap: (){
                                                MapsLauncher.launchQuery(
                                                    _userDetails[index].name +  _userDetails[index].address);
                                              },
                                              child: Icon(Icons.location_on)),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                                    // leading: SingleChildScrollView(
                                    //   child: Container(
                                    //       child: Column(
                                    //     children: [
                                    //       Text(_userDetails[index].email),
                                    //       // Text(_userDetails[index].watsap),
                                    //       // Text(_userDetails[index].phone),
                                    //       // Text(_userDetails[index].address),
                                    //     ],
                                    //   )),
                                    // ),
                                    // subtitle: Container(
                                    //   child: Column(
                                    //     children: [
                                    //       Text(_userDetails[index].address,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].email,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].watsap,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].phone,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].mobile,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].website,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].facebook,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].insta,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //       Text(_userDetails[index].blood,style: GoogleFonts.prompt(color: Colors.blue.shade900,fontSize: 18),),
                                    //
                                    //
                                    //     ],
                                    //   ),
                                    // ),
                                    ),
                              ),
                            ),
                          ),
                        );
                      }))
        ],
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
