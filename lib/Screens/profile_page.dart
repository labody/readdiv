import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readdiv/Components/profile_sections.dart';
import 'package:readdiv/Components/story_list_item.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              overflow: Overflow.visible,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/friday.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -70.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/russ.png'),
                    radius: 80.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 80.0),
            Container(
              child: Text(
                'Giannis Antetokounmpo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              child: Text(
                'I write stories in the Genre of Romance, Fiction, Adventure and Poetry.',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileMenuItem(
                    Text(
                      '18',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    'Works'),
                ProfileMenuItem(
                    Text(
                      '962',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    'Followers'),
                ProfileMenuItem(
                    Text(
                      '78',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    'Following'),
                ProfileMenuItem(Icon(Icons.add_circle), 'Post Story'),
                ProfileMenuItem(
                    FaIcon(FontAwesomeIcons.userEdit), 'Edit Profile'),
              ],
            ),
            SizedBox(height: 30.0),
            ProfileSection('Works by Giannis Antetokounmpo'),
            ProfileSection('Current Reads'),
            ProfileSection('Completed'),
            ProfileSection('Favourites'),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem(this.item, this.label);

  final Widget item;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: item,
          onPressed: () {},
          iconSize: 25.0,
        ),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
