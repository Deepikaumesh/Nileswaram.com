import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Searchbar_Tutorial_Test/searchbarhome.dart';

class Search_Bar extends StatefulWidget {
  const Search_Bar({Key? key}) : super(key: key);

  @override
  _Search_BarState createState() => _Search_BarState();
}

class _Search_BarState extends State<Search_Bar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(40.0),
        shadowColor: Color(0x55434343),
        child: TextField(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Searchbar_Home()));
          },
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: "Search for Shops,.",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black54,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
