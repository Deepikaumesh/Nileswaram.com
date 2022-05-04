import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import  'package:http/http.dart ' as http;

class Carousel_test extends StatefulWidget {
  const Carousel_test({Key? key}) : super(key: key);

  @override
  _Carousel_testState createState() => _Carousel_testState();
}

class _Carousel_testState extends State<Carousel_test> {
  //late  final List<String> imageList = [];
  late List imageList;
  bool  loading = true;

  
  fetchAllimage() async {
    final response = await http.get(Uri.parse("https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/get_image.php"));
      if (response.statusCode == 200){
        setState(() {
          imageList = jsonDecode(response.body);
          loading = false;
        });
      }
  }
  @override
  void initState(){
    super.initState();
    fetchAllimage();
    print(imageList);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: CarouselSlider.builder(
        itemCount: 3,
        //imageList.length,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: 140,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          reverse: false,
          aspectRatio: 5.0,

        ),
        itemBuilder: (context, i, id) {
          //for onTap to redirect to another screen
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                  )),
              //ClipRRect for image border radius
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:
                   imageList[i],

                ),
              ),

            // onTap: () {
            //   var url = imageList[i];
            //   print(url.toString());
            // },
          );
        },
      ),
    );
  }
}
