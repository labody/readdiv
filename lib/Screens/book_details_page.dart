import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetails extends StatefulWidget {
  @override
  _BookDetailsState createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  int _current = 0;
  List bookCovers = [
    'assets/images/pride.jpeg',
    'assets/images/culture.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text('Book Details', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: CarouselSlider(
                items: bookCovers.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.asset(
                            imgUrl,
                            fit: BoxFit.contain,
                          ));
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    enlargeCenterPage: false,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'A Cultural Dictionary of Punk by Elvis Kwesi',
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Format: ',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        TextSpan(
                            text: ' Hardcopy',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text('GHS 32',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pages: 247',
                        style: TextStyle(fontSize: 16.0, color: Colors.black)),
                    Row(
                      children: [
                        IconButton(icon: Icon(Icons.share), onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.favorite_border),
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Quantity',
                        style: TextStyle(fontSize: 16.0, color: Colors.black)),
                    Row(
                      children: [
                        Text('1', style: TextStyle(fontSize: 16.0)),
                        SizedBox(width: 7.0),
                        Icon(Icons.arrow_forward_ios, size: 16.0),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 370.0,
                  height: 50.0,
                  child: OutlineButton(
                    textColor: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    shape: StadiumBorder(),
                    borderSide: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 370.0,
                  height: 50.0,
                  child: OutlineButton(
                    textColor: Colors.blue,
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    shape: StadiumBorder(),
                    borderSide: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Similar Books',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                buildSimilarBooks(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SimilarBook extends StatelessWidget {
  final String bookCover;

  SimilarBook(this.bookCover);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 250.0,
      width: 200.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150.0,
            width: 180.0,
            color: Colors.grey[200],
            child: Image.asset(
              'assets/images/$bookCover',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            'Ali Baba and The Forty Thieves by Kubolor Harun',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'GHS 59.97',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          )
        ],
      ),
    );
  }
}

final List<SimilarBook> similarBooks = [
  SimilarBook('ali-baba.jpeg'),
  SimilarBook('rings.jpeg'),
  SimilarBook('road-warriors.jpeg'),
  SimilarBook('friday.jpeg'),
];

buildSimilarBooks() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    height: 250.0,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>
          SizedBox(width: 200.0, child: similarBooks[index]),
      separatorBuilder: (context, index) => SizedBox(width: 10.0),
      itemCount: similarBooks.length,
    ),
  );
}
