import 'dart:convert';

List<UserModel> userModelFromJson(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromJson(x)));

String userModelToJson(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    required this.name,
    required this.address,
    required this.blood,
    required this.phone,
  });

  String name;
  String address;
  String blood;
  String phone;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json["name"],
    address: json["address"],
    blood: json["blood"],
    phone: json["phone"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "address": address,
    "blood": blood,
    "phone": phone,
  };
}

























// class Data {
//   //late int id;
//   late String name;
//   late String address;
//   late String blood;
//   late String phone;
//
//
//   Data({
//     required this.name,
//     required this.address,
//     required this.blood,
//     required this.phone,
//     //required this.id,
//   });
//
//   factory Data.fromjson(Map<String,dynamic>json)
//   {
//     return Data(
//         name:json['name'] ,
//         address:json['address'],
//       phone:json['phone'] ,
//       blood:json['blood'],
//
//
//     );
//
//   }
// }
//
// //https://astrasoftware.in/directoryapp/getdata.php