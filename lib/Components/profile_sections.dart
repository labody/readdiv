import 'package:flutter/material.dart';
import 'package:readdiv/Components/story_list_item.dart';

class ProfileSection extends StatelessWidget {
  ProfileSection(this.title);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      '18 Stories',
                    ),
                  ],
                ),
              ),
              IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {})
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          height: 170.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => SizedBox(
                width: MediaQuery.of(context).size.width - 60.0,
                child: storyListItems[index]),
            separatorBuilder: (context, index) => SizedBox(width: 10.0),
            itemCount: storyListItems.length,
          ),
        ),
      ],
    );
  }
}
