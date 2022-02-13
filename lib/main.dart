import 'package:first_app/screen/Category_meals_list.dart';
import 'package:first_app/screen/meals_details_screen.dart';
import 'package:flutter/material.dart';
import 'screen/catagories_list.dart';

void main() {
  return runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meals App",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        // fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1:TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2:TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            subtitle1: TextStyle(
              fontSize: 20,
              // fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      routes:{
        '/':(context)=> CatagoriesList(),
        CategoryMealsList.routeName: (context)=> CategoryMealsList(),
        MealsDetailsScreen.routeName: (context)=> MealsDetailsScreen(),

      },
      // home:  CatagoriesList(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Navigation time"),
      ),
    );
  }
}
