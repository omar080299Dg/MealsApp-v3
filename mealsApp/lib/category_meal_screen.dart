import 'package:flutter/material.dart';
import 'package:mealsApp/MealItem.dart';
import 'package:mealsApp/dummy_data.dart';

class CategoryMeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catID = routesArgs['id'];
    final title = routesArgs['title'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catID);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItemOnly(
            id: categoryMeal[index].id,
            title: categoryMeal[index].title,
            imageUrl: categoryMeal[index].imageUrl,
            duration: categoryMeal[index].duration,
            complexity: categoryMeal[index].complexity,
            affordability: categoryMeal[index].affordability,
          );
        },
        itemCount: categoryMeal.length,
      ),
    );
  }
}
