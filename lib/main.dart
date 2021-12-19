import 'package:flutter/material.dart';
import 'package:fridge_out/pages/home.dart';
import 'customwidgets/slideinbar.dart';

void main() => runApp(fridgeOut());

class fridgeOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fridge Out',
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),

      home:  homePage(),

      );
  }
}

