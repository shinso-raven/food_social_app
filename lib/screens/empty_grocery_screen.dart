import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_food_app/models/tab_mananger.dart';

class EmptyGroceryScreen extends StatelessWidget {
  const EmptyGroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset('assets/grocery_pics/empty_list.png'))),
        Text(
          "No Groceries",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        MaterialButton(
          onPressed: () {
            Provider.of<TabMananger>(context, listen: false).goToRecipes();
          },
          color: Colors.green,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text("Browse Recipes"),
        )
      ],
    );
  }
}
