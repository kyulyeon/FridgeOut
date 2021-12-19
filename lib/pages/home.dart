import 'package:flutter/material.dart';
import 'package:fridge_out/customwidgets/recipeList.dart';
import 'package:fridge_out/customwidgets/recipeoftheday.dart';
import 'package:fridge_out/customwidgets/recipeselection.dart';
import 'package:fridge_out/customwidgets/slideinbar.dart';

class homePage extends StatefulWidget {

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: slidingNav(),
        appBar: AppBar(
          backgroundColor: Colors.amber[300],
          title: Text('Fridge Out'),

        ),
          body: Center(
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: LandingRecipe(),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: RecipeSelection(),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: RecipeList(),
                      ),
                    ],
                  )
              )
          )
      );
  }
}
