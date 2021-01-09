import 'package:flutter/material.dart';

buildSectionTitle(String title) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}

Widget kDivider = Padding(
  padding: EdgeInsets.only(left: 15.0),
  child: Divider(color: Colors.black),
);
