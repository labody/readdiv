import 'package:flutter/material.dart';
import 'package:readdiv/Components/book_shop_section_item.dart';
import 'package:readdiv/Components/book_shop_section_preview.dart';

class BookShopSections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookShopSectionPreview(
          sectionTitle: 'Fiction',
          sectionItems: [
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
          ],
        ),
        BookShopSectionPreview(
          sectionTitle: 'Romance',
          sectionItems: [
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
          ],
        ),
        BookShopSectionPreview(
          sectionTitle: 'Poetry',
          sectionItems: [
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
          ],
        ),
        BookShopSectionPreview(
          sectionTitle: 'History',
          sectionItems: [
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
          ],
        ),
        BookShopSectionPreview(
          sectionTitle: 'Adventure',
          sectionItems: [
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
            BookShopSectionItem(),
          ],
        ),
      ],
    );
  }
}
