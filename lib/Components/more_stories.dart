import 'package:flutter/material.dart';
import 'package:readdiv/Components/story_list_item.dart';

class MoreStoriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'More from Author',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          color: Theme.of(context).textTheme.caption.color,
        ),
        buildStoryListItem(),
      ],
    );
  }
}
