import 'package:first_app/screen/Category_meals_list.dart';
import 'package:flutter/material.dart';
import '../screen/Category_meals_list.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  CategoryItem(this.color, this.title, this.id);
  void selectHandler(ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsList.routeName,arguments: {'id':id,'title':title,}) ;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectHandler(context),
      splashColor: Colors.white.withOpacity(0.3),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}
