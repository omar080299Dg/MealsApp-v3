import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget listTileMaker(IconData icon, String text) {
      return ListTile(
        leading: CircleAvatar(
          child: Icon(
            icon,
            size: 26,
          ),
        ),
        onTap: () {},
        title: Text(
          text,
          style: TextStyle(fontSize: 24, fontFamily: 'Raleway'),
        ),
      );
    }

    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          color: Colors.amber.withOpacity(0.7),
          height: 150,
          width: double.infinity,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(15),
          child: Text(
            "Cooking Up",
            style: TextStyle(fontSize: 25, fontFamily: 'RobotoCondensed'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        listTileMaker(Icons.restaurant, 'Meals'),
        listTileMaker(Icons.settings, 'filter'),
      ],
    ));
  }
}
