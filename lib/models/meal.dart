import 'package:flutter/material.dart';

enum Complexity { simple, challenging, hard }

class Meal {
  final String id;
  final List<String> categories;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;

  Meal({
    @required this.id,
    @required this.categories,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
  });
}
