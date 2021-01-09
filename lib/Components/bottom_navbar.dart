import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // backgroundColor: Theme.of(context).primaryColor,
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
            'Browse',
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
    );
  }
}
