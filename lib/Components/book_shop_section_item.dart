import 'package:flutter/material.dart';

class BookShopSectionItem extends StatelessWidget {
  final String bookCover;
  final String bookName;
  final String author;

  BookShopSectionItem({this.bookCover, this.bookName, this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0)
          ],
          color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.pink,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 110.0,
            width: 110.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/culture.jpeg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 7.0),
          Text(
            'GHS 35.20',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Text('Ali Baba and The Forty Thieves ',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 16.0)),
          Text(
            'by Gilbert Fosu',
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}
