import 'package:flutter/material.dart';
import 'package:readdiv/Components/story_cover.dart';

class BookshelfScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      backgroundColor: Colors.brown[800],
      appBar: AppBar(
        title: Text('Bookshelf', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.brown[800],
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Divider(
              height: 22.0,
              color: Colors.brown[900],
              thickness: 22.0,
            ),
            buildshelf(),
            buildshelf(),
            buildshelf(),
            buildshelf(),
            buildshelf(),
          ],
        )),
      ),
    );
  }
}

buildshelf() {
  return Column(
    children: [
      Container(
        height: 220.0,
        child: Stack(
          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,
          children: [
            Divider(
              height: 25.0,
              color: Colors.brown[910],
              thickness: 25.0,
            ),
            Positioned(
              child: buildBookShelf(),
            ),
          ],
        ),
      ),
      Divider(
        height: 22.0,
        color: Colors.brown[900],
        thickness: 22.0,
      ),
    ],
  );
}
