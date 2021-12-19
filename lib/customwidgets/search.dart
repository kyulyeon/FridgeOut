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
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.amber,
          child: Center(
            child: Text(query)
          )
        ),
      ),
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