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
            color: Colors.amber.shade300.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
        ),
        child: GridView.count(
          primary: false,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage('assets/pizza.jpg')
                ),
              ),
              child: Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Pizza",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade300.withOpacity(0.8),
                    )
                  ),
                )
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage('assets/pizza.jpg')
                  ),
              ),
              child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                        "Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade300.withOpacity(0.8),
                        )
                    ),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage('assets/pizza.jpg')
                  )
              ),
              child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                        "Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade300.withOpacity(0.8),
                        )
                    ),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage('assets/pizza.jpg')
                  )
              ),
              child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                        "Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade300.withOpacity(0.8),
                        )
                    ),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage('assets/pizza.jpg')
                  )
              ),
              child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                        "Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade300.withOpacity(0.8),
                        )
                    ),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage('assets/pizza.jpg')
                  )
              ),
              child: Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                        "Pizza",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber.shade300.withOpacity(0.8),
                        )
                    ),
                  )
              ),
            ),
          ],
        )
    );
  }
}
