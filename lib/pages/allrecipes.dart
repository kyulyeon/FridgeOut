import 'package:flutter/material.dart';
import 'package:fridge_out/customwidgets/search.dart';
import 'package:fridge_out/customwidgets/slideinbar.dart';

class AllRecipes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: slidingNav(),
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text('Fridge Out'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
              onPressed: (){
            showSearch(context: context, delegate: Search());
              },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(

                  )
                ],
              ),
            ],

            )
          )
        )
      );
  }
}
