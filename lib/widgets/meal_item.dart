import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  void selectMeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
