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
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.amber.shade300,
                    Colors.amber.shade100,
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 20,
                    color: Colors.amber.shade100.withOpacity(0.3),
                  )
                ]
            ),
          )
        ],
      )
    );
  }
}
