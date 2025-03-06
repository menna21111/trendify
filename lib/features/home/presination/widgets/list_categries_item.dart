import 'package:flutter/material.dart';
import 'package:trendify/features/home/presination/widgets/item_categries.dart';

class ListCategriesItem extends StatelessWidget {
  const ListCategriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child: ItemCategries(),
        );
      },
    );
  }
}
