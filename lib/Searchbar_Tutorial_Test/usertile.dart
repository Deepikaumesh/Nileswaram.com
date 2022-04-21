import 'package:flutter/material.dart';
import 'package:untitled1/Searchbar_Tutorial_Test/userdetailspage.dart';

import 'datamodel.dart';

class UserTile extends StatelessWidget {
  final User user;

  UserTile({required this.user});

  /// This function is used to identify User Title Mr. or Ms. ///
  String userTitle() {
    String title = "";
    if (user.gender == "Male") {
      title = "Mr.";
    } else if (user.gender == "Female") {
      title = "Ms.";
    }
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Hero(
              tag: user.id,
              child: CircleAvatar(
                backgroundImage: NetworkImage(user.image),
                radius: 25,
              ),
            ),
            title: Text(
              '${userTitle()} ${user.firstName} ${user.lastName}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(user.job,
                style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
            trailing: Icon(
              Icons.work_sharp,
              color: Colors.blue,
            ),
            /// this function uses to navigate (move to next screen) User Details page and pass user objects into the User Details page. ///
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserDetailsPage(user: user)));
            },
          ),
          Divider(
            thickness: 1.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

