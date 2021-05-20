import 'package:flutter/material.dart';
import 'package:mealsApp/category_screen.dart';
import 'package:mealsApp/favorites_screen.dart';
import 'package:mealsApp/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Meals "),
            bottom: TabBar(tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: "Category",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Favorites",
              )
            ]),
          ),
          drawer: Drawer(
            child: MainDrawer(),
          ),
          body: TabBarView(
              children: <Widget>[CategoryScreen(), FavoritesScreen()]),
        ));
  }
}
