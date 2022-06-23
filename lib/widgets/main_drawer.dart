import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildListeTyle(BuildContext context, String title, IconData icon,
        Function tapHandler) {
      return ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        onTap: tapHandler,
      );
    }

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildListeTyle(
            context,
            "Meals",
            Icons.restaurant,
            () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          _buildListeTyle(
            context,
            "Settings",
            Icons.settings,
            () => Navigator.of(context)
                .pushReplacementNamed(FiltersScreen.routeName),
          ),
        ],
      ),
    );
  }
}
