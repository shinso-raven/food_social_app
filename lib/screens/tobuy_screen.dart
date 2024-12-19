import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_food_app/models/groceryManager.dart';
import 'package:social_food_app/screens/empty_grocery_screen.dart';

class TobuyScreen extends StatelessWidget {
  const TobuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return Card3();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: buildGroceryScreen(),
    );
  }

  Consumer<Grocerymanager> buildGroceryScreen() {
    return Consumer<Grocerymanager>(
      builder: (context, manager, child) {
        if (manager.groceryItem.isNotEmpty) {
          return Container();
        }

        return EmptyGroceryScreen();
      },
    );
  }
}
