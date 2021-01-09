import 'package:flutter/material.dart';
import 'package:readdiv/Components/custom_drawer.dart';
import 'package:readdiv/Components/genre_button.dart';
import 'package:readdiv/Components/story_list_item.dart';
import 'package:readdiv/Components/top_authors_menu.dart';
import 'package:readdiv/util/common.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // bottomNavigationBar: BottomNavBar(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            'ReadDiv',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
          elevation: 0.0,
        ),
        drawer: CustomDrawer(),

        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Discover Stories',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              buildGenreRow(),
              SizedBox(height: 20.0),
              TopAuthorsMenu(),
              SizedBox(height: 40.0),
              Column(
                children: [
                  buildSectionTitle('Editor\'s Choice'),
                  SizedBox(height: 20.0),
                  buildStoryListItem(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
