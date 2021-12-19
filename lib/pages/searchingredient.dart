import 'package:flutter/material.dart';
import 'package:fridge_out/pages/IngredientModel.dart';

class SearchByIngredients extends StatefulWidget {
  @override
  _SearchByIngredients createState() => _SearchByIngredients();
}

class _SearchByIngredients extends State<SearchByIngredients> {
  List<IngredientModel> contacts = [
    IngredientModel("Beef", false),
    IngredientModel("Pork", false),
    IngredientModel("Ham", false),
    IngredientModel("Turkey", false),
    IngredientModel("Chicken", false),
    IngredientModel("Lamb Meat", false),
    IngredientModel("Garlic", false),
    IngredientModel("Onion", false),
    IngredientModel("Mushroom", false),
    IngredientModel("Tomato", false),
    IngredientModel("Egg", false),
    IngredientModel("Spinach", false),
    IngredientModel("Lettuce", false),
    IngredientModel("Milk", false),
    IngredientModel("Cheese", false),
    IngredientModel("Green Onions", false),
    IngredientModel("Cucumber", false),
    IngredientModel("Zucchini", false),
    IngredientModel("Shrimp", false),
    IngredientModel("Salmon", false),
    IngredientModel("Squids", false),
    IngredientModel("Mussels", false)
  ];

  List<IngredientModel> selectedContacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingredients"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: contacts.length,
                    itemBuilder: (BuildContext context, int index) {
                      // return item
                      return ContactItem(
                        contacts[index].name,
                        contacts[index].isSelected,
                        index,
                      );
                    }),
              ),
              selectedContacts.length > 0 ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.amber,
                    child: Text(
                      "Search (${selectedContacts.length})",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      // print("Search: ${selectedContacts.length}");
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => RecipePage()));
                    },
                  ),
                ),
              ): Container(),
            ],
          ),
        ),
      ),
    );
  }

  Widget ContactItem(
      String name, bool isSelected, int index) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: isSelected
          ? Icon(
        Icons.check_circle,
        color: Colors.amber,
      )
          : Icon(
        Icons.check_circle_outline,
        color: Colors.grey,
      ),
      onTap: () {
        setState(() {
          contacts[index].isSelected = !contacts[index].isSelected;
          if (contacts[index].isSelected == true) {
            selectedContacts.add(IngredientModel(name, true));
          } else if (contacts[index].isSelected == false) {
            selectedContacts
                .removeWhere((element) => element.name == contacts[index].name);
          }
        });
      },
    );
  }
}