import 'package:flutter/material.dart';

class Search extends SearchDelegate<String> {
  final recipes = [
    "scrambled eggs",
    "fried chicken",
    "steak",
    "roast chicken",
    "steam egg",
    "turkey dinner",
    "roast beef",
    "instant noodles",
    "seafood pancake",
    "bacon"
  ];

  final recentSearch = [
    "scrambled eggs",
    "fried chicken",
    "steak",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(onPressed: (){
        query = "";
      },
          icon: Icon(Icons.clear))
    ];
     }

  @override
  Widget? buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.width * 0.95,
        width: MediaQuery.of(context).size.width * 0.90,
        child: Card(
          color: Colors.grey[50],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 20),
                child:
                Row(
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
      )
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? recentSearch
        : recipes.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.fastfood_outlined),
        title: RichText(text: TextSpan(

          text: suggestionList[index].substring(0, query.length),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,

        ),
            children: [TextSpan(
              text: suggestionList[index].substring(query.length),
              style: TextStyle(
                color: Colors.grey
              )
        )]
        ))
      ),
      itemCount: suggestionList.length,
    );
  }

}