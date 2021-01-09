import 'package:flutter/material.dart';
import 'package:readdiv/Components/more_stories.dart';
import 'package:readdiv/Components/story_description.dart';
import 'package:readdiv/Components/story_details_header.dart';

class StoryDetails extends StatefulWidget {
  @override
  _StoryDetailsState createState() => _StoryDetailsState();
}

class _StoryDetailsState extends State<StoryDetails> {
  bool isFavorited = false;

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
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: isFavorited
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
              onPressed: () {
                setState(() {
                  isFavorited ? isFavorited = false : isFavorited = true;
                });
              }),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        children: [
          SizedBox(height: 10.0),
          StoryDetailsHeader(
            img: 'pride',
            title: 'Pride and prejudice',
            author: 'Giannis Antetokounmpo',
            category1: 'Romance',
            category2: 'Fiction',
          ),
          SizedBox(height: 30.0),
          Description(),
          SizedBox(height: 20.0),
          MoreStoriesSection(),
        ],
      ),
    );
  }
}
