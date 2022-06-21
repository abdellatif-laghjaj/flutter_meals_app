import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text("${selectedMeal.title} Details"),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Ingredients",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 200,
            width: 300,
            child: ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: (ctx, index) => Card(
                color: Theme.of(context).accentColor,
                child: Text(
                  selectedMeal.ingredients[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
