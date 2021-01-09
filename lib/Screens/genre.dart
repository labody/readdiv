import 'package:flutter/material.dart';
import 'package:readdiv/Components/story_list_item.dart';
import 'package:readdiv/Screens/details.dart';

class Genre extends StatefulWidget {
  final String title;

  Genre({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(widget.title, style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        height: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoryDetails(),
                    ),
                  );
                },
                child: storyListItems[index],
              ),
            );
          },
          itemCount: storyListItems.length,
        ),
      ),
    );
  }
}
