import 'package:flutter/material.dart';
import 'package:mealsApp/category_meal_screen.dart';
import 'package:mealsApp/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meals App",
      theme: ThemeData(primarySwatch: Colors.pink, accentColor: Colors.amber),
      home: CategoryScreen(),
      routes: {'/category-meal': (ctx) => CategoryMeal()},
    );
  }
}
