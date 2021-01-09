import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 5.0),
        children: [
          _buildListTitle('Edit Profile'),
          _buildListTitle('Account Settings'),
          _buildListTitle('Notifications'),
          _buildListTitle('Privacy Policy'),
          _buildListTitle('Terms & Conditions'),
          _buildListTitle('Send Feedback'),
          _buildListTitle('Help & Support'),
          _buildListTitle('About'),
          SizedBox(height: 20.0),
          ListTile(
            title: Text(
              'Log Out',
              style: TextStyle(color: Colors.red, fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListTitle(String title) {
    return Column(
      children: [
        ListTile(
          leading: Text(title,
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
        ),
        Divider(),
      ],
    );
  }
}
