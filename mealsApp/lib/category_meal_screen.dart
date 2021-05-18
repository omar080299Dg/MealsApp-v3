import 'package:flutter/material.dart';

class CategoryMeal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catID = routesArgs['id'];
    final title = routesArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      body: Center(
        child: Text("All you need"),
      ),
    );
  }
}
