import 'package:flutter/material.dart';
import 'package:mealsApp/category_meal_screen.dart';
import 'package:mealsApp/category_screen.dart';
import 'package:mealsApp/meal_detail.dart';
import 'package:mealsApp/tab_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meals App",
      theme: ThemeData(primarySwatch: Colors.pink, accentColor: Colors.amber),
      // home: CategoryScreen(),
      routes: {
        '/': (ctx) => TabsScreen(),
        '/category-meal': (ctx) => CategoryMeal(),
        MealDetail.routeName: (ctx) => MealDetail()
      },
    );
  }
}
