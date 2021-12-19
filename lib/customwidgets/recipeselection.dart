import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeSelection extends StatefulWidget {
  const RecipeSelection({Key? key}) : super(key: key);

  @override
  _RecipeSelectionState createState() => _RecipeSelectionState();
}

class _RecipeSelectionState extends State<RecipeSelection> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage('assets/banner.jpg'),
                      fit:BoxFit.fill,
                  ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    offset: Offset(8, 10),
                    color: Colors.amber.shade200.withOpacity(0.3),
                  ),
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-1, -5),
                    color: Colors.amber.shade200.withOpacity(0.3),
                  )
                ]
              ),
          ),
            Container(
              width: double.maxFinite,
              height: 50,
              margin: const EdgeInsets.only(left: 10, top: 5, right: 20),
              child: Column(
                children: [
                  Text(
                    "Healthy Foods",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade300.withOpacity(0.8),
                    ),
                  )
                ],
              )
            )
          ],
        ),
    );
  }
}
