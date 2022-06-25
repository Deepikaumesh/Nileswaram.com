import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'View_More_Detail.dart';




class New_Searchbar extends StatefulWidget {
  const New_Searchbar({Key? key}) : super(key: key);

  @override
  _New_SearchbarState createState() => _New_SearchbarState();
}

class _New_SearchbarState extends State<New_Searchbar> {


  List<Note> _notes = [];
  List<Note> _notesForDisplay =[];
  Future <List<Note>> fetchNotes() async{
    var url ="https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Main_Search_Box_Display.php";
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
        appBar: AppBar(title: Text("Search Categories",style: GoogleFonts.prompt(color: Colors.red.shade900),),
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
    return Padding(padding: EdgeInsets.only(top: 5,left: 20,right: 20,bottom: 10),
      child: TextField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.teal),
            borderRadius: BorderRadius.circular(40),

          ),
          hintText: 'Search....',
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
              var noteOther_pro =note.other_pro.toLowerCase();
              return noteOther_pro.contains(text);
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
          contentPadding: EdgeInsets.all(4.0),
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
            _notesForDisplay[index].name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lora(
                fontSize: 15, color: Colors.pink.shade700,fontWeight: FontWeight.bold),
          ),
          subtitle: Text(_notesForDisplay[index].other_pro,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lora(
                fontSize: 10, color: Colors.pink.shade700,fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return Vie_More_Detail(_notesForDisplay[index]);
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
