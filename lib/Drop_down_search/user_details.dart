




// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

List<UserDetails> userModelFromJson(String str) => List<UserDetails>.from(json.decode(str).map((x) => UserDetails.fromJson(x)));

String userModelToJson(List<UserDetails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserDetails {
  UserDetails({
    required this.id,
    required this.name,
    required this.address,
    required this.blood,
    required this.phone,
    required this.email,
    required this.mobile,
    required this.watsap,
    required this.website,
    required this.facebook,
    required this.insta,
  });

  String id;
  String name;
  String address;
  String blood;
  String phone;
  String email;
  String mobile;
  String watsap;
  String website;
  String facebook;
  String insta;

  factory UserDetails.fromJson(Map<dynamic, dynamic> json) => UserDetails(
    id: json["id"],
    name: json["name"],
    address: json["address"],
    blood: json["blood"],
    phone: json["phone"],
    email: json["email"],
    mobile: json["mobile"],
    watsap: json["watsap"],
    website: json["website"],
    facebook: json["facebook"],
    insta: json["insta"],
  );

  Map<dynamic,dynamic> toJson() => {
    "id": id,
    "name": name,
    "address": address,
    "blood": blood,
    "phone": phone,
    "email": email,
    "mobile": mobile,
    "watsap": watsap,
    "website": website,
    "facebook": facebook,
    "insta": insta,
  };
}

























// import 'dart:convert';
//
// List<UserDetails> userModelFromJson(String str) => List<UserDetails>.from(json.decode(str).map((x) => UserDetails.fromJson(x)));
//
// String userModelToJson(List<UserDetails> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class UserDetails {
//   UserDetails({
//     required this.postId,
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.body,
//   });
//
//   String postId;
//   String id;
//   String name;
//   String email;
//   String body;
//
//   factory UserDetails.fromJson(Map<dynamic, dynamic> json) => UserDetails(
//     postId: json["postId"],
//     id: json["id"],
//     name: json["name"],
//     email: json["email"],
//     body: json["body"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "postId": postId,
//     "id": id,
//     "name": name,
//     "email": email,
//     "body": body,
//   };
// }
