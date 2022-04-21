import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Registrations/Business_registration.dart';
import 'package:http/http.dart' as http;

Future<Data> getDetails() async {
  final response = await http.get(Uri.parse(
      "https://astrasoftware.in/directoryapp/Nileswaram.com/display.php"));
  if (response.statusCode == 200) {
    return Data.fromjson(jsonDecode(response.body));
  } else {
    throw Exception("unable to fetch");
  }
}

class GroceryDummyDisplay extends StatefulWidget {
  const GroceryDummyDisplay({Key? key}) : super(key: key);

  @override
  _GroceryDummyDisplayState createState() => _GroceryDummyDisplayState();
}

class _GroceryDummyDisplayState extends State<GroceryDummyDisplay> {
  late Future<Data> info;

  @override
  void initState() {
    super.initState();
    info = getDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder<Data>(
        future: info,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: EdgeInsets.all(35),
              child: Column(
                children: [
                  Text("name: ${snapshot.data!.name.toString()}"),
                  Text("address: ${snapshot.data!.address.toString()}"),
                  Text("phone: ${snapshot.data!.phone.toString()}"),
                  Text("blood: ${snapshot.data!.blood.toString()}"),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return CircularProgressIndicator();
        },
      ),
    ));
  }
}
