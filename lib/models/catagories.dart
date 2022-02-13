import 'package:flutter/material.dart';


class Catagories {
  final String id;
  final String title;
  final Color color;

  const Catagories({
    @required this.id, 
    @required this.color, 
    this.title
    });
}
