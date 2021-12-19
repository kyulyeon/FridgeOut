import 'package:flutter/material.dart';
import 'package:fridge_out/pages/allrecipes.dart';
import 'package:fridge_out/pages/home.dart';
import 'package:fridge_out/pages/searchingredient.dart';

class slidingNav extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber[600],
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Fridge Out',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 50),
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text(
                  'Home',
              style: TextStyle(color: Colors.white, fontSize: 25)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homePage()));
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.fastfood_outlined),
            title: Text(
                'All Recipes',
                style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AllRecipes()));
            },
          ),
          ListTile(
            leading: Icon(Icons.menu_book),
            title: Text(
              'Search By Ingredients',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchByIngredients()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Setting',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      )
    );
  }
}


