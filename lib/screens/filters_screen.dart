import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _gluttenFree = false;
  var _lactose = false;
  var _vegan = false;
  var _vegetarian = false;

  Widget _buildFilterSwitch(BuildContext context, String title, String subtitle,
      bool value, Function onChanged) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: value,
        onChanged: onChanged,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            _buildFilterSwitch(
              context,
              'Gluten Free',
              'Only include gluten free meals',
              _gluttenFree,
              (value) {
                setState(() {
                  _gluttenFree = value;
                });
              },
            ),
            _buildFilterSwitch(
              context,
              'Lactose Free',
              'Only include lactose free meals',
              _lactose,
              (value) {
                setState(() {
                  _lactose = value;
                });
              },
            ),
            _buildFilterSwitch(
              context,
              'Vegan',
              'Only include vegan meals',
              _vegan,
              (value) {
                setState(() {
                  _vegan = value;
                });
              },
            ),
            _buildFilterSwitch(
              context,
              'Vegetarian',
              'Only include vegetarian meals',
              _vegetarian,
              (value) {
                setState(() {
                  _vegetarian = value;
                });
              },
            ),
          ],
        ));
  }
}
