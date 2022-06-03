import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:url_launcher/url_launcher.dart';

class NonVegHotelDetail extends StatelessWidget {
  final passing_data;

  const NonVegHotelDetail(this.passing_data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade800,
        title: Text(passing_data.name),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 0.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade900),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(passing_data.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                passing_data.address,
                overflow: TextOverflow.ellipsis,
                maxLines: 6,
                style: GoogleFonts.prompt(
                    color: Colors.deepOrange.shade400, fontSize: 15),
              ),
              SizedBox(height: 15,),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () async => !await launch('sms:' + passing_data.phone),
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
                                    onTap: () async => !await launch('sms:' + passing_data.phone),
                                    child: Text(
                                        passing_data.phone)),
                              ],
                            ),
        Row(
                          children: [
                            GestureDetector(
                             // onTap: _launchPhone,
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
                                onTap: () async => !await launch('sms:' + passing_data.mobile),
                                child: Text(
                                    passing_data.mobile)),
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
                              passing_data.website,
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
                                passing_data.email,
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
                            Text("Blood Group:",
                              style: GoogleFonts.prompt(),),
                            SizedBox(width: 5,),
                            Text(passing_data.blood,
                              style: GoogleFonts.prompt(
                                  color: Colors.red.shade900),),
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
                                  onTap: () async => await launch(
                                      "https://wa.me/${passing_data.watsap}?text=Hello"),
                                  child: Image.asset(
                                    "assets/watsap.png",
                                    height: 50,
                                    width: 30,
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              GestureDetector(
                                onTap: () async => !await launch(passing_data.facebook),
                                //_launchfacebook,
                                child: Image.asset(
                                  "assets/facebook.png",
                                  height: 50,
                                  width: 30,
                                ),
                              ),
                            ]),
                            Column(children: [
                              GestureDetector(
                                onTap: () async => !await launch(passing_data.insta),
                                child: Image.asset(
                                  "assets/instagram.png",
                                  height: 50,
                                  width: 30,
                                ),
                              ),
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                10),   color: Colors.grey.shade300,),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text("Other Products:",
                                  style: TextStyle(
                                      fontSize: 17),),
                                Text(
                                  passing_data.other_pro,
                                  style: TextStyle(
                                      color: Colors.teal.shade400,
                                      fontSize: 13),
                                ),
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
                                passing_data.name + passing_data.address),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Location'),
                                Icon(Icons.location_on_rounded),
                              ],
                            )


                        ),
                      ],
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


