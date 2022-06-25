import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'Service_Detail.dart';





class Service_Display extends StatefulWidget {
  const Service_Display({Key? key}) : super(key: key);

  @override
  _Service_DisplayState createState() => _Service_DisplayState();
}

class _Service_DisplayState extends State<Service_Display> {


  List<Note> _notes = [];
  List<Note> _notesForDisplay =[];
  Future <List<Note>> fetchNotes() async{
    var url ="https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/service_display.php";
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
        appBar: AppBar(title: Text("View Services",style: GoogleFonts.prompt(color: Colors.orange.shade800),),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () { Navigator.pop(context);},
            child: Icon(
              Icons.arrow_back_rounded,color: Colors.orange.shade800, size: 30,
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
          hintText: 'Search Services....',
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
              border: Border.all(color: Colors.orange.shade800),
              image: DecorationImage(
                image: NetworkImage(_notesForDisplay[index].image),
              ),
            ),
          ),
          title: Text(
            _notesForDisplay[index].catagory,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lora(
                fontSize: 20, color: Colors.orange.shade800),
          ),
          subtitle: Text(_notesForDisplay[index].name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lora(
                fontSize: 15, color: Colors.orange.shade800),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return Service_Detail(_notesForDisplay[index]);
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
