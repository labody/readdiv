import 'package:flutter/material.dart';
import 'package:readdiv/Components/story_cover.dart';
import 'package:readdiv/Screens/details.dart';
import 'package:readdiv/Screens/genre.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        title: Text(
          'Explore',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GenreListPreview(genreName: 'Short Stories'),
            GenreListPreview(genreName: 'Romance'),
            GenreListPreview(genreName: 'Poetry'),
            GenreListPreview(genreName: 'History'),
          ],
        ),
      ),
    );
  }
}

class GenreListPreview extends StatelessWidget {
  final String genreName;

  GenreListPreview({@required this.genreName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          _buildSectionHeader(genreName, context),
          SizedBox(height: 10.0),
          buildSectionStoryList(),
        ],
      ),
    );
  }
}

_buildSectionHeader(String genre, BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: Text(
            genre,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Genre(
                        title: genre,
                      )),
            );
          },
          child: Text(
            'See All',
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
  );
}

buildSectionStoryList() {
  return Container(
    height: 200.0,
    child: Center(
      child: ListView.builder(
          itemCount: storyCovers.length,
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                  child: storyCovers[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StoryDetails()),
                    );
                  }),
            );
          }),
    ),
  );
}
