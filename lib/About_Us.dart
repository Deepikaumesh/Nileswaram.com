import 'package:open_mail_app/open_mail_app.dart';

import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _url = 'https://www.astrasoftwaresolutions.com';
//final Uri _url = Uri.parse('https://www.astrasoftwaresolutions.com');
final phoneNumber = '+91 0895450639';
final url = 'sms:$phoneNumber';
final facebook =
    "https://www.facebook.com/astrasoftwaresolutions/?_ga=2.205114320.1569442231.1651966123-973336704.1651966123";
final instagram =
    "https://www.instagram.com/astrasoft_official/?igshid=YmMyMTA2M2Y=&_ga=2.237618880.1569442231.1651966123-973336704.1651966123";

void openwhatsapp() async {
  var whatsap = "+91 9895450639";
  var whatsapURL_android = "whatsapp://send?phone=" + whatsap + "&text=hello";
  var whatsap_Ios = "https://wa.me/$whatsap?text=${Uri.parse("hello")}";
  if (Platform.isIOS) {
    if (!await launch(
      whatsap_Ios,
    ))
      throw 'Could not launch $_url';
    else {
      SnackBar(content: new Text("whatsapp no installed"));
    }
  } else {
    if (!await launch(
      whatsapURL_android,
    ))
      throw 'Could not launch $_url';
    else {
      SnackBar(content: new Text("whatsapp no installed"));
    }
  }
}

void _launchPhone() async {
  if (!await launch(
    url,
  )) throw 'Could not launch $_url';
}

void _launchfacebook() async {
  if (!await launch(
    facebook,
    forceWebView: false,
    enableJavaScript: true,
  )) throw 'Could not launch $_url';
}

void _launchinstagram() async {
  if (!await launch(
    instagram,
    forceWebView: false,
    enableJavaScript: true,
  )) throw 'Could not launch $_url';
}

void _launchUrl() async {
  if (!await launch(
    _url, forceWebView: false,
    //forceSafariVC: false,
    enableJavaScript: true,
  )) throw 'Could not launch $_url';
}

class About_Us extends StatefulWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  State<About_Us> createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(flex: 2, child: Container(color: Colors.blue.shade400)),
            Expanded(child: Container(color: Colors.white)),
          ],
        ),
        Align(
          alignment: Alignment(0, 0.2),
          child: Container(
            width: MediaQuery.of(context).size.width / 1.1,
            height: MediaQuery.of(context).size.height / 1.6,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 12,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      "assets/nileswram.png",
                      height: 70,
                      width: 70,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        'Nileshwaram.com is a Shop Directory app,where users '
                        'can search and get details of all the local shops in Nileshwaram.In addition,customers can find news and '
                        'other events in Nileshwaram City through this App.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextButton(
                        onPressed: _launchUrl,
                        //  _launchUrl;

                        child: Text(
                          "www.astrasoftwaresolutions.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset(
                        //   "assets/mobile.png",
                        //   height: 20,
                        //   width: 20,
                        // ),
                        // SizedBox(
                        //   width: 12,
                        // ),
                        // Image.asset(
                        //   "assets/chat.png",
                        //   height: 20,
                        //   width: 20,
                        // ),
                        // SizedBox(
                        //   width: 12,
                        // ),
                        TextButton(
                          onPressed: _launchPhone,
                          child: Text("+91 0895450639"),
                        )
                        //
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: openwhatsapp,
                            child: Image.asset(
                              "assets/watsap.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                          GestureDetector(
                            onTap: _launchinstagram,
                            child: Image.asset(
                              "assets/instagram.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                          GestureDetector(
                            onTap: _launchfacebook,
                            child: Image.asset(
                              "assets/facebook.png",
                              height: 35,
                              width: 35,
                            ),
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
                            child: Image.asset(
                              "assets/email.png",
                              height: 35,
                              width: 35,
                            ),
                          ),

                        ]),
                    // RaisedButton(
                    //   child: Text("Open Mail App"),
                    //   onPressed: () async {
                    //     var result = await OpenMailApp.openMailApp();
                    //     if (!result.didOpen && !result.canOpen) {
                    //       showNoMailAppsDialog(context);
                    //     } else if (!result.didOpen && result.canOpen) {
                    //       showDialog(
                    //         context: context,
                    //         builder: (_) {
                    //           return MailAppPickerDialog(
                    //             mailApps: result.options,
                    //           );
                    //         },
                    //       );
                    //     }
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
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
