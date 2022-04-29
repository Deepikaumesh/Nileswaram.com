import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Events_Carousel extends StatefulWidget {
  const Events_Carousel({ Key? key }) : super(key: key);

  @override
  _Events_CarouselState createState() => _Events_CarouselState();
}

class _Events_CarouselState extends State<Events_Carousel> {
  int _currentIndex = 0;

  late CarouselSlider carouselSlider;

  List imageList = [
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/nile.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        initialPage: 0,
        autoPlay: true,
        reverse: false,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 2000),
        onPageChanged: (index, reason) => _currentIndex = index,
        // pauseAutoPlayOnTouch: Duration(seconds: 10),
        // scrollDirection: Axis.horizontal,
      ),
      items: imageList
          .map(
            (item) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            margin: EdgeInsets.only(
              top: 10.0,
              bottom: 20.0,
            ),
            elevation: 6.0,
            shadowColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Image.asset(
                item,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      )
          .toList(),

    );
  }
}