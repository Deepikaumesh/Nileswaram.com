import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../Display Catagory/NonVegHotelDetail.dart';
class Display_Searchable_Catagory extends StatefulWidget {
  const Display_Searchable_Catagory({Key? key}) : super(key: key);

  @override
  _Display_Searchable_CatagoryState createState() => _Display_Searchable_CatagoryState();
}

class _Display_Searchable_CatagoryState extends State<Display_Searchable_Catagory> {


  List<Note> _notes = [];
  List<Note> _notesForDisplay =[];
  Future <List<Note>> fetchNotes() async{
    var url ="https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Main_Display_ASC_order.php";
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
        appBar: AppBar(title: Text("View More Category",style: GoogleFonts.prompt(color: Colors.red.shade900),),
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
    return Padding(padding: EdgeInsets.all(20.0),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon:Icon(Icons.search),
          hintText: 'Search Catagory....'
      ),
      onChanged: (text) {
        text= text.toLowerCase();
        setState(() {
          _notesForDisplay = _notes.where((note) {
            var noteCatagory =note.catagory.toLowerCase();
            return noteCatagory.contains(text);
          }).toList();
        });
      },
    ),
    );
  }


  _listitem(index){

 return   Card(
      margin: EdgeInsets.all(10),
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
          title: Text(
            _notesForDisplay[index].catagory,
            style: GoogleFonts.lora(
                fontSize: 20, color: Colors.pink.shade700),
          ),
          subtitle: Text(_notesForDisplay[index].name,
              style: GoogleFonts.lora(
              fontSize: 15, color: Colors.pink.shade700),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return NonVegHotelDetail(_notesForDisplay[index]);
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
    required this.image,
    required this.catagory,
    required this.address,
    required this.blood,
    required this.phone,
    required this.email,
    required this.mobile,
    required this.watsap,
    required this.website,
    required this.facebook,
    required this.insta,
    required this.other_pro,
  });


  String name;
  String image;
  String catagory;
  String address;
  String blood;
  String phone;
  String email;
  String mobile;
  String watsap;
  String website;
  String facebook;
  String insta;
  String other_pro;

  factory Note.fromJson(Map<String, dynamic> json) => Note(
    name: json["name"],
    image: json["image"],
    catagory: json["catagory"],
    address: json["address"],
    blood: json["blood"],
    phone: json["phone"],
    email: json["email"],
    mobile: json["mobile"],
    watsap: json["watsap"],
    website: json["website"],
    facebook: json["facebook"],
    insta: json["insta"],
    other_pro: json["other_pro"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image":image,
    "catagory":catagory,
    "address": address,
    "blood": blood,
    "phone": phone,
    "email": email,
    "mobile": mobile,
    "watsap": watsap,
    "website": website,
    "facebook": facebook,
    "insta": insta,
    "other_pro":other_pro,
  };
}
