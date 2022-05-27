import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class ImageView_test_Carousel extends StatefulWidget {
  const ImageView_test_Carousel({Key? key}) : super(key: key);

  @override
  _ImageView_test_CarouselState createState() => _ImageView_test_CarouselState();
}

class _ImageView_test_CarouselState extends State<ImageView_test_Carousel> {
  var imageList;

  //late List imageList;
  bool loading = true;
  String imagefolder =
  //"https://jcizone19.in/._A_nileswaram/directoryapp/images/";
  // "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/";
      "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Image_Test_Carousel/";

  fetchAllImage() async {
    final response = await http.get(Uri.parse(
        "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Image_Test_Carousel/Image_Test_Carousel.php"));
    if (response.statusCode == 200) {
      setState(() {
        imageList = jsonDecode(response.body);
        loading = false;
      });
    }
    print(imageList);
  }

  @override
  void initState() {
    fetchAllImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink.shade800,
        title: Text(
          "Textile Images",
          style: GoogleFonts.prompt(fontSize: 22),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children:[
          SizedBox(height: 50,),
          Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 20),
          height: 400,
          width: MediaQuery.of(context).size.width,
          child: loading
              ? CircularProgressIndicator(
            strokeWidth: 3,
            color: Colors.red.shade900,
            // semanticsLabel:'Please check your Network connection',
          )
              : Carousel(
            borderRadius: true,
            radius: Radius.circular(20),
            boxFit: BoxFit.fill,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 3000),
            dotSize: 5.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.topCenter,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            autoplayDuration:Duration(seconds: 3),
            images: imageList.map((element) {
              return Image.network(imagefolder + element['image'],height: 400,);
            }).toList(),
          ),

        ),
      ],
      ),
    );
  }
}
