import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:readdiv/util/common.dart';

class AddStoryScreen extends StatefulWidget {
  @override
  _AddStoryScreenState createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No Image Selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Add Story details', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: getImage,
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                height: 120.0,
                child: Row(
                  children: [
                    Card(
                      color: Colors.grey[400],
                      child: Container(
                        height: 90.0,
                        width: 60.0,
                        child: _image == null
                            ? Icon(
                                Icons.add_circle_outline,
                                color: Colors.grey[700],
                              )
                            : Image.file(_image, fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text('Add cover photo',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16.0)),
                  ],
                ),
              ),
            ),
            kDivider,
            Container(
              height: 50.0,
              padding: EdgeInsets.only(left: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Story Title',
                  hintStyle:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  border: InputBorder.none,
                ),
              ),
            ),
            kDivider,
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  labelText: 'Story Description',
                  hintText: 'Story Description',
                  hintStyle:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                maxLines: 20,
                decoration: InputDecoration(
                  labelText: 'Write Story here',
                  hintText: 'Write Story here',
                  hintStyle:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
