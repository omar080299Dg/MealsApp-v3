import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var isGlutenFree = false;

  var isVegan = false;

  var isVegetarian = false;

  var isLactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("filter screen"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25),
              child: Text(
                "Organize your choices",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    value: isGlutenFree,
                    onChanged: (newv) {
                      setState(() {
                        isGlutenFree = newv;
                      });
                      print(newv);
                    },
                    title: Text(
                      "isGlutenFree",
                    ),
                    subtitle: Text("only GlutenFree meals"),
                  ),
                  SwitchListTile(
                    value: isVegan,
                    onChanged: (newv) {
                      setState(() {
                        isVegan = newv;
                      });
                      print(newv);
                    },
                    title: Text(
                      "isVegan",
                    ),
                    subtitle: Text("only Vegan meals"),
                  ),
                  SwitchListTile(
                    value: isVegetarian,
                    onChanged: (newv) {
                      setState(() {
                        isVegetarian = newv;
                      });
                      print(newv);
                    },
                    title: Text(
                      "isVegetarian",
                    ),
                    subtitle: Text("only Vegetarian meals"),
                  ),
                  SwitchListTile(
                    value: isLactoseFree,
                    onChanged: (newv) {
                      setState(() {
                        isLactoseFree = newv;
                      });
                      print(newv);
                    },
                    title: Text(
                      "isLactoseFree",
                    ),
                    subtitle: Text("only LactoseFree meals"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
