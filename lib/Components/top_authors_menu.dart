import 'package:flutter/material.dart';
import 'package:readdiv/util/common.dart';

class TopAuthorsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSectionTitle('Top Authors'),
        SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TopAuthor(
                authorPicture: 'russ.png', authorName: 'Russell \n\Westbrook'),
            TopAuthor(authorPicture: 'jm.jpg', authorName: 'Special \n\One'),
            TopAuthor(
                authorPicture: 'mvp.png', authorName: 'Russ \n\Beastbrook'),
            TopAuthor(
                authorPicture: 'jose.jpg', authorName: 'Jose \n\Mourinho'),
          ],
        ),
      ],
    );
  }
}

class TopAuthor extends StatelessWidget {
  final String authorPicture;
  final String authorName;

  TopAuthor({@required this.authorName, @required this.authorPicture});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40.0,
          backgroundColor: Colors.grey[400],
          backgroundImage: AssetImage('assets/images/$authorPicture'),
        ),
        SizedBox(height: 7.0),
        Container(
          child: Text(
            authorName,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
