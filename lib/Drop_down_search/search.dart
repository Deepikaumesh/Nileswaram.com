import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;
import 'package:untitled1/Drop_down_search/user_details.dart';

class Searchbar_Home extends StatefulWidget {
  const Searchbar_Home({Key? key}) : super(key: key);

  @override
  _Searchbar_HomeState createState() => _Searchbar_HomeState();
}

class _Searchbar_HomeState extends State<Searchbar_Home> {
  TextEditingController controller = new TextEditingController();
  List<UserDetails> _searchResult = [];
  List<UserDetails> _userDetails = [];
  final String url =
      // "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/search.php";
      "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/tableconnection.php";

  Future<Null> getUserDetaails() async {
    final response = await http.get(Uri.parse(url));
    final responsejson = json.decode(response.body);
    setState(() {
      for (Map user in responsejson) {
        _userDetails.add(UserDetails.fromJson(user));
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
        backgroundColor: Colors.red.shade900,
        title: Text("Search for shops/business", style: GoogleFonts.prompt()),
        elevation: 0,
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
                            height: 280,
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
                                              height: 5,
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
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Text("mail id:-"),
                                                Text(_userDetails[i].email)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text("website:-"),
                                                Text(_userDetails[i].website)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text("facebook:-"),
                                                Text(_userDetails[i].facebook)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text("Instagram  id:-"),
                                                Text(_userDetails[i].insta)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text("Phone no:-"),
                                                Text(_userDetails[i].phone)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text("Watsap no:-"),
                                                Text(_userDetails[i].watsap)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text("Mobile no:-"),
                                                Text(_userDetails[i].mobile)
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text("Blood group:-"),
                                                Text(_userDetails[i].blood)
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
                            height: 280,
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
                                        height: 5,
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
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text("mail id:-"),
                                          Text(_userDetails[index].email)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text("website:-"),
                                          Text(_userDetails[index].website)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text("facebook:-"),
                                          Text(_userDetails[index].facebook)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text("Instagram  id:-"),
                                          Text(_userDetails[index].insta)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text("Phone no:-"),
                                          Text(_userDetails[index].phone)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text("Watsap no:-"),
                                          Text(_userDetails[index].watsap)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text("Mobile no:-"),
                                          Text(_userDetails[index].mobile)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text("Blood group:-"),
                                          Text(_userDetails[index].blood)
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
}
