import 'package:flutter/material.dart';
import 'book_shop_section_item.dart';

class BookShopSectionPreview extends StatelessWidget {
  final String sectionTitle;
  final List<BookShopSectionItem> sectionItems;
  BookShopSectionPreview(
      {@required this.sectionTitle, @required this.sectionItems});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Color(0xFFFFC107),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  sectionTitle.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'SEE ALL',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 7.0),
        Container(
          width: MediaQuery.of(context).size.width - 20.0,
          height: 520.0,
          child: GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.8,
            children: sectionItems,
          ),
        )
      ],
    );
  }
}
