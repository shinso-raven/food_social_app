import 'package:flutter/material.dart';
import 'package:social_food_app/food_themes.dart';

import '../models/explore_recipe.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key, required this.recipe});

  final ExploreRecipe recipe;

  List<Widget> createTagChips() {
    final chips = <Widget>[];

    recipe.tags.take(6).forEach((value) {
      final chip = Chip(
        label: Text(value, style: FoodTheme.darkTextTheme.bodyLarge),
        backgroundColor: Colors.black.withOpacity(0.7),
        side: BorderSide(color: Colors.transparent),
      );

      chips.add(chip);
    });

    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/magazine_pics/card_carrot.png'),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Save Post', style: FoodTheme.darkTextTheme.bodyLarge),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                runSpacing: 12,
                children: createTagChips(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
