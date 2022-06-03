import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Detail_Screen_News extends StatelessWidget {
  final  pquestion;
  const Detail_Screen_News(this.pquestion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade800,
        title: Text(pquestion.name),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
          child: Text(
            pquestion.address,
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 20.0, color: Colors.black,),
            overflow: TextOverflow.visible,
          )),
    );
  }
}