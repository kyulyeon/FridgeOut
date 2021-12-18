import 'package:flutter/material.dart';
import 'package:fridge_out/pages/home.dart';

void main() => runApp(fridgeOut());

class fridgeOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fridge Out',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: homePage(),
    );
  }
}

