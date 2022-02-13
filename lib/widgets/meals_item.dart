import 'package:first_app/models/meals.dart';
import 'package:first_app/screen/meals_details_screen.dart';
import 'package:flutter/material.dart';

class MealsList extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final ingredients;

  MealsList({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.affordability,
    @required this.complexity,
    @required this.ingredients,
  });

  String get ComplexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'unknown';
    }
  }

  String get AffordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'unknown';
    }
  }

  @override
  void selecthandler(BuildContext context) {
    Navigator.of(context).pushNamed(MealsDetailsScreen.routeName,arguments:id);
  }

  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selecthandler(context),
        splashColor: Colors.blueAccent,
        child: Card(
            elevation: 4,
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    width: 300,
                    bottom: 5,
                    right: 5,
                    child: Container(
                      child: Text(
                        title,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                      color: Colors.black54,
                      padding: EdgeInsets.all(10),
                    ))
              ]),
              Padding(
                padding:EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children:[
                        Icon(Icons.schedule),
                        Text('$duration min'),
                        SizedBox(width: 12),
                      ]
                    ),Row(
                      children:[
                        Icon(Icons.work),
                        Text('$ComplexityText'),
                        SizedBox(width: 12),
                      ]
                    ),Row(
                      children:[
                        Icon(Icons.attach_money),
                        Text('$AffordabilityText'),
                        SizedBox(width: 12),
                      ]
                    )
                  ],
                ),
              )
            ])));
  }
}
