import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Dummy/data.dart';


Future<Data> getDeatils() async{
  final response = await http.get(Uri.parse("https://astrasoftware.in/directoryapp/getdata.php"));
    if(response.statusCode==200)
      {
        return Data.fromjson(jsonDecode(response.body));
      }
    else{
      throw Exception("Unable to fetch data");
    }

}

class GetData extends StatefulWidget {
  const GetData({Key? key}) : super(key: key);

  @override
  _GetDataState createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  late Future<Data> info;

  @override
  void initState(){
    super.initState();
    info = getDeatils();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get data"),),
    //   body:
    // Center(
    //     child:
        // FutureBuilder<Data>(
        //   future: info,
        //   builder: (context,snapshot) {
        //     if(snapshot.hasData)
        //       {
        //           Text("Name : ${snapshot.data!.name}");
        //             Text("Email : ${snapshot.data!.email}");
        //
        //       }else if(snapshot.hasError)
        //         {
        //           return Text('${snapshot.error}');
        //         }
        //
        //   }
        // ),
        // FutureBuilder<Data>(
        //   future:info, // async work
        //   builder: ( context, snapshot) {
        //     if(snapshot.hasData)
        //           return Text('Error: ${snapshot.error}');
        //         else
        //           return Text('Result: ${snapshot.data}');
        //     }
        //
        // )
    //  ),
    );
  }
}
