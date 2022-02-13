import 'package:flutter/material.dart';


class MealsDetailsScreen extends StatelessWidget {
   static const routeName = './meals-details-screen';
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    return Container(
      
      child:
      Scaffold(body: Center(child: Text(routeArgs.toString())),)
    );
  }
}
