import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Read_More extends StatefulWidget {
  const Read_More({Key? key}) : super(key: key);

  @override
  _Read_MoreState createState() => _Read_MoreState();
}

class _Read_MoreState extends State<Read_More> {

  bool isReadmore= false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/3.8,
      width: MediaQuery.of(context).size.width/1.1,
      child: ListView(
            children: [
              Text('Read More Example',style: TextStyle(fontSize: 30),),
              //text widget to display long text
              buildText("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."),
              ElevatedButton(onPressed: (){
                setState(() {
                  // toggle the bool variable true or false
                  isReadmore = !isReadmore;
                });
              }, child: Text((isReadmore?'Read Less' : 'Read More')))
            ],
          ),
    );

  }

  Widget buildText(String text){

    // if read more is false then show only 3 lines from text
    // else show full text

    final lines = isReadmore ? null : 3;
    return Text(
      text,
      style: TextStyle(fontSize: 25),
      maxLines: lines,

      // overflow properties is used to show 3 dot in text widget
      // so that user can understand there are few more line to read.

      overflow: isReadmore ? TextOverflow.visible: TextOverflow.ellipsis,
    );
  }

}