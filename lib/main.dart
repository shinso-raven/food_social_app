import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_food_app/food_themes.dart';
import 'package:social_food_app/home.dart';
import 'package:social_food_app/models/groceryManager.dart';
import 'package:social_food_app/models/tab_mananger.dart';

void main() {
  runApp(FoodSocialApp());
}

class FoodSocialApp extends StatefulWidget {
  FoodSocialApp({super.key});

  @override
  State<FoodSocialApp> createState() => FoodSocialAppState();
}

class FoodSocialAppState extends State<FoodSocialApp> {
  ThemeData theme = FoodTheme.light();

  void ChangeThemeMode(bool isLightMode) {
    setState(() {
      if (isLightMode) {
        theme = FoodTheme.dark();
      } else {
        theme = FoodTheme.light();
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Titulo constante para la app
    const appTitle = "Food Social App";
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: theme,
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => Grocerymanager(),
            ),
            ChangeNotifierProvider(
              create: (context) => TabMananger(),
            )
          ],
          child: Home(
            appTitle: appTitle,
            ChangeThemeMode: ChangeThemeMode,
          ),
        ));
  }
}
