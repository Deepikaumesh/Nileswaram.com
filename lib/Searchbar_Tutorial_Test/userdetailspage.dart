import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Home_Page.dart';
import 'datamodel.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;

  UserDetailsPage({required this.user});

  // String userTitle() {
  //   String title = "";
  //   if (user.gender == "Male") {
  //     title = "Mr.";
  //   } else if (user.gender == "Female") {
  //     title = "Ms.";
  //   }
  //   return title;
  // }

  /// this function with data to open mail application ///
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    Color lightPrimary = Colors.white;
    Color darkPrimary = Colors.white;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [lightPrimary, darkPrimary])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            elevation: 0,
          backgroundColor: (lightPrimary),
          leading:IconButton( icon: Icon(Icons.arrow_back_rounded,color: Colors.blueGrey,), onPressed: () {
            Navigator.of(context).pop();
          },)

          ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.0,
              ),
              Center(
                /// We insert user images inside Hero animation to navigating and display image from Home Page to User Details Page. ///
                child: Hero(
                  tag: user.id,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(user.image),
                    radius: 75.0,
                  ),
                ),
              ),
              SizedBox(
                height: 22.0,
              ),
              // Text(
              //   '${userTitle()} ${user.firstName} ${user.lastName}',
              //   style: TextStyle(
              //     fontSize: 25.0,
              //     fontWeight: FontWeight.w700,
              //   ),
              //   textAlign: TextAlign.left,
              // ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                '${user.job}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${user.email}',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  FlatButton(
                    onPressed: () {
                      /// to view mail application as a subject of the mail, and body massage.///
                      customLaunch(
                          'mailto:${user.email}?subject=Contact%20Information&body=Type%20your%20mail%20here');
                    },
                    child: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12.0, bottom: 20.0),
                    child: Text(
                      user.profile,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.0,
                        backgroundColor: Colors.black12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


