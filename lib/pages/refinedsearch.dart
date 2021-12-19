import 'package:flutter/material.dart';
import 'package:fridge_out/customwidgets/search.dart';
import 'package:fridge_out/customwidgets/slideinbar.dart';

import 'egg.dart';

class RecipePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: slidingNav(),
      appBar: AppBar(
        backgroundColor: Colors.amber[300],
        title: Text('Fridge Out'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: Search());
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text('scrambled egg'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                letterSpacing: 5.0,
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            )
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 200),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.timer_rounded,
                              size: 20,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            Text(
                                "15 min",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6),
                                )
                            )
                          ],
                        ),
                      ),
                      Ink.image(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrx5CwY9p6Fp0UKibenu-bohq6U138ocWgWA&usqp=CAU'
                          ),
                          height: 240,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.5), BlendMode.dstATop),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) => Egg()));
                              }
                          )
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Card(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text('egg omelette'.toUpperCase(),
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                letterSpacing: 5.0,
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            )
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 20, top: 200),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.timer_rounded,
                              size: 20,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            Text(
                                "25 min",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.6),
                                )
                            )
                          ],
                        ),
                      ),
                      Ink.image(
                          image: NetworkImage(
                              'data:image/jpeg;base64,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'                          ),
                          height: 240,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.white.withOpacity(0.5), BlendMode.dstATop),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) => Egg()));
                              }
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
