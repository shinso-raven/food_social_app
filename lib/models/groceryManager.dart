import 'package:flutter/material.dart';
import 'package:social_food_app/models/grocery_item.dart';

class Grocerymanager extends ChangeNotifier {
  final _groceryItems = <GroceryItem>[];

  List<GroceryItem> get groceryItem => List.unmodifiable(_groceryItems);

  void updateItem(GroceryItem item, int index) {
    _groceryItems[index] = item;
    notifyListeners();
  }

  void deleteItem(GroceryItem item) {
    _groceryItems.remove(item);
    notifyListeners();
  }

  void addItem(GroceryItem item) {
    _groceryItems.add(item);
    notifyListeners();
  }

  void completeItem(int index, bool change) {
    final item = _groceryItems[index];
    _groceryItems[index] = item.copyWith(isCompleted: change);
  }
}
