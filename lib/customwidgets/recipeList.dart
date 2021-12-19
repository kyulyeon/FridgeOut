import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeList extends StatefulWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  _RecipeListState createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
        decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
        ),
        child: ListView(
        )
    );
  }
}
