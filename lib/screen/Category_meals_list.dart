import 'package:first_app/models/dummy_data.dart';
import 'package:first_app/widgets/meals_item.dart';
import 'package:flutter/material.dart';

class CategoryMealsList extends StatelessWidget {
  static const routeName = './category-meals-list';
  // final String catogoriesID;
  // final String catogoriesTitle;
  // final Color catogoriesColor;

  // CategoryMealsList(
  //     this.catogoriesColor, this.catogoriesID, this.catogoriesTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final CatogoriesTitle = routeArgs['title'];
    final CatogoriesId = routeArgs['id'];
    final CatogoriesColor = routeArgs['color'];
    final Catogories = DUMMY_MEALS.where((catogory) {
      return catogory.categories.contains(CatogoriesId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(CatogoriesTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            // return Text(Catogories[index].title);
            return MealsList(
                id: Catogories[index].id,
                title: Catogories[index].title,
                imageUrl: Catogories[index].imageUrl,
                duration: Catogories[index].duration,
                affordability: Catogories[index].affordability,
                complexity: Catogories[index].complexity,
                ingredients: Catogories[index].ingredients);
          },
          itemCount: Catogories.length,
        ));
  }
}
