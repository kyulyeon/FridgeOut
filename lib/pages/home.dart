import 'package:flutter/material.dart';
import 'package:fridge_out/customwidgets/recipeoftheday.dart';
import 'package:fridge_out/customwidgets/nav.dart';
import 'package:fridge_out/customwidgets/slideinbar.dart';

class homePage extends StatefulWidget {

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Container(
              child: NavBar(),
            ),
          ]
        )
      ),
    );
  }
}

