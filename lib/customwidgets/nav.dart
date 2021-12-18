import 'package:flutter/material.dart';
import 'package:fridge_out/customwidgets/slideinbar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: slidingNav(),
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text('Fridge Out'),
        actions: [
          Icon(Icons.search),
        ],
      )
    );
  }
}
