import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class BookShopSlider extends StatelessWidget {
  final List bookCovers = [
    AssetImage('assets/images/ali-baba.jpeg'),
    AssetImage('assets/images/culture.jpeg'),
    AssetImage('assets/images/friday.jpeg'),
    AssetImage('assets/images/pride.jpeg'),
    AssetImage('assets/images/rings.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.red,
        child: SizedBox(
          height: 150.0,
          // width: 380.0,
          width: MediaQuery.of(context).size.width,
          child: Carousel(
            boxFit: BoxFit.cover,
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            dotIncreasedColor: Color(0xFFFF335C),
            dotBgColor: Colors.transparent,
            dotPosition: DotPosition.bottomCenter,
            dotVerticalPadding: 10.0,
            showIndicator: true,
            indicatorBgPadding: 7.0,
            images: bookCovers,
          ),
        ),
      ),
    );
  }
}
