import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Karou extends StatefulWidget {
  const Karou({Key? key}) : super(key: key);

  @override
  _KarouState createState() => _KarouState();
}

class _KarouState extends State<Karou> {
  final List<String> imageList = [
    //"https://astrasoftware.in:2083/cpsess0923177201/viewer/home%2fjastrasoftware%2fpublic_html%2fdirectoryapp%2fimages/aiwa.jpg",
    "https://astrasoftware.in/directoryapp/images/colors.jpg"
  //   "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
  //   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  //   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  //   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
   ];

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
                child: Image.network("https://astrasoftware.in/directoryapp/images/colors.jpg",
                 // imageList[i],
                  width: 500,
                  fit: BoxFit.fill,
                ),
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
