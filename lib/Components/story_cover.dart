import 'package:flutter/material.dart';

class StoryCover extends StatelessWidget {
  final String img;

  StoryCover({@required this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 120.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        elevation: 4.0,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Image.asset(
            'assets/images/$img',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

final List<StoryCover> storyCovers = [
  StoryCover(img: 'rings.jpeg'),
  StoryCover(img: 'things-fall-apart.jpeg'),
  StoryCover(img: 'road-warriors.jpeg'),
  StoryCover(img: 'pride.jpeg'),
  StoryCover(img: 'culture.jpeg'),
  StoryCover(img: 'friday.jpeg'),
  StoryCover(img: 'ali-baba.jpeg'),
];

buildBookShelf() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    height: 170,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => storyCovers[index],
        separatorBuilder: (context, index) => SizedBox(width: 50.0),
        itemCount: storyCovers.length),
  );
}
