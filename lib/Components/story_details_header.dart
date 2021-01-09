import 'package:flutter/material.dart';
import 'package:readdiv/Components/genre_button.dart';

class StoryDetailsHeader extends StatelessWidget {
  final String img;
  final String title;
  final String author;
  final String category1;
  final String category2;

  StoryDetailsHeader(
      {@required this.img,
      @required this.title,
      @required this.author,
      @required this.category1,
      this.category2});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/$img.jpeg',
            height: 200.0,
            width: 130.0,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 20.0),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0),
                Text(
                  title,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  maxLines: 3,
                ),
                SizedBox(height: 10.0),
                Text(
                  author,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    GenreButton(name: category1),
                    SizedBox(width: 10.0),
                    GenreButton(name: category2),
                  ],
                ),
                SizedBox(height: 20.0),
                FlatButton(
                  color: Colors.black,
                  onPressed: () {},
                  shape: StadiumBorder(),
                  child: Container(
                    width: 180.0,
                    child: Text(
                      'Read Story',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
