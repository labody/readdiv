import 'package:flutter/material.dart';
import 'package:readdiv/Components/genre_button.dart';
import 'package:readdiv/Screens/details.dart';

class StoryListItem extends StatelessWidget {
  final String img;
  final String title;
  final String author;
  final String desc;
  final String genre;

  StoryListItem(
      {this.img,
      @required this.title,
      @required this.author,
      @required this.desc,
      this.genre});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            elevation: 4.0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset(
                'assets/images/$img',
                height: 150.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.headline6.color,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Text(
                  author,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).accentColor,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Theme.of(context).textTheme.caption.color,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    GenreButton(name: genre),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final List<Widget> storyListItems = [
  StoryListItem(
      genre: 'Short Stories',
      img: 'ali-baba.jpeg',
      title: 'Ali Baba and The 40 Thieves',
      author: 'Elvis Kwesi',
      desc:
          'Et amet aliquyam erat invidunt rebum ea sadipscing, et diam magna amet gubergren, amet gubergren diam amet elitr voluptua sea tempor gubergren. Rebum gubergren eos ea ea diam erat, eirmod magna at et duo ut clita consetetur et, vero amet amet no dolores erat tempor sadipscing at at. Aliquyam diam lorem sed clita lorem eos, diam erat voluptua labore no gubergren. Sit aliquyam at gubergren ipsum amet vero. Dolore ipsum ipsum diam est dolor sit takimata tempor et. Ipsum consetetur labore gubergren et sit dolor duo aliquyam, sed ut labore aliquyam et. Diam voluptua sed accusam ipsum sea lorem ea. Dolores.'),
  StoryListItem(
      genre: 'Fiction',
      img: 'things-fall-apart.jpeg',
      title: 'Things Fall Apart',
      author: 'John Harun',
      desc:
          'Et nonumy sadipscing kasd et ut. Elitr et dolor ipsum aliquyam elitr accusam vero stet duo, et magna ea vero amet accusam. Ipsum diam ipsum sit amet sadipscing accusam no stet. Invidunt diam diam sea sed dolor duo est. Tempor et eos dolore ipsum gubergren amet, sadipscing consetetur amet et takimata et diam ipsum dolore, clita clita sit dolore labore kasd eirmod erat lorem. Lorem sed est nonumy dolore sadipscing. Clita ea sit lorem sit est. Lorem labore diam ut et tempor diam, et at no et nonumy stet voluptua,.'), // SizedBox(height: 15.0),
  StoryListItem(
      genre: 'History',
      img: 'culture.jpeg',
      title: 'The Return Of Okomfo Anokye',
      author: 'Kofi Baako',
      desc:
          'Soul but that throws here door chamber violet while, visiter and thee the a within ancient lady master art. And sad bends than before. Burden nameless but stock sinking have no flirt me. Eyes mefilled mystery midnight forget, is take maiden friends throws a deep dream nevermore these. Lenore my thrilled at me back my he nevermore mien, the dreary then and this if, upon if separate ah spoke something.'),
  StoryListItem(
      genre: 'Fiction',
      img: 'road-warriors.jpeg',
      title: 'The Road Warriors',
      author: 'Abena Mensah',
      desc:
          'Et amet aliquyam erat invidunt rebum ea sadipscing, et diam magna amet gubergren, amet gubergren diam amet elitr voluptua sea tempor gubergren. Rebum gubergren eos ea ea diam erat, eirmod magna at et duo ut clita consetetur et, vero amet amet no dolores erat tempor sadipscing at at. Aliquyam diam lorem sed clita lorem eos, diam erat voluptua labore no gubergren. Sit aliquyam at gubergren ipsum amet vero. Dolore ipsum ipsum diam est dolor sit takimata tempor et. Ipsum consetetur labore gubergren et sit dolor duo aliquyam, sed ut labore aliquyam et. Diam voluptua sed accusam ipsum sea lorem ea. Dolores.'),
  StoryListItem(
      genre: 'Romance',
      img: 'pride.jpeg',
      title: 'Pride and Prejudice',
      author: 'Azindoo Malik',
      desc:
          'Et nonumy sadipscing kasd et ut. Elitr et dolor ipsum aliquyam elitr accusam vero stet duo, et magna ea vero amet accusam. Ipsum diam ipsum sit amet sadipscing accusam no stet. Invidunt diam diam sea sed dolor duo est. Tempor et eos dolore ipsum gubergren amet, sadipscing consetetur amet et takimata et diam ipsum dolore, clita clita sit dolore labore kasd eirmod erat lorem. Lorem sed est nonumy dolore sadipscing. Clita ea sit lorem sit est. Lorem labore diam ut et tempor diam, et at no et nonumy stet voluptua,.'),
  StoryListItem(
      genre: 'Short Stories',
      img: 'rings.jpeg',
      title: 'Lord of the Rings',
      author: 'Sherif Ghale',
      desc:
          'Soul but that throws here door chamber violet while, visiter and thee the a within ancient lady master art. And sad bends than before. Burden nameless but stock sinking have no flirt me. Eyes mefilled mystery midnight forget, is take maiden friends throws a deep dream nevermore these. Lenore my thrilled at me back my he nevermore mien, the dreary then and this if, upon if separate ah spoke something.'),
];

buildStoryListItem() {
  return Container(
    height: 500.0,
    child: ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: GestureDetector(
            child: storyListItems[index],
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoryDetails(),
                  ));
            },
          ),
        );
      },
      itemCount: storyListItems.length,
    ),
  );
}
