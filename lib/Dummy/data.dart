class Data {
  //late int id;
  late String name;
  late String email;

  Data({
    required this.name,
    required this.email,
    //required this.id,
  });
  factory Data.fromjson(Map<String,dynamic>json)
  {
    return Data(
        name:json['name'] ,
        email:json['email'],);
        //id: json['id']);
  }
}

//https://astrasoftware.in/directoryapp/getdata.php