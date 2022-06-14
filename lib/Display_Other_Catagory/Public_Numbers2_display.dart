import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;


import 'Public_Numbers2_Detail.dart';




class Public_Numbers_Display_with_searchbar extends StatefulWidget {
  const Public_Numbers_Display_with_searchbar({Key? key}) : super(key: key);

  @override
  _Public_Numbers_Display_with_searchbarState createState() => _Public_Numbers_Display_with_searchbarState();
}

class _Public_Numbers_Display_with_searchbarState extends State<Public_Numbers_Display_with_searchbar> {


  List<Note> _notes = [];
  List<Note> _notesForDisplay =[];
  Future <List<Note>> fetchNotes() async{
    var url ="https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Public_Numbers_Display2.php";
    var response = await http.get(Uri.parse(url));


    List <Note> notes = [];


    if (response.statusCode ==200) {
      var notesjson =json.decode(response.body);
      for(var notejson in notesjson){
        notes.add(Note.fromJson(notejson));
      }
    }return notes;
  }


  @override
  void initState(){
    fetchNotes().then((value) {
      setState(() {
        _notes.addAll(value);
        _notesForDisplay = _notes;
      });

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Public Numbers",style: GoogleFonts.prompt(color: Colors.red.shade900),),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () { Navigator.pop(context);},
            child: Icon(
              Icons.arrow_back_rounded,color: Colors.red.shade900, size: 30,
            ),
          ), ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return index == 0 ? _searchBar() :_listitem(index-1);

          },
          itemCount: _notesForDisplay.length+1,
        )
    );
  }

  _searchBar(){
    return Padding(padding: EdgeInsets.all(30.0),
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(40),

          ),
          hintText: 'Search ....',
        ),
        // decoration: InputDecoration(
        //     prefixIcon:Icon(Icons.search),
        //     hintText: 'Search Catagory....',
        //   border: InputBorder.none,
        // ),
        onChanged: (text) {
          text= text.toLowerCase();
          setState(() {
            _notesForDisplay = _notes.where((note) {
              var name=note.name.toLowerCase();
              return name.contains(text);
            }).toList();
          });
        },
      ),
    );
  }


  _listitem(index){

    return   Card(
      elevation: 5,
      color: Colors.grey.shade200,
      margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListTile(
          contentPadding: EdgeInsets.all(10.0),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.red.shade900),
              image: DecorationImage(
                image: NetworkImage(_notesForDisplay[index].image),
              ),
            ),
          ),
          title: Text(_notesForDisplay[index].name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lora(
                fontSize: 15, color: Colors.pink.shade700),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return Public_Numbers2_Detail(_notesForDisplay[index]);
                }
                )
            );
          }
      ),
    );
  }
}






List<Note> userModelFromJson(String str) => List<Note>.from(json.decode(str).map((x) => Note.fromJson(x)));

String userModelToJson(List<Note> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Note {
  Note({
    required this.name,
    required this.address,
    required this.phone,
    required this.mobile,
    required this.website,
    required this.image,
  });


  final String name;
  final String address;
  final String phone;
  final String mobile;
  final String website;
  final String image;

  factory Note.fromJson(Map<String, dynamic> json) => Note(
    name: json["name"],
    image: json["image"],
    address: json["address"],
    phone: json["phone"],
    mobile: json["mobile"],
    website: json["website"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image":image,
    "address": address,
    "phone": phone,
    "mobile": mobile,
    "website": website,

  };
}








// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;
//
// import 'Public_Numbers2_Detail.dart';
// import 'Public_Organisation_Detail.dart';
//
//
//
//
//
// //Creating a class user to store the data;
// class User {
//   // final String id;
//   final String name;
//   final String address;
//   final String phone;
//   final String mobile;
//   final String website;
//   final String image;
//
//   User({
//     // required this.id,
//     required this.name,
//     required this.address,
//     required this.phone,
//     required this.mobile,
//     required this.website,
//     required this.image,
//   });
// }
//
//
//
// class Public_Numbers2_Display extends StatefulWidget {
//   @override
//   _Public_Numbers2_DisplayState createState() => _Public_Numbers2_DisplayState();
// }
//
// class _Public_Numbers2_DisplayState extends State<Public_Numbers2_Display> {
//
//
// //Applying get request.
//
//   Future<List<User>> getRequest() async {
//     //replace your restFull API here.
//     String url ="https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Public_Numbers_Display2.php";
//
//
//
//     final response = await http.get(Uri.parse(url));
//
//     var responseData = json.decode(response.body);
//
//     //Creating a list to store input data;
//     List<User> users = [];
//     for (var singleUser in responseData) {
//       User user = User(
//         //id:  singleUser["id"].toString(),
//         name: singleUser["name"].toString(),
//         address: singleUser["address"].toString(),
//         phone: singleUser["phone"].toString(),
//         mobile: singleUser["mobile"].toString(),
//         website: singleUser["website"].toString(),
//         image: singleUser["image"].toString(),
//       );
//
//       //Adding user to the list.
//       users.add(user);
//     }
//     return users;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.pink.shade800,
//           title: Text(
//             "Public Numbers",
//             style: GoogleFonts.prompt(fontSize: 22),
//           ),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back_rounded),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: Container(
//           padding: EdgeInsets.all(16.0),
//           child: FutureBuilder(
//             future: getRequest(),
//             builder: (BuildContext ctx, AsyncSnapshot snapshot) {
//               if (snapshot.data == null) {
//                 return Container(
//                   child: Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CircularProgressIndicator(
//                           color: Colors.red.shade900,
//                           strokeWidth: 5,
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         Text(
//                           "Data Loading Please Wait!",
//                           style: TextStyle(),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               } else {
//                 return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (ctx, index) =>
//                       Card(
//                         margin: EdgeInsets.all(10),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         child: ListTile(
//                             contentPadding: EdgeInsets.all(10.0),
//                             leading: Container(
//                               height: 50,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(color: Colors.red.shade900),
//                                 image: DecorationImage(
//                                   image: NetworkImage(snapshot.data[index].image),
//                                 ),
//                               ),
//                             ),
//                             title: Text(
//                               snapshot.data[index].name,
//                               style: GoogleFonts.lora(
//                                   fontSize: 20, color: Colors.pink.shade700),
//                             ),
//                             onTap: () {
//                               Navigator.push(context,
//                                   MaterialPageRoute(builder: (context) {
//                                     return Public_Numbers2_Detail(snapshot.data[index]);
//                                   }));
//                             }),
//                       ),
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
//
//
//   void showNoMailAppsDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text("Open Mail App"),
//           content: Text("No mail apps installed"),
//           actions: <Widget>[
//             FlatButton(
//               child: Text("OK"),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             )
//           ],
//         );
//       },
//     );
//   }
// }
//
