import 'package:flutter/material.dart';
import 'package:readdiv/Components/book_shop_section_item.dart';
import 'package:readdiv/Components/book_shop_section_preview.dart';
import 'package:readdiv/Components/book_shop_sections.dart';
import 'package:readdiv/Components/book_shop_slider.dart';
import 'package:readdiv/Components/custom_drawer.dart';
import 'package:readdiv/Components/genre_button.dart';

class BookShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        ),
        title: Text('Book Shop', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Your books dey here!',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            BookShopSlider(),
            SizedBox(height: 15.0),
            // buildGenreRow(),
            SizedBox(height: 30.0),
            BookShopSections(),
          ],
        ),
      ),
    );
  }
}
