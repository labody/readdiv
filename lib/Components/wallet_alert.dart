import 'package:flutter/material.dart';

class WalletAlert extends StatelessWidget {
  WalletAlert(
      {@required this.icon,
      @required this.color,
      @required this.message,
      @required this.dateAndTime,
      @required this.amount});
  final IconData icon;
  final Color color;
  final String message;
  final String dateAndTime;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: IconButton(
            icon: (Icon(
              icon,
              color: Colors.black,
            )),
            onPressed: () {}),
      ),
      title: Text(
        message,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        dateAndTime,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(
              text: 'GHS ',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            TextSpan(
                text: amount,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}
