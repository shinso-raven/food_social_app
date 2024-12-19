import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_food_app/models/tab_mananger.dart';
import 'package:social_food_app/screens/explore_screen.dart';
import 'package:social_food_app/screens/recipes_screen.dart';
import 'package:social_food_app/screens/tobuy_screen.dart';

import 'components/Theme_button.dart';

class Home extends StatefulWidget {
  Home({super.key, required this.appTitle, required this.ChangeThemeMode});

  final appTitle;
  final Function ChangeThemeMode;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> screens = [ExploreScreen(), RecipesScreen(), TobuyScreen()];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabMananger>(
        builder: (context, tabManager, child) => Scaffold(
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
              bottomNavigationBar: BottomNavigationBar(
                  selectedItemColor: Colors.green,
                  unselectedItemColor: Colors.grey,
                  onTap: (value) {
                    tabManager.goToTab(value);
                  },
                  currentIndex: tabManager.selectedTab,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.explore), label: "EXPLORE"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.card_giftcard), label: "Recipes"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart), label: "to Buy")
                  ]),
              body: screens[tabManager.selectedTab],
            ));
  }
}
