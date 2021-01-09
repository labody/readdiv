import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readdiv/Components/custom_drawer.dart';
import 'package:readdiv/Components/wallet_alert.dart';
import 'package:readdiv/Screens/profile_page.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          'My Wallet',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
        elevation: 0.0,
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50.0),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'GHS',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    TextSpan(
                      text: ' 340.21',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140.0,
                  height: 60.0,
                  child: FlatButton(
                    // padding: EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.blue[800],
                    onPressed: () {},
                    child: Text(
                      'TOP UP',
                      style: TextStyle(color: Colors.white60, fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Container(
                  width: 140.0,
                  height: 60.0,
                  child: FlatButton(
                    // padding: EdgeInsets.all(10.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.blue[800],
                    onPressed: () {},
                    child: Text(
                      'WITHDRAW',
                      style: TextStyle(color: Colors.white60, fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.0),
                  Container(
                    color: Colors.white30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Wallet History',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  WalletAlert(
                      icon: Icons.arrow_upward,
                      color: Colors.green,
                      message: 'Payment made for Book',
                      dateAndTime: '14 Nov, 20, 12:01',
                      amount: '50.00'),
                  WalletAlert(
                      icon: Icons.arrow_downward,
                      color: Colors.amber,
                      message: 'Account Top Up',
                      dateAndTime: '04 Oct, 20, 02:38',
                      amount: '110.00'),
                  WalletAlert(
                      icon: Icons.arrow_upward,
                      color: Colors.green,
                      message: 'Payment made for Story',
                      dateAndTime: '28 Aug, 20, 11:57',
                      amount: '45.20'),
                  WalletAlert(
                      icon: Icons.arrow_upward,
                      color: Colors.green,
                      message: 'Payment made for Book',
                      dateAndTime: '20 Aug, 20, 22:14',
                      amount: '25.50'),
                  WalletAlert(
                      icon: Icons.arrow_downward,
                      color: Colors.red,
                      message: 'Money Withdrawn from Wallet',
                      dateAndTime: '01 Aug, 20, 12:43',
                      amount: '20.00'),
                  WalletAlert(
                      icon: Icons.arrow_downward,
                      color: Colors.amber,
                      message: 'Account Top Up',
                      dateAndTime: '14 July, 20, 10:18',
                      amount: '100.00'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
