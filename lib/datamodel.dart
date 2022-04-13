class User {
  late int id;
  late String firstName;
  late String lastName;
  late String email;
  late String gender;
  late String image;
  late String job;
  late String profile;

  User(
      {required this.id,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.gender,
        required this.image,
        required this.job,
        required this.profile});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    gender = json['gender'];
    image = json['image'];
    job = json['job'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['image'] = this.image;
    data['job'] = this.job;
    data['profile'] = this.profile;
    return data;
  }
}

