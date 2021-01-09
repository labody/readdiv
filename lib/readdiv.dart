import 'package:flutter/material.dart';
import 'package:readdiv/Screens/account.dart';
import 'package:readdiv/Screens/add_story.dart';
import 'package:readdiv/Screens/book_details_page.dart';
import 'package:readdiv/Screens/book_shop.dart';
import 'package:readdiv/Screens/bookshelf.dart';
import 'package:readdiv/Screens/details.dart';
import 'package:readdiv/Screens/explore.dart';
import 'package:readdiv/Screens/genre.dart';
import 'package:readdiv/Screens/home.dart';
import 'package:readdiv/Screens/order_page.dart';
import 'package:readdiv/Screens/profile_page.dart';
import 'package:readdiv/Screens/wallet_screen.dart';

class ReadDiv extends StatefulWidget {
  @override
  _ReadDivState createState() => _ReadDivState();
}

int _selectedIndex = 0;

final List<Widget> _pages = [
  Home(),
  Explore(),
  AddStoryScreen(),
  ProfilePage(),
  AccountPage(),
];

class _ReadDivState extends State<ReadDiv> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.grey[500],
          elevation: 20,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
              ),
              title: Text(
                'Explore',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              title: Text(
                'Add Story',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_library,
              ),
              title: Text(
                'Library',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              title: Text(
                'Account',
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: _pages[_selectedIndex],
        // body: WalletScreen(),
      ),
    );
  }
}
