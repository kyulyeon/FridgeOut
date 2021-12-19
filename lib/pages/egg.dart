import 'package:flutter/material.dart';
import 'package:fridge_out/customwidgets/search.dart';
import 'package:fridge_out/customwidgets/slideinbar.dart';

class Egg extends StatelessWidget {

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
        child: Container(
          height: MediaQuery.of(context).size.width * 0.95,
          width: MediaQuery.of(context).size.width * 0.90,
          child: Card(
            color: Colors.grey[50],
            child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Scrambled Egg".toUpperCase()),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.only(left: 20),
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
                  SizedBox(height: 30),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed "
                            "do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                            "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi "
                            "ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
                            "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                            "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia "
                            "deserunt mollit anim id est laborum."
                    ),
                  )
                ]
            ),
          ),
        ),
      )
    );
  }
}
