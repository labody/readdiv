import 'package:flutter/material.dart';
import 'package:readdiv/Screens/genre.dart';

class GenreButton extends StatelessWidget {
  final String name;

  GenreButton({
    @required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Genre(
                    title: name,
                  )),
        );
      },
      child: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      shape: StadiumBorder(),
    );
  }
}

final List<GenreButton> genreButtons = [
  GenreButton(name: 'Short Stories'),
  GenreButton(name: 'History'),
  GenreButton(name: 'Romance'),
  GenreButton(name: 'Poetry'),
  GenreButton(name: 'Fiction')
];

buildGenreRow() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    height: 30.0,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => genreButtons[index],
      separatorBuilder: (context, index) => SizedBox(width: 10.0),
      itemCount: genreButtons.length,
    ),
  );
}
