import 'package:flutter/material.dart';
import 'package:mealsApp/dummy_data.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    final realMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == routeArgs);
    return Scaffold(
      appBar: AppBar(
        title: Text(realMeal.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            child: Image.network(realMeal.imageUrl),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Ingredients",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
            height: 150,
            width: 300,
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Container(
                  height: 60,
                  padding: const EdgeInsets.all(6.0),
                  child: Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        realMeal.ingredients[index],
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                );
              },
              itemCount: realMeal.ingredients.length,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Ingredients",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)),
            height: 150,
            width: 300,
            child: ListView.builder(
              itemBuilder: (ctx, index) {
                return Container(
                  height: 60,
                  padding: const EdgeInsets.all(6.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text("#${index + 1}"),
                    ),
                    title: Text(
                      realMeal.steps[index],
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                );
              },
              itemCount: realMeal.steps.length,
            ),
          ),
        ],
      ),
    );
  }
}
