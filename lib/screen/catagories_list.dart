import 'package:first_app/models/dummy_data.dart';
import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/category_item.dart';

class CatagoriesList extends StatefulWidget {
  @override
  State<CatagoriesList> createState() => _CatagoriesListState();
}

class _CatagoriesListState extends State<CatagoriesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(20),
          children: DUMMY_CATEGORIES.map((Categories)=>CategoryItem(Categories.color, Categories.title, Categories.id)
          ).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          )),
    );
  }
}
