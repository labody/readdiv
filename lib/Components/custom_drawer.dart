import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readdiv/Screens/bookshelf.dart';
import 'package:readdiv/Screens/profile_page.dart';
import 'package:readdiv/Screens/wallet_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    backgroundImage: AssetImage('assets/images/russ.png'),
                    radius: 50.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Giannis Antetokounmpo',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          CustomListTile(
            icon: FontAwesomeIcons.userCircle,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            text: 'Profile',
          ),
          SizedBox(height: 30.0),
          CustomListTile(
            icon: Icons.local_library,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookshelfScreen(),
                ),
              );
            },
            text: 'Books',
          ),
          SizedBox(height: 30.0),
          CustomListTile(
            icon: Icons.account_balance_wallet,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WalletScreen(),
                ),
              );
            },
            text: 'Wallet',
          ),
          SizedBox(height: 30.0),
          CustomListTile(
            icon: Icons.favorite,
            onTap: () {},
            text: 'Favorites',
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onTap;

  CustomListTile(
      {@required this.icon, @required this.onTap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FaIcon(
                  icon,
                  color: Colors.grey[800],
                ),
                SizedBox(width: 15.0),
                Text(text,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16.0),
          ],
        ),
      ),
    );
  }
}
