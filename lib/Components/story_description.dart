import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Description',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          color: Theme.of(context).textTheme.caption.color,
        ),
        SizedBox(height: 10.0),
        Container(
          child: Text(
            'Labore invidunt vero eirmod no rebum, ut et aliquyam dolor takimata lorem est lorem elitr ut. At dolor ipsum sanctus amet ea amet amet, ea no clita dolor nonumy, dolor accusam rebum amet magna et nonumy sed, est gubergren dolore eos sadipscing et sanctus dolore stet. Sanctus ipsum aliquyam eos at elitr no lorem sit, accusam rebum at sed erat gubergren consetetur sed clita labore. Et et takimata est et ut. Elitr eirmod diam labore sea amet diam rebum ut....',
            style: TextStyle(
                fontSize: 16.0,
                color: Theme.of(context).textTheme.caption.color),
            // maxLines: 8,
            // overflow: TextOverflow.ellipsis,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              child: Text(
                'Show more',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
