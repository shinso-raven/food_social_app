import 'package:flutter/material.dart';
import 'package:social_food_app/food_themes.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  final String category = "Editor's choice";
  final String title = "Art of dough";
  final String description = "Learn to make the perfect breass";
  final String chef = "Ray Wenderlich";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Stack(
            children: [
              Text(
                category,
                style: FoodTheme.darkTextTheme.bodyLarge,
              ),
              Positioned(
                top: 20,
                child: Text(
                  title,
                  style: FoodTheme.darkTextTheme.titleLarge,
                ),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                child: Text(
                  description,
                  style: FoodTheme.darkTextTheme.bodyLarge,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                child: Text(
                  chef,
                  style: FoodTheme.darkTextTheme.bodyLarge,
                ),
              )
            ],
          ),
          constraints: BoxConstraints.expand(width: 350, height: 350),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/magazine_pics/mag1.png")))),
    );
  }
}
