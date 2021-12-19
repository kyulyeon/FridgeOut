import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fridge_out/customwidgets/recipeselection.dart';

class LandingRecipe extends StatefulWidget {
  const LandingRecipe({Key? key}) : super(key: key);

  @override
  _LandingRecipeState createState() => _LandingRecipeState();
}

class _LandingRecipeState extends State<LandingRecipe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
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
          topRight: Radius.circular(80),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 10),
            blurRadius: 20,
            color: Colors.amber.shade100.withOpacity(0.3),
          )
        ]
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recipe of the Day",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Deliciousness Recipe",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 70,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                        Icons.timer_rounded,
                        size: 25,
                        color: Colors.white),
                    SizedBox(width: 10,),
                    Text(
                      "60 min",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber.shade400,
                        blurRadius: 10,
                        offset: Offset(4, 7),
                      )
                    ]
                  ),
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
