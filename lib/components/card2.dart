import 'package:flutter/material.dart';
import 'package:social_food_app/components/author_card.dart';
import 'package:social_food_app/food_themes.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage("assets/magazine_pics/mag2.png"),
                fit: BoxFit.cover)),
        child: Column(children: [
          AuthorCard(
            authorName: 'Mike Metz',
            title: "Smothies",
            imageProvider: AssetImage("assets/profile_pics/person_katz.jpeg"),
          ),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                bottom: 16,
                right: 16,
                child: Text(
                  "Recipe",
                  style: FoodTheme.lightTextTheme.displayLarge,
                ),
              ),
              Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Smoothies",
                      style: FoodTheme.lightTextTheme.displayLarge,
                    ),
                  ))
            ],
          ))
        ]),
      ),
    );
  }
}
