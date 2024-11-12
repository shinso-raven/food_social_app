import 'package:flutter/material.dart';

import 'components/Theme_button.dart';

class Home extends StatefulWidget {
  Home({super.key, required this.appTitle, required this.ChangeThemeMode});

  final appTitle;
  final Function ChangeThemeMode;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.appTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          //Button
          ThemeButton(changeTheme: widget.ChangeThemeMode)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "EXPLORE"),
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard), label: "Recipes"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: "to Buy")
      ]),
    );
  }
}
